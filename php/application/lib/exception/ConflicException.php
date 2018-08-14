<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2018/7/18 0018
 * Time: 下午 15:12
 */

namespace app\lib\exception;


class conflicException extends BaseException
{
    public $status = 0;
    public $msg = '数据有关联不可改懂' ;
}