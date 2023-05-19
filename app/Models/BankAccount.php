<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class BankAccount extends Model
{
    use HasFactory;
    protected $table = "BankAccount";
	protected $fillable = [
        'Id',
        'UserNameAccount',
        'IdentifyAccount',
        'FundAccount',
        'Borrado',
        'Usuario',
        'FechaCreacion',
        'FechaModificacion',
        'FechaBorrado',
        'AccountType'
    ];  //columnas a ser modificadas
	public $timestamps = false;	//evita creacr fecha y hora por defecto
}