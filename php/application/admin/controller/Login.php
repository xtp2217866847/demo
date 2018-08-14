<?php
namespace app\admin\controller;
use think\Controller;
use app\admin\model\Login as log;
class Login extends  Controller
{
    public function Login()
    {
        if (request()->post()){
            $log = new Log();
            $data = input('post.');
            $num = $log->login($data);
            if ($num==4){
                //$this->success('登陆成功！','Index/index');
                return Json(array('msg'=>'登陆成功！','status' => '1'));
            }elseif ($num==1){
                //$this->error('验证码不正确！');
                return Json(array('msg'=>'验证码不正确！','status' => '2'));
            }else{
                //$this->error('用户不存在或者密码错误！');
                return Json(array('msg'=>'用户不存在或者密码错误！','status' => '0'));
            }
        }
        return $this->fetch();
    }

    /**
     * @return bool
     */
    public function loginout()
    {
        session(null);
        //$this->success('注销成功！','Login/login');
        return Json(array('msg'=>'注销成功！','status' => '1'));
    }
}
