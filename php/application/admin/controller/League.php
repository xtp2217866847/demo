<?php
namespace app\admin\controller;
class League extends  Base
{
    public function index()
    {
        $list=db('league')->select();
        $this->assign(compact('list'));
        return $this->fetch();
    }

    public function detail()
    {
        $data['id'] = input('id');
        $list=db('league')->where($data)->select();
        $this->assign('list',$list[0]);
        return $this->fetch();
    }
}
