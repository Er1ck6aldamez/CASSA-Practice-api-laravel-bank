<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class TransferTypeController extends Controller
{
    //
    
    public function GetTransferTypeByClasification($clasification)
    {
        try {
            // $query = DB::statement('exec zusp_insert_areaUsuario ?,?,?', [$request->IdUsuario, $request->EsResponsable, $request->IdARea]);
            $lstTransferType = DB::select('EXEC usp_GetTransferTypeByClasification ?', [$clasification]);
            
            return response()->json([
                'State' => $lstTransferType != null,
                'Message' => 'Proceso satisfactorio',
                'Data' => $lstTransferType,
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

}
