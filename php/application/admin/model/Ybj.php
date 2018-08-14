<?php

namespace app\admin\model;

use think\Model;

class Ybj extends Model
{
    public function ytype(){
        return $this->belongsTo('Ytype','tid');
    }

}
