<?php
namespace app\admin\controller;
use think\Controller;
class Base extends  Controller
{
    public function _initialize(){
        if(!session('username')){
            $this->redirect('Login/login',302);
        }
    }
}
