<?php
namespace app\admin\controller;
use app\admin\model\Login as log;
class Admin extends  Base
{

    public function index()
    {
        $list = db('login')->select();
        $this->assign('list',$list);
        return $this->fetch();
    }

    public function add()
    {
        if (request()->post()){
            $register = input('post.');
            $name['username'] = input('post.username');
            if (db('login')->where($name)->select()){
                return Json(array('msg'=>'账号已存在！','status' => '0'));
            }else{
                if (db('login')->insert($register)){
                    return Json(array('msg'=>'保存成功！','status' => '1'));
                }else{
                    return Json(array('msg'=>'保存失败！','status' => '0'));
                }
            }
        }
        return $this->fetch();
    }

    public function del()
    {
        $id = input('post.');
        if(db('login')->where($id)->delete()){
            return Json(array('msg'=>'删除成功！','status' => '1'));
        }else{
            return Json(array('msg'=>'删除失败！','status' => '0'));
        }
    }

    public function edit()
    {
        if (request()->post()){
            $info = input('post.');
            $validate=validate('Login');
            if($validate->check($info)){
                if (log::update($info)){
                    return Json(array('msg'=>'修改成功！','status' => '1'));
                }else{
                    return Json(array('msg'=>'请更改数据！','status' => '0'));
                }
            }else{
                return Json(array('msg'=>$validate->getError(),'status' => '0'));
            }
        }
        $id['id'] = input('id');
        $user = db('login')->where($id)->find();
        $this->assign('user',$user);
        return $this->fetch();
    }
}