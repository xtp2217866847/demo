<?php
namespace app\admin\validate;
class Ytype extends BaseValidate
{
    protected $rule = [
        'tname'  =>  'require|max:6|unique:ytype',
    ];

    protected $message  =   [
        'tname.require' => '类型名称必须填写！',
        'tname.max' => '类型名称长度不得大于6位！',
        'tname.unique' => '类型已存在！'
    ];

}