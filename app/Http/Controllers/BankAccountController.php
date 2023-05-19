<?php

namespace App\Http\Controllers;

use App\Models\BankAccount;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use DateTime;
use PHPUnit\Event\Code\Throwable;

class BankAccountController extends Controller
{
    public function GetAll()
    {
        //$lstAreas = BankAccount::all();
        $lstBankAccount = DB::select('EXEC usp_GetAllAccount');
        //$lstAreas = DB::select('EXEC sp_get_test ?',[3]);

        return $lstBankAccount;
        // return response()->json([
        //     'data'=> $lstPersonas,
        //     'result' => true
        // ]);

    }

    public function GetById($id)
    {
        //$query = DB::select('exec zusp_get_areas ?', [0]);
        $item = BankAccount::find($id);
        if($item == null) return "error papi";
        return $item;
    }

    
    public function Insert(Request $request)
    {
        try {
            
            //$query = DB::statement('exec zusp_insert_areaUsuario ?,?,?', [$request->IdUsuario, $request->EsResponsable, $request->IdARea]);
            $fechaToday = new DateTime();
            $result = BankAccount::insert([
                'UserNameAccount' => $request->UserNameAccount,
                'IdentifyAccount' => $request->IdentifyAccount,
                'FundAccount' => $request->FundAccount,
                'Usuario' => 'user_create_sysDev',  //$request->Usuario,
                'FechaCreacion' => $fechaToday->format('Y-m-d H:i:s'),
                'AccountType' => $request->AccountType
                //'IdUsuarioCreacion' => 'user_create_sysDev',
            ]);
            return response()->json([
                'State' => $result,
                'Message' => 'Proceso satisfactorio',
                'Data' => null,
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

    public function Update(Request $request, $id)
    {
        $fechaToday = new DateTime();
        $result = BankAccount::where('id', $id)->Update([
            'UserNameAccount' => $request->UserNameAccount,
            'IdentifyAccount' => $request->IdentifyAccount,
            'FundAccount' => $request->FundAccount,
            'FechaModificacion' => $fechaToday->format('Y-m-d H:i:s'),
            //'IdUsuarioModificacion' => 'user_update_sysDev',
        ]);
        
        $itemUpdated = BankAccount::find($id);

        return response()->json([
            'data'=> $itemUpdated,
            'result' => $result
        ]);
    }

    public function Delete($id)
    {
        $result = BankAccount::where('id', $id)->delete();
        return response()->json([
            'data'=> null,
            'result' => $result
        ]);
    }    
}
