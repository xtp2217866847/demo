<?php if (!defined('THINK_PATH')) exit(); /*a:3:{s:78:"E:\wamp64\www\qwdz\public/../application/admin\view\showroom\showroomlist.html";i:1531894409;s:60:"E:\wamp64\www\qwdz\application\admin\view\common\header.html";i:1529373481;s:58:"E:\wamp64\www\qwdz\application\admin\view\common\left.html";i:1531894263;}*/ ?>
<!DOCTYPE html>
<!--
BeyondAdmin - Responsive Admin Dashboard Template build with Twitter Bootstrap 3.2.0
Version: 1.0.0
Purchase: http://wrapbootstrap.com
-->

<html xmlns="http://www.w3.org/1999/xhtml">

<!-- Head -->
<head>
    <meta charset="utf-8" />
    <title>样板间列表</title>

    <meta name="description" content="blank page" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="shortcut icon" href="/admin/img/skx.png" type="image/x-icon">

    <!--Basic Styles-->
    <link href="/admin/css/bootstrap.min.css" rel="stylesheet" />
    <link id="bootstrap-rtl-link" href="" rel="stylesheet" />
    <link href="/admin/css/font-awesome.min.css" rel="stylesheet" />
    <link href="/admin/css/weather-icons.min.css" rel="stylesheet" />

    <!--Fonts-->
    <!--     <link href="http://fonts.useso.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,400,600,700,300"
              rel="stylesheet" type="text/css"> -->

    <!--Beyond styles-->
    <link id="beyond-link" href="/admin/css/beyond.min.css" rel="stylesheet" />
    <link href="/admin/css/demo.min.css" rel="stylesheet" />
    <link href="/admin/css/typicons.min.css" rel="stylesheet" />
    <link href="/admin/css/animate.min.css" rel="stylesheet" />
    <link id="skin-link" href="" rel="stylesheet" type="text/css" />

    <!--Skin Script: Place this script in head to load scripts for skins and rtl support-->
    <script src="/admin/js/skins.min.js"></script>
</head>
<!-- /Head -->
<!-- Body -->
<body>
<!-- Loading Container -->
<div class="loading-container">
    <div class="loading-progress">
        <div class="rotator">
            <div class="rotator">
                <div class="rotator colored">
                    <div class="rotator">
                        <div class="rotator colored">
                            <div class="rotator colored"></div>
                            <div class="rotator"></div>
                        </div>
                        <div class="rotator colored"></div>
                    </div>
                    <div class="rotator"></div>
                </div>
                <div class="rotator"></div>
            </div>
            <div class="rotator"></div>
        </div>
        <div class="rotator"></div>
    </div>
</div>
<!--  /Loading Container -->
<!-- Navbar -->
<div class="navbar">
    <div class="navbar-inner">
        <div class="navbar-container">
            <!-- Navbar Barnd -->
            <div class="navbar-header pull-left">
                <a href="#" class="navbar-brand">
                    <small >
                        <img style="margin-left: 65px; width: 50px" src="/admin/img/skx.png" alt=""/>
                    </small>
                </a>
            </div>
            <!-- /Navbar Barnd -->
            <!-- Sidebar Collapse -->
            <div class="sidebar-collapse" id="sidebar-collapse">
                <i class="collapse-icon fa fa-bars"></i>
            </div>
            <!-- /Sidebar Collapse -->
            <!-- Account Area and Settings --->
            <div class="navbar-header pull-right">
                <div class="navbar-account">
                    <ul class="account-area">
                        <li>
                            <a class="login-area dropdown-toggle" data-toggle="dropdown">
                                <div class="avatar" title="View your public profile">
                                    <img src="/admin/img/avatars/admin.jpg">
                                </div>
                                <section>
                                    <h2><span class="profile"><span><?php echo \think\Request::instance()->session('username'); ?></span></span></h2>
                                </section>
                            </a>
                            <!--Login Area Dropdown-->
                            <ul class="pull-right dropdown-menu dropdown-arrow dropdown-login-area">
                                <!--<li class="username"><a>David Stevenson</a></li>
                                <li class="email"><a>David.Stevenson@live.com</a></li>-->
                                <!--Avatar Area-->
                                <!-- <li>
                                     <div class="avatar-area">
                                         <img src="/admin/img/avatars/adam-jansen.jpg" class="avatar">
                                         <span class="caption">Change Photo</span>
                                     </div>
                                 </li>
                                 &lt;!&ndash;Avatar Area&ndash;&gt;
                                 <li class="edit">
                                     <a href="profile.html" class="pull-left">Profile</a>
                                     <a href="#" class="pull-right">Setting</a>
                                 </li>-->
                                <!--Theme Selector Area-->
                                <li class="theme-area">
                                    <ul class="colorpicker" id="skin-changer">
                                        <li><a class="colorpick-btn" href="#" style="background-color:#5DB2FF;" rel="/admin/css/skins/blue.min.css"></a></li>
                                        <li><a class="colorpick-btn" href="#" style="background-color:#2dc3e8;" rel="/admin/css/skins/azure.min.css"></a></li>
                                        <li><a class="colorpick-btn" href="#" style="background-color:#03B3B2;" rel="/admin/css/skins/teal.min.css"></a></li>
                                        <li><a class="colorpick-btn" href="#" style="background-color:#53a93f;" rel="/admin/css/skins/green.min.css"></a></li>
                                        <li><a class="colorpick-btn" href="#" style="background-color:#FF8F32;" rel="/admin/css/skins/orange.min.css"></a></li>
                                        <li><a class="colorpick-btn" href="#" style="background-color:#cc324b;" rel="/admin/css/skins/pink.min.css"></a></li>
                                        <li><a class="colorpick-btn" href="#" style="background-color:#AC193D;" rel="/admin/css/skins/darkred.min.css"></a></li>
                                        <li><a class="colorpick-btn" href="#" style="background-color:#8C0095;" rel="/admin/css/skins/purple.min.css"></a></li>
                                        <li><a class="colorpick-btn" href="#" style="background-color:#0072C6;" rel="/admin/css/skins/darkblue.min.css"></a></li>
                                        <li><a class="colorpick-btn" href="#" style="background-color:#585858;" rel="/admin/css/skins/gray.min.css"></a></li>
                                        <li><a class="colorpick-btn" href="#" style="background-color:#474544;" rel="/admin/css/skins/black.min.css"></a></li>
                                        <li><a class="colorpick-btn" href="#" style="background-color:#001940;" rel="/admin/css/skins/deepblue.min.css"></a></li>
                                    </ul>
                                </li>
                                <!--/Theme Selector Area-->
                                <li class="dropdown-footer">
                                    <button class="btn btn-danger btn-xs" onclick="loginout()" >
                                       注销
                                    </button>
                                </li>
                            </ul>
                            <!--/Login Area Dropdown-->
                        </li>
                        <!-- /Account Area
                        Note: notice that setting div must start right after account area list.
                        no space must be between these elements
                         Settings -->
                    </ul>
                    <!-- <div class="setting">
                         <a id="btn-setting" title="Setting" href="#">
                             <i class="icon glyphicon glyphicon-cog"></i>
                         </a>
                     </div>
                     <div class="setting-container">
                         <label>
                             <input type="checkbox" id="checkbox_fixednavbar">
                             <span class="text">Fixed Navbar</span>
                         </label>
                         <label>
                             <input type="checkbox" id="checkbox_fixedsidebar">
                             <span class="text">Fixed SideBar</span>
                         </label>
                         <label>
                             <input type="checkbox" id="checkbox_fixedbreadcrumbs">
                             <span class="text">Fixed BreadCrumbs</span>
                         </label>
                         <label>
                             <input type="checkbox" id="checkbox_fixedheader">
                             <span class="text">Fixed Header</span>
                         </label>
                     </div>-->
                    <!-- Settings -->
                </div>
            </div>
            <!-- /Account Area and Settings -->
        </div>
    </div>
</div>

<script>
    function loginout() {
        var url = "<?php echo url('login/loginout'); ?>";
        layer.confirm('确定退出？', {
            btn: ['是','否'] //按钮
        }, function(){
            $.ajax({
                type : "post",
                url  : url,
                data : {id:1},
                success : function(data){
                    if (data.status==1) {
                        layer.msg(data.msg, {icon: 1});
                        self.location = "<?php echo url('login/login'); ?>";
                    }
                }
            });
        }, function(){
            layer.msg('取消操作');
        });
    };
</script>
<!-- /Navbar -->
<!-- Main Container -->
<div class="main-container container-fluid">
    <!-- Page Container -->
    <div class="page-container">
        <!-- Page Sidebar -->
        <div class="page-sidebar" id="sidebar">
            <!-- /Page Sidebar Header -->
            <!-- Sidebar Menu -->
            <ul class="nav sidebar-menu">
                <!--Dashboard-->
                <li>
                    <a href="<?php echo url('admin/index/index'); ?>">
                        <i class="menu-icon glyphicon glyphicon-home"></i>
                        <span class="menu-text"> 主页 </span>
                    </a>
                </li>
                <li class="open">
                    <a href="#" class="menu-dropdown">
                        <i class="menu-icon fa fa-desktop"></i>
                        <span class="menu-text"> 样板间设置 </span>

                        <i class="menu-expand"></i>
                    </a>

                    <ul class="submenu">
                        <li>
                            <a href="<?php echo url('showroom/typelist'); ?>">
                                <span class="menu-text">空间管理</span>
                            </a>
                        </li>
                        <li>
                            <a href="<?php echo url('showroom/showroomlist'); ?>">
                                <span class="menu-text">样板间管理</span>
                            </a>
                        </li>
                    </ul>
                </li>
                <!--Tables-->
                <li >
                    <a href="<?php echo url('store/index'); ?>"><i class="menu-icon fa fa-align-right"></i></i><span class="menu-text"> 区域门店管理 </span></a>
                </li>

                <li >
                    <a href="<?php echo url('admin/index'); ?>"><i class="menu-icon fa fa-user"></i></i><span class="menu-text"> 管理员管理 </span></a>
                </li>
                <!--
                <li >
                    <a href="<?php echo url('league/index'); ?>"><i class="menu-icon fa fa-table"></i><span class="menu-text"> 加盟信息管理 </span></a>
                </li>
                -->
            </ul>
            <!-- /Sidebar Menu -->
        </div>
        <!-- /Page Sidebar -->

    </div>
    <!-- /Page Container -->

    <!-- Main Container -->

</div>
<!-- Page Content -->
<div class="page-content">
    <!-- Page Breadcrumb -->
    <div class="page-breadcrumbs">
        <ul class="breadcrumb">
            <li>
                <i class="fa fa-home"></i>
                <a href="<?php echo url('admin/index/index'); ?>">主页</a>
            </li>
            <!--<li>
                <a href="#">More Pages</a>
            </li>-->
            <li class="active">样板间设置</li>
            <li class="active">样板间管理</li>
        </ul>
    </div>
    <!-- /Page Breadcrumb -->
    <!-- Page Header -->
    <div class="page-header position-relative">
        <div class="header-title">
            <h1>
                样板间管理
            </h1>
        </div>
        <!--Header Buttons-->
        <div class="header-buttons">
            <a class="sidebar-toggler" href="#">
                <i class="fa fa-arrows-h"></i>
            </a>
            <a class="refresh" id="refresh-toggler" href="">
                <i class="glyphicon glyphicon-refresh"></i>
            </a>
            <a class="fullscreen" id="fullscreen-toggler" href="#">
                <i class="glyphicon glyphicon-fullscreen"></i>
            </a>
        </div>
        <!--Header Buttons End-->
    </div>
    <!-- /Page Header -->
    <!-- Page Body -->
    <div class="page-body">
        <!-- Your Content Goes Here -->
        <div class="col-xs-12 col-md-12">
            <div class="widget">
                <div class="widget-header ">
                    <span class="widget-caption">样板间编辑</span>
                    <div class="widget-buttons">
                        <a href="#" data-toggle="maximize">
                            <i class="fa fa-expand"></i>
                        </a>
                        <a href="#" data-toggle="collapse">
                            <i class="fa fa-minus"></i>
                        </a>
                        <a href="#" data-toggle="dispose">
                            <i class="fa fa-times"></i>
                        </a>
                    </div>
                </div>
                <div class="widget-body">
                    <div class="table-toolbar">
                        <div class="btn-group">
                            <!--<a class="btn btn-default dropdown-toggle" href="javascript:void(0);"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">选择空间</font></font></a>-->
                            <a class="btn  btn-group btn-azure dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                                 选择空间 <i class="fa fa-angle-down"></i>
                            </a>
                            <ul class="dropdown-menu dropdown-blue">
                                <?php if(is_array($type) || $type instanceof \think\Collection || $type instanceof \think\Paginator): $i = 0; $__LIST__ = $type;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>
                                <li>
                                    <a href="<?php echo url('showroom/ybjlistselect',array('id'=>$vo['id'])); ?>"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"><?php echo $vo['tname']; ?></font></font></a>
                                </li>
                                <?php endforeach; endif; else: echo "" ;endif; ?>
                                <li class="divider" style="margin-top: 20px"></li>
                                <li>
                                    <a href="<?php echo url('showroom/showroomlist'); ?>"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">所有信息</font></font></a>
                                </li>
                            </ul>
                        </div>
                        <a id="editabledatatable_new" href="<?php echo url('showroom/addybj'); ?>" class="btn btn-group btn-success"><i class="fa fa-plus"></i>添加样板间</a>
                    </div>
                    <table  class="table table-striped table-hover table-bordered dataTable no-footer" id="editabledatatable" aria-describedby="editabledatatable_info">
                        <thead>
                        <tr role="row" >
                            <th class="sorting" tabindex="0" aria-controls="editabledatatable" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Username: activate to sort column ascending" style="width: 175px;">
                                <span class="text">全选</span>
                                <div class="checker" style="float:left;" >
                                    <label>
                                        <input id="all" type="checkbox" class="group-checkable">
                                        <span class="text"></span>
                                    </label>
                                </div>
                            </th>
                            <th class="sorting" tabindex="0" aria-controls="editabledatatable" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Username: activate to sort column ascending" style="width: 251px;">
                                空间
                            </th>
                            <th class="sorting" tabindex="0" aria-controls="editabledatatable" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Username: activate to sort column ascending" style="width: 251px;">
                                样板间
                            </th>
                            <th class="sorting" tabindex="0" aria-controls="editabledatatable" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Username: activate to sort column ascending" style="width: 251px;">
                                推荐人群
                            </th>
                            <th class="sorting" tabindex="0" aria-controls="editabledatatable" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Username: activate to sort column ascending" style="width: 251px;">
                                居室环境
                            </th>
                            <th class="sorting" tabindex="0" aria-controls="editabledatatable" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Username: activate to sort column ascending" style="width: 251px;">
                                占地面积
                            </th>
                            <th class="sorting" tabindex="0" aria-controls="editabledatatable" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Username: activate to sort column ascending" style="width: 251px;">
                                装修风格
                            </th>
                            <th class="sorting" tabindex="0" aria-controls="editabledatatable" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Username: activate to sort column ascending" style="width: 251px;">
                                样板间logo
                            </th>
                            <th class="sorting" tabindex="0" aria-controls="editabledatatable" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Username: activate to sort column ascending" style="width: 251px;">
                                操作
                            </th>
                        </tr>
                        </thead>
                        <tbody>
                        <?php if(is_array($list) || $list instanceof \think\Collection || $list instanceof \think\Paginator): $i = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>
                        <tr class="odd" >
                            <td class="sorting_1" >
                                <div class="checker">
                                    <label>
                                        <input type="checkbox" class="checkboxes" name="check" value="<?php echo $vo->id; ?>">
                                        <span class="text"></span>
                                    </label>
                                </div>
                            </td>
                            <td class="sorting_1" ><?php echo $vo->ytype->tname; ?></td>
                            <td class="sorting_1" ><?php echo $vo->name; ?></td>
                            <td class="sorting_1" ><?php echo $vo->crowd; ?></td>
                            <td class="sorting_1" ><?php echo $vo->environment; ?></td>
                            <td class="sorting_1"><?php echo $vo->area; ?></td>
                            <td class="sorting_1"><?php echo $vo->style; ?></td>
                            <td class="sorting_1">
                               <!-- <a href="<?php echo $vo->logo; ?>" target="_blank"><img height="60" width="60" src="<?php echo $vo->logo; ?>" ></a>-->
                                <a href='#' attrlogo="<?php echo $vo->logo; ?>" onclick="showLogo(this)"><img height="60" width="60" src="<?php echo $vo->logo; ?>" ></a>
                            </td>
                            <td class=" ">
                                <a href="<?php echo url('showroom/editybj',array('id'=>$vo->id)); ?>" class="btn btn-info btn-xs edit"><i class="fa fa-edit"></i>编辑</a>
                                <!--<a href="<?php echo url('showroom/delybj',array('id'=>$vo->id)); ?>" onclick="return confirm('确实要删除吗')?true:false" class="btn btn-danger btn-xs delete"><i class="fa fa-trash-o"></i>删除</a>-->
                                <a href="<?php echo url('showroom/eidtpic',array('id'=>$vo->id)); ?>" class="btn btn-info btn-xs btn-palegreen"><i class="fa fa-picture-o"></i>图片</a>
                                <button attrid="<?php echo $vo->id; ?>" onclick="return del(this)" style="margin-top:5px" class="btn btn-danger btn-xs delete"><i class="fa fa-trash-o"></i>删除</button>
                            </td>
                        </tr>
                        <?php endforeach; endif; else: echo "" ;endif; ?>
                        <tr class="odd">
                            <td class="sorting_1" colspan="9">
                                <div style="text-align:left; margin-top:10px; float: left;">
                                    <button onclick="delchecked()" style="margin-top:5px" class="btn btn-danger btn-xs delete"><i class="fa fa-trash-o"></i>批量删除</button>
                                </div>
                                <div style="text-align:right; margin-top:10px;">
                                    <?php echo $list->render(); ?>
                                </div>
                            </td>
                        </tr>
                        </tbody>
                        </tbody>
                    </table>

                </div>
            </div>
        </div>
    </div>
    <!-- /Page Body -->
</div>
<!-- /Page Content -->
<script>

</script>
<script src="/admin/js/jquery-2.0.3.min.js"></script>
<script src="/admin/js/bootstrap.min.js"></script>

<!--Beyond Scripts-->
<script src="/admin/js/beyond.min.js"></script>
<script src="/admin/layer/layer.js"></script>
<!--Google Analytics::Demo Only-->
<script>
    $(function() {
        $("#all").click(function(){
            var one = $("[name='check']");
            var allprop = $(this).prop('checked');
            one.prop('checked',allprop);
        })
    });

    function delchecked() {
        var data = new Array();
        var ck = $("input[name='check']");
        layer.confirm('确定批量删除？', {
            btn: ['是','否'] //按钮
        },function (){
            ck.each(function() {
                if ($(this).prop('checked')==true){
                    data.push($(this).attr('value'));
                }
            });
            if (data.length == 0){
                layer.msg('无选中');
            } else {
                var url = "<?php echo url('showroom/dellotybj'); ?>";
                $.ajax({
                    type : "post",
                    url  : url,
                    data : {"data" : data},
                    success : function(data){
                        if (data.status==1){
                            layer.alert(data.msg,{icon: 1}, function (){
                                location.reload()
                            });
                        } else {
                            layer.alert(data.msg,{icon: 5},function (){
                                location.reload()
                            });
                        }
                    }
                });
            }
        },function () {
            layer.msg('取消操作');
        });
    }

    function del(obj) {
        var url = "<?php echo url('showroom/delybj'); ?>";
        var id = $(obj).attr("attrid");
        var that = $(obj);
        layer.confirm('确定删除空间？', {
            btn: ['是','否'] //按钮
        }, function(){
            $.ajax({
                type : "post",
                url  : url,
                data : {"id" : id},
                success : function(data){
                    if (data.status==1){
                        layer.msg(data.msg,{icon: 1});
                        that.parent().parent().remove();
                    } else {
                        layer.msg(data.msg,{icon: 5});
                    }
                }
            });
        }, function(){
            layer.msg('取消操作');
        });
    };

    function showLogo(obj) {
        var logo = $(obj).attr("attrlogo");
        layer.open({
            type: 1,
            title: false,
            area: ['800px','800px'],
            closeBtn: 1,
            skin: 'layui-layer-nobg', //没有背景色
            shadeClose: true,
            content: '<img height="800px" width="800px" src='+logo+' >'
        });
    }

    (function (i, s, o, g, r, a, m) {
        i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
            (i[r].q = i[r].q || []).push(arguments)
        }, i[r].l = 1 * new Date(); a = s.createElement(o),
            m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
    })(window, document, 'script', 'http://www.google-analytics.com/analytics.js', 'ga');

    ga('create', 'UA-52103994-1', 'auto');
    ga('send', 'pageview');

</script>
</body>
<!--  /Body -->
</html>
