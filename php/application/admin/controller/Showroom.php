<?php
namespace app\admin\controller;
use app\admin\model\Ybj;
use app\admin\model\Ytype;
use app\lib\exception\BaseException;
use app\lib\exception\ConflicException;

class Showroom extends  Base
{

    public function typelist()
    {
        $list = db('ytype')->order('sort asc')->select();
        $this->assign('list',$list);
        return $this->fetch();
    }

    public function sort(){
        if (request()->isPost()){
            $data = input('post.');
            if($data){
                foreach ($data as $id=>$sort){
                    db('ytype')->where(array('id'=>$id))->setField('sort',$sort);
                }
                return Json(array('msg'=>'更新成功！','status' => '1'));
            }else{
                return Json(array('msg'=>'无法更新,没有更新值！','status' => '0'));
            }
        }
    }

    public function addtype()
    {
        if(request()->isPost()){
            $data=input('post.');
            validate('Ytype')->goCheck();
            if(db('ytype')->insert($data)){
                return Json(array('msg'=>'空间设置成功！','status' => '1'));
            }else{
                throw new BaseException(['msg'=>'空间设置失败！']);
            }
        }
        return $this->fetch();
    }

    public function edittype()
    {
        if(request()->post()){
            $data=input('post.');
            validate('Ytype')->goCheck();
            if(Ytype::update($data) !== flase){
                return Json(array('msg'=>'空间设置成功！','status' => '1'));
            }else{
                throw new BaseException(['msg'=>'空间设置失败！']);
            }
        }
        $data['id'] = input('id');
        $type = db('ytype')->where($data)->find();
        $this->assign('type',$type);
        return $this->fetch();
    }

    public function deltype()
    {
        if (request()->post()){
            $data['id'] = input('id');
            $ybj['tid'] = input('id');
            if (db('ybj')->where($ybj)->select()){
                throw new ConflicException(['msg'=>'请先删除该空间下样板间！']);
            }else{
                if(db('ytype')->where($data)->delete()){
                    return Json(array('msg'=>'空间删除成功！','status' => '1'));
                }else{
                    throw new BaseException(['msg'=>'空间删除失败！']);
                }
            }
        }
    }

    public function showroomlist()
    {
        $list=Ybj::paginate(10);
        $this->assign(compact('list'));
        $type=db('ytype')->select();
        $this->assign(compact('type'));
        return view();
    }

    public function ybjlistselect()
    {
        $data['tid'] = input('id');
        $list=Ybj::where($data)->paginate(6);
        $this->assign(compact('list'));
        $type=db('ytype')->select();
        $this->assign(compact('type'));
        return view('showroomlist');
    }

    public function addybj()
    {
        if(request()->isAjax()){
            $tid = input('post.tid');
            $name = input('post.name');
            $crowd = input('post.crowd');
            $environment = input('post.environment');
            $area = input('post.area');
            $style = input('post.style');
            $logo = request()->file("logo");
            $files = request()->file("images");
            $validate = validate('Ybj');
            if($validate->check(input('post.'))){
                // 移动到框架应用根目录/public/Uploads/ybj 目录下
                if($logo){
                    $info = $logo->validate(['size'=>52428800,'ext'=>'jpg,png,jpeg'])->move(ROOT_PATH . 'public' . DS . 'Uploads'. DS . 'ybj');
                    if($info){
                        // 成功上传后 获取上传信息
                        // 输出 jpg
                        //var_dump( $info->getExtension());
                        // 输出 42a79759f284b767dfcb2a0197904287.jpg
                        //var_dump( $info->getFilename());
                        // 输出 20160820/42a79759f284b767dfcb2a0197904287.jpg
                        $save = $info->getSaveName();
                        $logourl =  '/Uploads/ybj/'.$save;
                        $data = [
                            'tid' => $tid,
                            'name' =>$name,
                            'crowd' => $crowd,
                            'environment' => $environment,
                            'area' => $area,
                            'style' => $style,
                            'logo' => $logourl,
                        ];
                        $ybjid = db('ybj')->insertGetId($data);
                        foreach($files as $file){
                            $infos = $file->validate(['size'=>52428800,'ext'=>'jpg,png,jpeg'])->move(ROOT_PATH . 'public' . DS . 'Uploads'. DS . 'pic');
                            if($infos){
                                $saves = $infos->getSaveName();
                                $fileurl =  '/Uploads/pic/'.$saves;
                                $pic = [
                                    'ybj_id' => $ybjid,
                                    'url' =>  $fileurl,
                                ];
                                db('ypic')->insert($pic);
                            }else{
                                // 上传失败获取错误信息
                                return Json(array('msg'=>'图片上传失败！','status' => '0'));
                            }
                        }
                    }else{
                        return Json(array('msg'=>'logo上传失败！','status' => '0'));
                    }
                }else{
                    return Json(array('msg'=>'logo必须上传！','status' => '0'));
                }
                return Json(array('msg'=>'保存样板间成功！','status' => '1'));
            }else{
                return Json(array('msg'=>$validate->getError() ,'status' => '0'));
            }
        }
        $type = db('ytype')->select();
        $this->assign('type',$type);
        return $this->fetch();
    }

    public function editybj()
    {
        if(request()->isPost()){
            $data = input('post.');
            $logo = request()->file('logo');
            $validate = validate('Ybj');
            if($validate->check(input('post.'))) {
                if ($logo) {
                    $info = $logo->move(ROOT_PATH . 'public' . DS . 'Uploads'. DS . 'ybj');
                    if ($info) {
                        //删除原来的图片
                        $del['id'] = $data['id'];
                        $logodel = db('ybj')->where($del)->field('logo')->select();
                        $picurl = '.' . $logodel[0]['logo'];
                        unlink($picurl);
                        $save = $info->getSaveName();
                        $logourl = '/Uploads/ybj/' . $save;
                        $data['logo'] = $logourl;
                    } else {
                        return Json(array('msg'=>'logo上传失败！','status' => '0'));
                    }
                }
                if (Ybj::update($data)) {
                    return Json(array('msg'=>'修改样板间成功！','status' => '1'));
                } else {
                    return Json(array('msg'=>'修改样板间失败！','status' => '0'));
                }
            }else{
                return Json(array('msg'=>$validate->getError(),'status' => '0'));
            }
        }
        $data['id'] = input('id');
        $ybj=Ybj::with('ytype')->where($data)->find();
        $this->assign(compact('ybj'));
        $type = db('ytype')->select();
        $this->assign(compact('type'));
        return $this->fetch();
    }

    public function delybj()
    {
        $data['id'] = input('id');
        $logo = db('ybj')->where($data)->field('logo')->select();
        $logourl = '.'.$logo[0]['logo'];
        $ybjid['ybj_id'] = input('id');
        $pic = db('ypic')->where($ybjid)->field('url')->select();
        if(db('ybj')->where($data)->delete()){
            unlink($logourl);
            if($pic){
                if(db('ypic')->where($ybjid)->delete()){
                    foreach ($pic as $picurl){
                        unlink('.'.$picurl['url']);
                    }
                }else{
                    //return $this->error('删除图片失败！');
                    return Json(array('msg'=>'删除样板间失败！','status' => '0'));
                }
            }
            //return $this->success('删除样板间成功！','showroomlist');
            return Json(array('msg'=>'删除样板间成功！','status' => '1'));
        }else{
            //return $this->error('删除样板间失败！');
            return Json(array('msg'=>'删除样板间失败！','status' => '0'));
        }
    }

    public function dellotybj()
    {
        $datas = input('data/a');
        foreach ($datas as $key => $value){
            $data['id'] = $value;
            $logo = db('ybj')->where($data)->field('logo')->select();
            $logourl = '.'.$logo[0]['logo'];
            $ybjid['ybj_id'] = $value;
            $pic = db('ypic')->where($ybjid)->field('url')->select();
            if(db('ybj')->where($data)->delete()){
                unlink($logourl);
                if($pic){
                    if(db('ypic')->where($ybjid)->delete()){
                        foreach ($pic as $picurl){
                            unlink('.'.$picurl['url']);
                        }
                    }else{
                        //return $this->error('删除图片失败！');
                        return Json(array('msg'=>'删除样板间失败！','status' => '0'));
                    }
                }
                //return $this->success('删除样板间成功！','showroomlist');
            }else{
                //return $this->error('删除样板间失败！');
                return Json(array('msg'=>'删除样板间失败！','status' => '0'));
            }
        }
        return Json(array('msg'=>'批量删除成功！','status' => '1'));
    }

    public function eidtpic()
    {
        $data['ybj_id'] = input('id');
        $pic = db('ypic')->where($data)->select();
        $this->assign(compact('data'));
        $this->assign(compact('pic'));
        return $this->fetch();
    }

    public function addpic()
    {
        $yid = input('post.ybjid');
        $files = request()->file('images');
        if ($files){
            foreach($files as $file){
                $infos = $file->validate(['size'=>52428800,'ext'=>'jpg,png,jpeg'])->move(ROOT_PATH . 'public' . DS . 'Uploads'. DS . 'pic');
                if($infos){
                    $saves = $infos->getSaveName();
                    $fileurl =  '/Uploads/pic/'.$saves;
                    $pic = [
                        'ybj_id' => $yid,
                        'url' =>  $fileurl,
                    ];
                    db('ypic')->insert($pic);
                }else{
                    // 上传失败获取错误信息
                    //return $this->error('图片上传失败');
                    return Json(array('msg'=>'图片上传失败！','status' => '0'));
                }
            }
            //return $this->success('添加图片成功！');
            return Json(array('msg'=>'添加图片成功！','status' => '1'));
        }else{
            //return $this->error('没有图片，上传失败！');
            return Json(array('msg'=>'请选择图片！','status' => '0'));
        }
    }

    public function delpic()
    {
        $data['id'] = input('id');
        $pic = db('ypic')->where($data)->field('url')->select();
        $picurl = '.'.$pic[0]['url'];
        if(db('ypic')->where($data)->delete()){
            unlink($picurl);
            //return $this->success('删除图片成功！');
            return Json(array('msg'=>'删除图片成功！','status' => '1'));
        }else{
            //return $this->error('删除图片失败！');
            return Json(array('msg'=>'删除图片失败！','status' => '0'));
        }
    }
}
