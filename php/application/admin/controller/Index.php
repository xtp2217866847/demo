<?php
namespace app\admin\controller;
class Index extends  Base
{
    public function index()
    {

        $data = [
            'company' => '江苏斯可馨家具股份有限公司',
            'uname' => php_uname('s').php_uname('r'),
            'version' => PHP_VERSION,
            'ip' =>  $_SERVER['SERVER_ADDR'],
            'server' => $_SERVER['SERVER_NAME'],
            'system' => php_uname(),
            'time' => date("Y-m-d H:i:s"),
            'upload' => get_cfg_var ("upload_max_filesize")?get_cfg_var ("upload_max_filesize"):"不允许",
            'maxtime' => get_cfg_var("max_execution_time")."秒 ",
        ];
        $this->assign('data',$data);
        return $this->fetch();
    }

    public function welcome()
    {
        return $this->fetch();
    }

}
