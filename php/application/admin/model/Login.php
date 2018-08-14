<?php

namespace app\admin\model;
use think\Model;

class Login extends Model
{
    public function login($data){
        $captcha = new \think\captcha\Captcha();
        if(!$captcha->check($data['code'])){
            //验证码错误
            return 1;
        }
        $name['username'] = $data['username'];
        $user = db('login')->where($name)->find();
        if ($user){
            if ($data['password']==$user['password']){
                session('username',$user['username']);
                session('uid',$user['id']);
                //密码正确
                return 4;
            }else{
                //密码错误
                return 3;
            }
        }else{
            //用户不存在
            return 2;
        }
    }
}
