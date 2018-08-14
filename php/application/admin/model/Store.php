<?php

namespace app\admin\model;

use think\Model;

class Store extends Model
{
    public function city(){
        return $this->belongsTo('City','cid','id');
    }
}
