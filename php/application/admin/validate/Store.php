<?php
namespace app\admin\validate;
use think\Validate;
class Store extends Validate
{
    protected $rule = [
        'cid'  =>  'number',
        'name' =>  'require',
    ];

    protected $message  =   [
        'cid.number' => '门店地区必须选择！',
        'name.require' => '门店名称必须填写！',
    ];






}