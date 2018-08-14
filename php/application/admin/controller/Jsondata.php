<?php
namespace app\admin\controller;
use app\admin\model\Ybj;
use app\admin\model\Ytype;
class Jsondata extends  Base
{
    public function ybj()
    {
        $typelist=db('ytype')->order('sort')->select();
        var_dump(json_encode($typelist));
        foreach ($typelist as &$tlist){
            unset($tlist['sort']);
            $tid['tid'] =  $tlist['id'];
            $ybj = Ybj::all($tid);
            foreach ($ybj as &$y) {
                unset($y['tid']);
                $ybjid = $y['id'];
                $ybjpicid['ybj_id'] = $ybjid;
                $ybjpic = db('ypic')->field('id,url')->where($ybjpicid)->select();
                $logoid = '2018'.$ybjid;
                $logo = [
                    'id' => $logoid,
                    'url' => $y['logo'],
                ];
                array_unshift($ybjpic , $logo);
                $y['pic'] = $ybjpic;
                unset($y['logo']);
            }
            $tlist['ybj'] = $ybj;
        }
        $data['data'] = $typelist;
        file_put_contents('./json/ybj.json', json_encode($data));
        dump(json_encode($data));die;
    }

    public function ybjtype()
    {
        $typelist=db('ytype')->order('sort')->select();
        foreach ($typelist as &$tlist){
            unset($tlist['sort']);
            unset($tlist['tid']);
        }
        $data['data'] = $typelist;
        file_put_contents('./json/ybjtype.json', json_encode($data));
        dump(json_encode($data));die;
    }

    public function city()
    {
        $province = db('city')->field('id,name')->where('level','1')->select();
        var_dump(json_encode($province));
        foreach ($province as &$pro){
            $citypid['pid'] = $pro['id'];
            $city = db('city')->field('id,name')->where($citypid)->select();
            $pro['city'] = $city;
            var_dump(json_encode($pro));
        }
        var_dump(json_encode($province));
        $data['province'] =$province;
        file_put_contents('./json/city.json', json_encode($data));
        dump(json_encode($data));die;
    }

    public function store()
    {
        $province = db('city')->field('id')->where('level','1')->select();
        foreach ($province as &$pro){
            $citypid['pid'] = $pro['id'];
            $city = db('city')->field('id')->where($citypid)->select();
            foreach ($city as &$c){
                $cid['cid'] = $c['id'];
                $cittystore = db('store')->where($cid)->select();
                $c['store'] = $cittystore;
            }
            $pro['city'] = $city;
        }
        var_dump(json_encode($province));
        $data['data'] = $province;
        file_put_contents('./json/store.json', json_encode($data));
    }
}
