<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class BankTransfers extends Model
{
    use HasFactory;
    protected $table = "BankTransfers";
	protected $fillable = [
        'Id',
        'IdentifyAccountOrigin',
        'IdentifyAccountDestination',
        'Amount',
        'Motivo',
        'Borrado',
        'Usuario',
        'FechaCreacion',
        'FechaModificacion',
        'FechaBorrado',
        'TransferType',
    ];  //columnas a ser modificadas
	public $timestamps = false;	//evita creacr fecha y hora por defecto
}



/**
 

*/