<?php
namespace app\admin\validate;
use think\Validate;
class Login extends Validate
{
    protected $rule = [
        'username'  =>  'unique:login',
    ];

    protected $message  =   [
        'username.unique' => '管理员名称不得重复',
    ];
}