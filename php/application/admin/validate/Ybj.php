<?php
namespace app\admin\validate;
use think\Validate;
class Ybj extends Validate
{
    protected $rule = [
        'tid'  =>  'number',
        'name' =>  'require',
    ];

    protected $message  =   [
        'tid.number' => '类型名称必须选择！',
        'name.require' => '样板间名称必须填写！',
    ];






}