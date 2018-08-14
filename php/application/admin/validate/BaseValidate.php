<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2018/7/18 0018
 * Time: 下午 14:22
 */

namespace app\admin\validate;
use app\lib\exception\ParamsException;
use think\Request;
use think\Validate;


class BaseValidate extends  Validate
{
    public function goCheck(){
        $request = Request::instance();
        $params = $request->param();
        $result = $this->check($params);
        if(!$result){
            $e = new ParamsException([
                'msg'=> $this->error
            ]);
            throw $e;
        }else{
            return true;
        }
    }
}