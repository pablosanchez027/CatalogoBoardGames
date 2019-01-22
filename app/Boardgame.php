<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Boardgame extends Model
{
    protected $table = "list_games";

    public $timestamps = false;
}
