<?php
namespace app\admin\controller;
use app\admin\model\Store as ModelStore;
class Store extends  Base
{
    public function index()
    {
        $list=ModelStore::paginate(6);
        $this->assign(compact('list'));
        return view();
    }

    public function addstore()
    {
        if (request()->isPost()){
            $data = input('post.');
            $logo = request()->file("logo");
            $validate = validate('Store');
            if($validate->check(input('post.'))){
                if($logo){
                    $info = $logo->validate(['size'=>52428800,'ext'=>'jpg,png,jpeg'])->move(ROOT_PATH . 'public' . DS . 'Uploads'. DS . 'store');
                    if($info){
                        $save = $info->getSaveName();
                        $data['logo'] = '/Uploads/store/'.$save;
                        db('store')->insert($data);
                        return Json(array('msg'=>'保存门店成功！','status' => '1'));
                    }else{
                        //return $this->error('logo上传失败！');
                        return Json(array('msg'=>'logo上传失败！','status' => '0'));
                    }
                }else{
                    //return $this->error('logo不存在！');
                    return Json(array('msg'=>'logo不存在！','status' => '0'));
                }
                //return $this->success('保存门店成功！','index');
            }else{
                $this->error($validate->getError());
            }
        }
        $city = db('city')->where('level','1')->select();
        $this->assign(compact('city'));
        return $this->fetch();
    }

    public function findcity()
    {
        if (request()->isAjax()){
            $pid['pid'] = input('param.pid');
            $city = db('city')->where($pid)->select();
            if ($city){
                return json_encode($city);
            }
        }
    }

    public function delstore()
    {
        $data['id'] = input('id');
        $logo = db('store')->where($data)->field('logo')->select();
        $logourl = '.'.$logo[0]['logo'];
        if(db('store')->where($data)->delete()){
            unlink($logourl);
            //return $this->success('删除类型成功！','index');
            return Json(array('msg'=>'删除门店成功！','status' => '1'));
        }else{
            //return $this->error('删除失败！');
            return Json(array('msg'=>'删除门店失败！','status' => '0'));
        }
    }

    public function dellotstore()
    {
        $datas = input('data/a');
        foreach ($datas as $key => $value) {
            $data['id'] = $value;
            $logo = db('store')->where($data)->field('logo')->select();
            $logourl = '.'.$logo[0]['logo'];
            if(db('store')->where($data)->delete()){
                unlink($logourl);
            }else{
                //return $this->error('删除失败！');
                return Json(array('msg'=>'删除门店失败！','status' => '0'));
            }
        }
        return Json(array('msg'=>'批量删除门店成功！','status' => '1'));
    }

    public function editstore()
    {
        if (request()->isPost()){
            $data = input('post.');
            $logo = request()->file("logo");
            $validate = validate('Store');
            if($validate->check(input('post.'))){
                if($logo){
                    $info = $logo->validate(['size'=>52428800,'ext'=>'jpg,png,jpeg'])->move(ROOT_PATH . 'public' . DS . 'Uploads'. DS . 'store');
                    if($info){
                        $save = $info->getSaveName();
                        $data['logo'] =  '/Uploads/store/'.$save;
                        $del['id'] = $data['id'];
                        $logodel = db('store')->where($del)->field('logo')->select();
                        $picurl = '.'.$logodel[0]['logo'];
                        unlink($picurl);
                    }else{
                        //return $this->error('logo上传失败！');
                        return Json(array('msg'=>'logo上传失败！','status' => '0'));
                    }
                }
                if (ModelStore::update($data)){
                    //return $this->success('保存门店成功！','index');
                    return Json(array('msg'=>'修改门店成功！','status' => '1'));
                }else{
                    //return $this->error('保存门店失败！');
                    return Json(array('msg'=>'修改门店失败！','status' => '0'));
                }
            }else{
                //$this->error($validate->getError());
                return Json(array('msg'=>$validate->getError(),'status' => '0'));
            }
        }
        //二级联动显示地区名字，并被选中
        //省份信息
        $city = db('city')->where('level','1')->select();
        $this->assign(compact('city'));

        $data['id'] = input('id');
        //门店信息
        $store = db('store')->find($data);
        $cityid['id'] = $store['cid'];

        //市区信息
        $citydata = db('city')->find($cityid);
        $pid['id'] = $citydata['pid'];
        $citypid['pid'] = $citydata['pid'];
        $citynames = db('city')->where($citypid)->field('id,name')->select();
        $this->assign(compact('citynames'));
        $pname = db('city')->field('name')->find($pid);
        $citydata['pname'] = $pname['name'];
        $this->assign(compact('citydata'));
        $this->assign(compact('store'));
        return $this->fetch();
    }
}
