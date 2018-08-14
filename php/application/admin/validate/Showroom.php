<?php
namespace app\admin\validate;
class Showroom extends BaseValidate
{
    protected $rule = [
        'tname'  =>  'require|max:6',
    ];

    protected $message  =   [
        'tname.require' => '类型名称必须填写',
        'tname.max' => '类型名称长度不得大于6位',
    ];

    protected $scene = [
        'add'  =>  ['tname'=>'require'],
    ];




}