<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2018/7/18 0018
 * Time: 下午 15:07
 */

namespace app\lib\exception;
use think\Exception;

class BaseException extends Exception
{
    public $status = 0;
    public $msg = '系统内部出错';

    public function __construct($params=[])
    {
        if(!is_array($params)){
            return;
        }
        if(array_key_exists('status',$params)){
            $this->status = $params['status'];
        }
        if(array_key_exists('msg',$params)){
            $this->msg = $params['msg'];
        }
    }
}