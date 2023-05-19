<?php

namespace App\Http\Controllers;

use App\Models\BankAccount;
use App\Models\BankTransfers;
use DateTime;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Symfony\Component\Console\Logger\ConsoleLogger;

class BankTransfersController extends Controller
{
    public function GetLastTransferences()
    {
        try {
            
            $lstLastTransferences = DB::select('EXEC usp_LastTransferences');
            return response()->json([
                'State' => $lstLastTransferences != null,
                'Message' => 'Proceso satisfactorio',
                'Data' => $lstLastTransferences,
                'Error' => null,
            ]);
   
        } catch (\Exception $e) {
            return response()->json([
                'State' => false,
                'Message' => $e->getMessage(),
                'Data' => null,
                'Error' => $e,
            ]);
        }
    }

    public function Insert(Request $request)
    {
        try {
     
            DB::transaction(function() use ($request) {
                
                $fechaToday = new DateTime();
                
                //transferencia de terceros o retiros
                if($request->TransferType == 1 || $request->TransferType == 3){
                                    
                    $origen = BankAccount::find($request->IdentifyAccountOrigin);
                    if($origen == null)
                        abort(401, "La cuenta de ID: {$request->IdentifyAccountOrigin} no existe");

                    if($origen->FundAccount < $request->Amount)
                        abort(401, "La cuenta (Origen) ID: {$request->IdentifyAccountOrigin} no tiene fondos suficientes");

                    $resultOrigen = BankAccount::where('id', $request->IdentifyAccountOrigin)->Update([
                        'FundAccount' => ($origen->FundAccount - $request->Amount),
                        'FechaModificacion' => $fechaToday->format('Y-m-d H:i:s'),
                    ]);
                    
                    $transferenceCargo = BankTransfers::create([
                        'IdentifyAccountOrigin' => $request->IdentifyAccountDestination,
                        'IdentifyAccountDestination' => $request->IdentifyAccountOrigin,
                        'Amount' => $request->Amount,
                        'Motivo' => $request->Motivo,
                        'Usuario' => 'user_create_sysDev',  //$request->Usuario,
                        'FechaCreacion' => $fechaToday->format('Y-m-d H:i:s'),
                        'TransferType' => $request->TransferType,
                    ]);
                    $transferenceCargo->save();   
                }


                //transferencia de terceros o abonos
                if($request->TransferType == 1 || $request->TransferType == 2){
                    
                    $destino = BankAccount::find($request->IdentifyAccountDestination);
                    if($destino == null)
                        abort(401, "La cuenta de ID: {$request->IdentifyAccountDestination} no existe");

                    $resultDestino = BankAccount::where('id', $request->IdentifyAccountDestination)->Update([
                        'FundAccount' => ($destino->FundAccount + $request->Amount),
                        'FechaModificacion' => $fechaToday->format('Y-m-d H:i:s'),
                    ]);

                    $transferenceAbono = BankTransfers::create([
                        'IdentifyAccountOrigin' => $request->IdentifyAccountOrigin,
                        'IdentifyAccountDestination' => $request->IdentifyAccountDestination,
                        'Amount' => $request->Amount,
                        'Motivo' => $request->Motivo,
                        'Usuario' => 'user_create_sysDev',  //$request->Usuario,
                        'FechaCreacion' => $fechaToday->format('Y-m-d H:i:s'),
                        'TransferType' => $request->TransferType,
                    ]);
                    $transferenceAbono->save();
                }                
            });
   
        } catch (\Exception $e) {
            return response()->json([
                'State' => false,
                'Message' => $e->getMessage(),
                'Data' => null,
                'Error' => $e,
            ]);
        }
        return response()->json([
            'State' => true,
            'Message' => 'Proceso satisfactorio',
            'Data' => null,
            'Error' => null,
        ]);
    }
}
