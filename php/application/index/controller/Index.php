<?php
namespace app\index\controller;
use think\Controller;
use think\Db;
class Index extends  Controller
{
    public function index()
    {
       /* $type = Db::name('ytype')->select();
        // $data = ['name' => '厨房'];
        // Db::name('ytype')->insert($data);
        //var_dump($type);
        //$ybj = Db::name('ybj')->where('yid',1)->column('id,name,crowd,logo');
        //return json($ybj);
        $typejson = json_encode($type);
        file_put_contents('type.json',$typejson);
        return json($type);*/
        $controller = request()->controller();
        echo '控制器：'.$controller;
        //return $this->fetch();
    }

    public function API()
    {
        $type = Db::name('ytype')->select();
        // $data = ['name' => '厨房'];
        // Db::name('ytype')->insert($data);
        //var_dump($type);
        //$ybj = Db::name('ybj')->where('yid',1)->column('id,name,crowd,logo');
        //return json($ybj);
        $typejson = json_encode($type);
        file_put_contents('type.json',$typejson);
        return json($type);

        return $this->fetch();
    }
}
