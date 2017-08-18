<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
<html>
<head>
    <title>Home</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="/css/bootstrap.css" rel='stylesheet' type='text/css' />
    <link href="/css/style_p_index.css" rel='stylesheet' type='text/css' />
    <link href="/css/style_emp.css" rel='stylesheet' type='text/css' />
    <link href="/js/bootstrap-datetimepicker.min.css" rel="stylesheet"  media="screen"/>
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <script type="text/javascript">
        jQuery(document).ready(function($) {
            $(".scroll").click(function(event){
                event.preventDefault();
                $('html,body').animate({scrollTop:$(this.hash).offset().top},1200);
            });
            $.cookie("email",${requestScope.email}, { expires: 7});
        });
    </script>
    <script type="text/javascript" src="/js/jquery.mousewheel.js"></script>
    <script type="text/javascript" src="/js/jquery.contentcarousel.js"></script>
    <script type="text/javascript" src="/js/jquery.easing.1.3.js"></script>
    <script src="/js/moment.js"></script>
    <script src="/js/jquery.min.js"></script>
    <script src="/js/jquery.cookie.js"></script>
    <script src="/js/bootstrap.min.js"></script>
    <script src="/js/moment-with-locales.min.js"></script>
    <script type="text/javascript" src="/js/move-top.js"></script>
    <script type="text/javascript" src="/js/easing.js"></script>
    <script type="text/javascript" src="/js/bootstrap-datetimepicker.min.js"></script>
    <script type="text/javascript" src="/js/bootstrap-datetimepicker.js" charset="UTF-8"></script>
    <script type="text/javascript" src="/js/bootstrap-datetimepicker.fr.js" charset="UTF-8"></script>
    <script type="text/javascript" src="/js/bootstrap-datetimepicker.zh-CN.js" charset="UTF-8"></script>
    <style>
        .tdc{
            overflow:hidden;
            white-space:nowrap;
            text-overflow:ellipsis;
        }
    </style>
</head>
<body style='background: url("/img/back1.png") repeat;'>
<div class="header-bottom">
    <div class="container">
        <div class="header-bottom_left">
            <i class="phone"> </i><span>CUCU&nbsp;&nbsp;&nbsp;&nbsp;+138-9622-8864&nbsp;&nbsp;&nbsp;&nbsp;1757853547@qq.com</span>
        </div>
        <div class="social">
            <ul>
                <li class="facebook"><a href="#"><span> </span></a></li>
                <li class="twitter"><a href="#"><span> </span></a></li>
                <li class="pinterest"><a href="#"><span> </span></a></li>
                <li class="google"><a href="#"><span> </span></a></li>
                <li class="tumblr"><a href="#"><span> </span></a></li>
                <li class="instagram"><a href="#"><span> </span></a></li>
                <li class="rss"><a href="#"><span> </span></a></li>
            </ul>
        </div>
    </div>
</div>

<div class="menu" id="menu">
    <div class="container">
        <div class="logo">
            <a href="index.html"><img src="/img/logo.png" alt=""/></a>
        </div>
        <div class="h_menu4">
            <a class="toggleMenu" href="#">导航</a>
            <ul class="nav">
                <li class="active"><a href="index.html">首页</a></li>
                <li><a href="about.html">好友</a></li>
                <li><a href="trainers.html">企业邮箱</a></li>
                <li><a href="${pageContext.request.contextPath}/c_user/toJob?email="+${requestScope.email}>企业职位</a></li>
                <li><a href="">招聘管理</a></li>
                <li><a href="${pageContext.request.contextPath}/c_user/toC_record?="+${requestScope.email}>企业档案</a></li>
                <li><a href="contact.html">企业中心</a></li>
            </ul>
            <script type="text/javascript" src="/js/nav.js"></script>
        </div>
    </div>
</div>


<div class="main">
<div class="founder">
    <div class="container">
        <h3>企业招聘管理</h3>
        <P>在这里您可以管理你所在企业的招聘，包括发布招聘，进度管理等.</P>
        <a class="hvr-shutter-in-horizontal" href="#">招聘管理</a>
    </div>
</div>

<div class="deffence">
    <div class="container">
        <div class="col-md-4 deffence-rgt">
            <div class="deffence-left">
                <img src="/img/e9.png" class="img-responsive" alt="" style="cursor: pointer;"/>
                <h3>社会招聘</h3>
                <p>您可以在这里发布企业常年面向具有3年以上工作经验的社会人士的招聘岗位信息.</p>
                <p></p>
                <br/>
                <p>
                    <button type="button" onclick="showSoci()" class="btn btn-default" style="opacity:0.5;">社会招聘</button>
                </p>
            </div>
        </div>
        <div class="col-md-4 deffence-rgt">
            <div class="deffence-left">
                <img src="/img/e10.png" class="img-responsive" alt="" style="cursor: pointer;"/>
                <h3>校园招聘</h3>
                <p>您可以在这里发布企业特定时期针对实习生和应届生的各领域招聘岗位信息.</p>
                <p></p>
                <br/>
                <p>
                    <button type="button" onclick="showCamp()" class="btn btn-default" style="opacity:0.5;">校园招聘</button>
                </p>
            </div>
        </div>
        <div class="col-md-4 deffence-rgt">
            <div class="deffence-left">
                <img src="/img/e11.png" class="img-responsive" alt="" style="cursor: pointer;"/>
                <h3>黄金速聘 </h3>
                <p>您可以在这里发布特定时期针对高薪急聘领域高级专家人才和职业经理人的岗位信息.</p>
                <p></p>
                <br/>
                <p>
                    <button type="button" onclick="showgold()" class="btn btn-default" style="opacity:0.5;">黄金速聘</button>
                </p>
            </div>
        </div>
        <div class="clearfix"> </div>
    </div>
</div>
</div>
<br/>
<br/>
<br/>

<%--start banner1--%>
<div class="banner" style="width:inherit;margin: 0 auto;" hidden id="banner1">
    <div class="container " style="width:inherit;margin: 0 auto;">
        <div class="donate" style="width:inherit;margin: 0 auto;color: #63b8bd;">
            <h1>社会招聘</h1>
            <h2>发布新的职位</h2>
            <div  class="do-na " style=" color: #63B8BD;">
                <form style="color: #63B8BD;" role="form">
                    <select class="arrival " style="color: #63B8BD;" id="v1">
                        <option value="行业">行业</option>
                        <option value="计算机/IT">计算机/IT</option>
                        <option value="建筑/土木">建筑/土木</option>
                        <option value="制造业">制造业</option>
                        <option value="金融/保险">金融/保险</option>
                    </select>
                    <select class="arrival " style="color: #63B8BD;" id="v2">
                        <option value="工作城市">工作城市</option>
                        <option value="北京">北京</option>
                        <option value="上海">上海</option>
                        <option value="天津">天津</option>
                        <option value="重庆">重庆</option>
                    </select>
                    <div class="clearfix"> </div>
                    <div class="form-group" style="color: #63B8BD;" >
                        <input type="text" class="form-control" placeholder="职位"style="color: #63B8BD;" id="v3">
                    </div>
                    <div class="clearfix"> </div>
                    <div class="form-group" style="color: #63B8BD;">
                        <input  type="text" class="form-control" placeholder="单位"style="color: #63B8BD;"  id="v4">
                    </div>
                    <div class="clearfix"> </div>
                    <div class="form-group" style="color: #63B8BD;">
                        <input  type="text" class="form-control" placeholder="部门" style="color: #63B8BD;" id="v5">
                    </div>
                    <div class="clearfix"> </div>
                    <div class="form-group" style="color: #63B8BD;">
                        <input  type="text" class="form-control" placeholder="薪资待遇" style="color: #63B8BD;" id="v6">
                    </div>
                    <div class="clearfix"> </div>
                    <div class="form-group" style="color: #63B8BD;">
                        <input type="text" class="form-control" placeholder="截至时间" style="color: #63B8BD;" id="v7">
                    </div>
                    <br/>
                    <div class="form-group" style="color: #63B8BD;" >
                        <textarea class="form-control" rows="3" style="color: #63B8BD;" id="v8">岗位要求</textarea>
                    </div>
                    <div class="clearfix"> </div>
                    <div class="form-group" style="color: #63B8BD;" >
                        <textarea class="form-control" rows="3" style="color: #63B8BD;" id="v9">工作职责</textarea>
                    </div>
                    <div class="clearfix"> </div>
                    <div class="form-group" style="color: #63B8BD;" >
                        <textarea class="form-control" rows="3" style="color: #63B8BD;" id="v10">备注</textarea>
                    </div>
                    <div class="clearfix"> </div>
                    <p>
                        <button type="button" class="btn btn-default" onclick="insertS();alert('发布成功.');">发布</button>
                        <button type="reset" class="btn btn-default">取消</button>
                    </p>
                </form>
            </div>
            <br/>
            <br/>
            <div class="do-na" style="width:inherit;">
                <div class="cardss" style="width:inherit;">
                    <h2>已发布职位</h2>
                </div>
                <div class="table-responsive" style="width: inherit;vertical-align: middle;">
                    <table style="table-layout:fixed" class="table table-condensed table-bordered table-hover table-striped" id="para_table" style="width:inherit;">
                        <thead>
                        <td >行业</td>
                        <td>工作城市</td>
                        <td>职位</td>
                        <td>单位</td>
                        <td>部门</td>
                        <td>招聘类型</td>
                        <td>薪资待遇</td>
                        <td>截至时间</td>
                        <td>岗位要求</td>
                        <td>职责描述</td>
                        <td>备注</td>
                        <td>操作</td>
                        <td>操作</td>
                        </thead>
                        <tbody>
                        <tr>
                            <td class="tdc" onclick="tdclick(this)">计算机/IT</td>
                            <td class="tdc" onclick="tdclick(this)">重庆</td>
                            <td class="tdc" onclick="tdclick(this)">java工程师</td>
                            <td class="tdc" onclick="tdclick(this)">XX公司</td>
                            <td class="tdc" onclick="tdclick(this)">XX部门</td>
                            <td class="tdc" onclick="tdclick(this)">社会招聘</td>
                            <td class="tdc" onclick="tdclick(this)">10000-20000</td>
                            <td class="tdc" onclick="tdclick(this)">2017/05/01</td>
                            <td class="tdc" onclick="tdclick(this)">熟练掌握java和java ee开发技术.</td>
                            <td class="tdc" onclick="tdclick(this)">负责XX产品后台开发.</td>
                            <td class="tdc" onclick="tdclick(this)">暂无备注.</td>
                            <td class="tdc" style="color: #03B8FD; cursor: pointer;" id="btnTest1"  value="test" onclick="deletetr(this)">删除职位</td>
                            <td class="tdc" style="color: #03B8FD; cursor: pointer;" id="btnTest2"  value="test" onclick="saveEdit()">保存修改</td>
                        </tr>
                        </tbody>
                    </table>
                    <button class="btn btn-default" onclick="addtr()">添加</button>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- end banner 1-->

<%--start banner2--%>
<div class="banner" style="width:inherit;margin: 0 auto;" hidden id="banner2">
    <div class="container " style="width:inherit;margin: 0 auto;">
        <div class="donate" style="width:inherit;margin: 0 auto;color: #63b8bd;">
            <h1>校园招聘</h1>
            <h2>发布新的职位</h2>
            <div  class="do-na " style=" color: #63B8BD;">
                <form style="color: #63B8BD;" role="form">
                    <select class="arrival " style="color: #63B8BD;" id="v11">
                        <option value="行业">行业</option>
                        <option value="计算机/IT">计算机/IT</option>
                        <option value="建筑/土木">建筑/土木</option>
                        <option value="制造业">制造业</option>
                        <option value="金融/保险">金融/保险</option>
                    </select>
                    <select class="arrival " style="color: #63B8BD;" id="v21">
                        <option value="工作城市">工作城市</option>
                        <option value="北京">北京</option>
                        <option value="上海">上海</option>
                        <option value="天津">天津</option>
                        <option value="重庆">重庆</option>
                    </select>
                    <div class="clearfix"> </div>
                    <br/>
                    <select class="arrival " style="color: #63B8BD;" id="v31">
                        <option value="学生群体">学生群体</option>
                        <option value="本科及以上">本科及以上</option>
                        <option value="硕士及以上">硕士及以上</option>
                        <option value="博士及以上">博士及以上</option>
                        <option value="其他">其他</option>
                    </select>
                    <select class="arrival " style="color: #63B8BD;" id="v41">
                        <option value="招聘类型">招聘类型</option>
                        <option value="实习生">实习生</option>
                        <option value="应届生">应届生</option>
                        <option value="其他">其他</option>
                    </select>
                    <div class="clearfix"> </div>
                    <div class="form-group" style="color: #63B8BD;" >
                        <input type="text" class="form-control" placeholder="职位"style="color: #63B8BD;" id="v51">
                    </div>
                    <div class="clearfix"> </div>
                    <div class="form-group" style="color: #63B8BD;">
                        <input  type="text" class="form-control" placeholder="单位"style="color: #63B8BD;"  id="v61">
                    </div>
                    <div class="clearfix"> </div>
                    <div class="form-group" style="color: #63B8BD;">
                        <input  type="text" class="form-control" placeholder="部门" style="color: #63B8BD;" id="v71">
                    </div>
                    <div class="clearfix"> </div>
                    <div class="form-group" style="color: #63B8BD;">
                        <input  type="text" class="form-control" placeholder="薪资待遇" style="color: #63B8BD;" id="v81">
                    </div>
                    <div class="clearfix"> </div>
                    <div class="form-group" style="color: #63B8BD;">
                        <input type="text" class="form-control" placeholder="截至时间" style="color: #63B8BD;" id="v91">
                    </div>
                    <br/>
                    <div class="form-group" style="color: #63B8BD;" >
                        <textarea class="form-control" rows="3" style="color: #63B8BD;" id="v101">岗位要求</textarea>
                    </div>
                    <div class="clearfix"> </div>
                    <div class="form-group" style="color: #63B8BD;" >
                        <textarea class="form-control" rows="3" style="color: #63B8BD;" id="v111">工作职责</textarea>
                    </div>
                    <div class="clearfix"> </div>
                    <div class="form-group" style="color: #63B8BD;" >
                        <textarea class="form-control" rows="3" style="color: #63B8BD;" id="v121">备注</textarea>
                    </div>
                    <div class="clearfix"> </div>
                    <p>
                        <button type="button" class="btn btn-default" onclick="insertS1();alert('发布成功.');">发布</button>
                        <button type="reset" class="btn btn-default">取消</button>
                    </p>
                </form>
            </div>
            <br/>
            <br/>

            <div class="do-na" style="width:inherit;">
                <div class="cardss" style="width:inherit;">
                    <h2>已发布职位</h2>
                </div>
                <div class="table-responsive" style="width: inherit;vertical-align: middle;">
                    <table style="table-layout:fixed" class="table table-condensed table-bordered table-hover table-striped" id="para_table1" style="width:inherit;">
                        <thead>
                        <td >行业</td>
                        <td>工作城市</td>
                        <td>学生群体</td>
                        <td>招聘类型</td>
                        <td>职位</td>
                        <td>单位</td>
                        <td>部门</td>
                        <td>招聘类型</td>
                        <td>薪资待遇</td>
                        <td>截至时间</td>
                        <td>岗位要求</td>
                        <td>职责描述</td>
                        <td>备注</td>
                        <td>操作</td>
                        <td>操作</td>
                        </thead>
                        <tbody>
                        <tr>
                            <td class="tdc" onclick="tdclick(this)">计算机/IT</td>
                            <td class="tdc" onclick="tdclick(this)">上海</td>
                            <td class="tdc" onclick="tdclick(this)">本科及以上</td>
                            <td class="tdc" onclick="tdclick(this)">应届生</td>
                            <td class="tdc" onclick="tdclick(this)">前端工程师</td>
                            <td class="tdc" onclick="tdclick(this)">XX公司</td>
                            <td class="tdc" onclick="tdclick(this)">XX部门</td>
                            <td class="tdc" onclick="tdclick(this)">校园招聘</td>
                            <td class="tdc" onclick="tdclick(this)">5k-8k</td>
                            <td class="tdc" onclick="tdclick(this)">2017/08/01</td>
                            <td class="tdc" onclick="tdclick(this)">熟悉html/css/javascript以及jquery/bootstrap等.</td>
                            <td class="tdc" onclick="tdclick(this)">参与公司项目前端开发.</td>
                            <td class="tdc" onclick="tdclick(this)">暂无备注.</td>
                            <td class="tdc" style="color: #03B8FD; cursor: pointer;" id="btnTest4"  value="test" onclick="deletetr(this)">删除职位</td>
                            <td class="tdc" style="color: #03B8FD; cursor: pointer;" id="btnTest5"  value="test" onclick="saveEdit()">保存修改</td>
                        </tr>
                        </tbody>
                    </table>
                    <button class="btn btn-default" onclick="addtr1()">添加</button>
                </div>
            </div>
        </div>
    </div>
</div>
<%--end banner2--%>

<%--start banner3--%>
<div class="banner" style="width:inherit;margin: 0 auto;" hidden id="banner3">
    <div class="container " style="width:inherit;margin: 0 auto;">
        <div class="donate" style="width:inherit;margin: 0 auto;color: #63b8bd;">
            <h1>黄金速聘</h1>
            <h2>发布新的职位</h2>
            <div  class="do-na " style=" color: #63B8BD;">
                <form style="color: #63B8BD;" role="form">
                    <select class="arrival " style="color: #63B8BD;" id="v110">
                        <option value="行业">行业</option>
                        <option value="计算机/IT">计算机/IT</option>
                        <option value="建筑/土木">建筑/土木</option>
                        <option value="制造业">制造业</option>
                        <option value="金融/保险">金融/保险</option>
                    </select>
                    <select class="arrival " style="color: #63B8BD;" id="v210">
                        <option value="工作城市">工作城市</option>
                        <option value="北京">北京</option>
                        <option value="上海">上海</option>
                        <option value="天津">天津</option>
                        <option value="重庆">重庆</option>
                    </select>
                    <div class="clearfix"> </div>
                    <br/>
                    <select class="arrival " style="color: #63B8BD;" id="v310">
                        <option value="招聘对象">招聘对象</option>
                        <option value="领域技术专家">领域技术专家</option>
                        <option value="职业经理人">职业经理人</option>
                        <option value="财务顾问">财务顾问</option>
                        <option value="法律顾问">法律顾问</option>
                        <option value="特殊人才">特殊人才</option>
                        <option value="其他">其他</option>
                    </select>
                    <select class="arrival " style="color: #63B8BD;" id="v410">
                        <option value="招聘类型">招聘类型</option>
                        <option value="顾问">顾问</option>
                        <option value="正式雇佣">正式雇佣</option>
                        <option value="其他">其他</option>
                    </select>
                    <div class="clearfix"> </div>
                    <div class="form-group" style="color: #63B8BD;" >
                        <input type="text" class="form-control" placeholder="职位"style="color: #63B8BD;" id="v510">
                    </div>
                    <div class="clearfix"> </div>
                    <div class="form-group" style="color: #63B8BD;">
                        <input  type="text" class="form-control" placeholder="单位"style="color: #63B8BD;"  id="v610">
                    </div>
                    <div class="clearfix"> </div>
                    <div class="form-group" style="color: #63B8BD;">
                        <input  type="text" class="form-control" placeholder="部门" style="color: #63B8BD;" id="v710">
                    </div>
                    <div class="clearfix"> </div>
                    <div class="form-group" style="color: #63B8BD;">
                        <input  type="text" class="form-control" placeholder="薪资待遇" style="color: #63B8BD;" id="v810">
                    </div>
                    <div class="clearfix"> </div>
                    <div class="form-group" style="color: #63B8BD;">
                        <input type="text" class="form-control" placeholder="截至时间" style="color: #63B8BD;" id="v910">
                    </div>
                    <br/>
                    <div class="form-group" style="color: #63B8BD;" >
                        <textarea class="form-control" rows="3" style="color: #63B8BD;" id="v1010">岗位要求</textarea>
                    </div>
                    <div class="clearfix"> </div>
                    <div class="form-group" style="color: #63B8BD;" >
                        <textarea class="form-control" rows="3" style="color: #63B8BD;" id="v1110">工作职责</textarea>
                    </div>
                    <div class="clearfix"> </div>
                    <div class="form-group" style="color: #63B8BD;" >
                        <textarea class="form-control" rows="3" style="color: #63B8BD;" id="v1210">备注</textarea>
                    </div>
                    <div class="clearfix"> </div>
                    <p>
                        <button type="button" class="btn btn-default" onclick="insertS2();alert('发布成功.');">发布</button>
                        <button type="reset" class="btn btn-default">取消</button>
                    </p>
                </form>
            </div>
            <br/>
            <br/>
            <div class="do-na" style="width:inherit;">
                <div class="cardss" style="width:inherit;">
                    <h2>已发布职位</h2>
                </div>
                <div class="table-responsive" style="width: inherit;vertical-align: middle;">
                    <table style="table-layout:fixed" class="table table-condensed table-bordered table-hover table-striped" id="para_table2" style="width:inherit;">
                        <thead>
                        <td >行业</td>
                        <td>工作城市</td>
                        <td>招聘对象</td>
                        <td>招聘类型</td>
                        <td>职位</td>
                        <td>单位</td>
                        <td>部门</td>
                        <td>招聘类型</td>
                        <td>薪资待遇</td>
                        <td>截至时间</td>
                        <td>岗位要求</td>
                        <td>职责描述</td>
                        <td>备注</td>
                        <td>操作</td>
                        <td>操作</td>
                        </thead>
                        <tbody>
                        <tr>
                            <td class="tdc" onclick="tdclick(this)">金融</td>
                            <td class="tdc" onclick="tdclick(this)">上海</td>
                            <td class="tdc" onclick="tdclick(this)">硕士及以上</td>
                            <td class="tdc" onclick="tdclick(this)">顾问</td>
                            <td class="tdc" onclick="tdclick(this)">投资顾问</td>
                            <td class="tdc" onclick="tdclick(this)">XX公司</td>
                            <td class="tdc" onclick="tdclick(this)">XX部门</td>
                            <td class="tdc" onclick="tdclick(this)">黄金速聘</td>
                            <td class="tdc" onclick="tdclick(this)">100w-200w</td>
                            <td class="tdc" onclick="tdclick(this)">2017/08/01</td>
                            <td class="tdc" onclick="tdclick(this)">多年金融领域投资/工作经验.</td>
                            <td class="tdc" onclick="tdclick(this)">负责公司财务部投资管理.</td>
                            <td class="tdc" onclick="tdclick(this)">暂无备注.</td>
                            <td class="tdc" style="color: #03B8FD; cursor: pointer;" id="btnTest7"  value="test" onclick="deletetr(this)">删除职位</td>
                            <td class="tdc" style="color: #03B8FD; cursor: pointer;" id="btnTest8"  value="test" onclick="saveEdit()">保存修改</td>
                        </tr>
                        </tbody>
                    </table>
                    <button class="btn btn-default" onclick="addtr2()">添加</button>
                </div>
            </div>
        </div>
    </div>
</div>
<%--end banner3--%>

<div class="footer-top">
    <ul class="twitter_footer">
        <li>
            <i class="twt_icon"> </i><p><span class="m_6"></span></p>
            <%--<div class="clear"></div>--%>
        </li>
    </ul>
</div>

<div class="footer-bottom">
    <div class="container">
        <div class="row section group">
            <div class="col-md-4">
                <h4 class="m_7">建议和问题</h4>
                <p class="m_8">您有什么建议或问题，可以通过下面提交给我们。</p>
                <form class="subscribe">
                    <input type="text" value="建议或问题" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = '建议或问题';}">
                </form>
                <div class="subscribe1">
                    <a href="#">提交<i class="but_arrow"> </i></a>
                </div>
            </div>
            <div class="col-md-4">
                <div class="f-logo">
                    <img src="/img/logo.png" alt=""/>
                </div>
                <p class="m_9"></p>
                <p class="address">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Phone : <span class="m_10">(023) 65490883</span></p>
                <p class="address">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Email : <span class="m_10">1757853547@qq.com</span></p>
            </div>
            <div class="col-md-4">
                <ul class="list">
                    <h4 class="m_7">导航</h4>
                    <li><a href="#">首页</a></li>
                    <li><a href="#">企业用户</a></li>
                    <li><a href="#">个人用户</a></li>
                    <li><a href="#">院校用户</a></li>
                    <li><a href="#">政策说明</a></li>
                    <li><a href="#">联系方式</a></li>
                </ul>
                <ul class="list1">
                    <h4 class="m_7">社交</h4>
                    <li><a href="#">Blog</a></li>
                    <li><a href="#">QQ</a></li>
                    <li><a href="#">微信</a></li>
                    <li><a href="#">Facebook</a></li>
                </ul>
            </div>
            <div class="clear"></div>
        </div>
    </div>
</div>

<div class="copyright">
    <div class="container">
        <div class="copy">
            <p>Copyright &copy; 2017.Company CUCU.保留所有权利.</p>
        </div>
        <div class="social">
            <ul>
                <li class="facebook"><a href="#"><span> </span></a></li>
                <li class="twitter"><a href="#"><span> </span></a></li>
                <li class="pinterest"><a href="#"><span> </span></a></li>
                <li class="google"><a href="#"><span> </span></a></li>
                <li class="tumblr"><a href="#"><span> </span></a></li>
                <li class="instagram"><a href="#"><span> </span></a></li>
                <li class="rss"><a href="#"><span> </span></a></li>
            </ul>
        </div>
        <div class="clear"></div>
    </div>
</div>
</div>
<script>
    function saveEdit() {
        alert("保存成功!");
    }
    $('.form_datetime').datetimepicker({
        language:  'zh-CN',
        weekStart: 1,
        todayBtn:  1,
        autoclose: 1,
        todayHighlight: 1,
        startView: 2,
        forceParse: 0,
        showMeridian: 1
    });
    $('.form_date').datetimepicker({
        language:  'zh-CN',
        weekStart: 1,
        todayBtn:  1,
        autoclose: 1,
        todayHighlight: 1,
        startView: 2,
        minView: 2,
        forceParse: 0
    });
    $('.form_time').datetimepicker({
        language:  'zh-CN',
        weekStart: 1,
        todayBtn:  1,
        autoclose: 1,
        todayHighlight: 1,
        startView: 1,
        minView: 0,
        maxView: 1,
        forceParse: 0
    });

    function gettableinfo(){
        var key = "";
        var value = "";
        var tabledata = "";
        var table = $("#para_table");
        var tbody = table.children();
        var trs = tbody.children();
        for(var i=1;i<trs.length;i++){
            var tds = trs.eq(i).children();
            for(var j=0;j<tds.length;j++){
                if(j==0){
                    if(tds.eq(j).text()==null||tds.eq(j).text()==""){
                        return null;
                    }
                    key = "key\":\""+tds.eq(j).text();
                }
                if(j==1){
                    if(tds.eq(j).text()==null||tds.eq(j).text()==""){
                        return null;
                    }
                    value = "value\":\""+tds.eq(j).text();
                }
            }
            if(i==trs.length-1){
                tabledata += "{\""+key+"\",\""+value+"\"}";
            }else{
                tabledata += "{\""+key+"\",\""+value+"\"},";
            }
        }
        tabledata = "["+tabledata+"]";
        return tabledata;
    }

    function tdclick(tdobject){
        var td=$(tdobject);
        td.attr("onclick", "");
        var text=td.text();
        td.html("");
        var input=$("<input>");
        input.attr("value",text);
        input.bind("blur",function(){
            var inputnode=$(this);
            var inputtext=inputnode.val();
            var tdNode=inputnode.parent();
            tdNode.html(inputtext);
            tdNode.click(tdclick);
            td.attr("onclick", "tdclick(this)");
        });
        input.keyup(function(event){
            var myEvent =event||window.event;
            var kcode=myEvent.keyCode;
            if(kcode==13){
                var inputnode=$(this);
                var inputtext=inputnode.val();
                var tdNode=inputnode.parent();
                tdNode.html(inputtext);
                tdNode.click(tdclick);
            }
        });
        td.append(input);
        var t =input.val();
        input.val("").focus().val(t);
        td.unbind("click");
    }
    function addtr(){
        var table = $("#para_table");
        var tr= $(
                "<tr>" +
                "<td  class='tdc' onclick='tdclick(this)'>"+"</td>" +
                "<td  class='tdc' onclick='tdclick(this)'>"+"</td>" +
                "<td  class='tdc' onclick='tdclick(this)'>"+"</td>" +
                "<td  class='tdc' onclick='tdclick(this)'>"+"</td>" +
                "<td  class='tdc' onclick='tdclick(this)'>"+"</td>" +
                "<td  class='tdc' onclick='tdclick(this)'>"+"</td>" +
                "<td  class='tdc' onclick='tdclick(this)'>"+"</td>" +
                "<td  class='tdc' onclick='tdclick(this)'>"+"</td>" +
                "<td  class='tdc' onclick='tdclick(this)'>"+"</td>" +
                "<td  class='tdc' onclick='tdclick(this)'>"+"</td>" +
                "<td  class='tdc' onclick='tdclick(this)'>"+"</td>" +
                "<td class='tdc' style='color: #03B8FD; cursor: pointer;' id='btnTest1'  value='test' onclick='deletetr(this)'>删除职位</td>"+
                "<td class='tdc' style='color: #03B8FD; cursor: pointer;' id='btnTest3'  value='test' onclick='saveEdit()'>保存修改</td>"
        );
        table.append(tr);
    }
    function deletetr(tdobject){
        var td=$(tdobject);
        td.parents("tr").remove();
    }

    function addtr1(){
        var table = $("#para_table1");
        var tr= $(
                "<tr>" +
                "<td  class='tdc' onclick='tdclick(this)'>"+"</td>" +
                "<td  class='tdc' onclick='tdclick(this)'>"+"</td>" +
                "<td  class='tdc' onclick='tdclick(this)'>"+"</td>" +
                "<td  class='tdc' onclick='tdclick(this)'>"+"</td>" +
                "<td  class='tdc' onclick='tdclick(this)'>"+"</td>" +
                "<td  class='tdc' onclick='tdclick(this)'>"+"</td>" +
                "<td  class='tdc' onclick='tdclick(this)'>"+"</td>" +
                "<td  class='tdc' onclick='tdclick(this)'>"+"</td>" +
                "<td  class='tdc' onclick='tdclick(this)'>"+"</td>" +
                "<td  class='tdc' onclick='tdclick(this)'>"+"</td>" +
                "<td  class='tdc' onclick='tdclick(this)'>"+"</td>" +
                "<td  class='tdc' onclick='tdclick(this)'>"+"</td>" +
                "<td  class='tdc' onclick='tdclick(this)'>"+"</td>" +
                "<td class='tdc' style='color: #03B8FD; cursor: pointer;' id='btnTest1'  value='test' onclick='deletetr(this)'>删除职位</td>"+
                "<td class='tdc' style='color: #03B8FD; cursor: pointer;' id='btnTest3'  value='test' onclick='saveEdit()'>保存修改</td>"
        );
        table.append(tr);
    }

    function addtr2(){
        var table = $("#para_table2");
        var tr= $(
                "<tr>" +
                "<td  class='tdc' onclick='tdclick(this)'>"+"</td>" +
                "<td  class='tdc' onclick='tdclick(this)'>"+"</td>" +
                "<td  class='tdc' onclick='tdclick(this)'>"+"</td>" +
                "<td  class='tdc' onclick='tdclick(this)'>"+"</td>" +
                "<td  class='tdc' onclick='tdclick(this)'>"+"</td>" +
                "<td  class='tdc' onclick='tdclick(this)'>"+"</td>" +
                "<td  class='tdc' onclick='tdclick(this)'>"+"</td>" +
                "<td  class='tdc' onclick='tdclick(this)'>"+"</td>" +
                "<td  class='tdc' onclick='tdclick(this)'>"+"</td>" +
                "<td  class='tdc' onclick='tdclick(this)'>"+"</td>" +
                "<td  class='tdc' onclick='tdclick(this)'>"+"</td>" +
                "<td  class='tdc' onclick='tdclick(this)'>"+"</td>" +
                "<td  class='tdc' onclick='tdclick(this)'>"+"</td>" +
                "<td class='tdc' style='color: #03B8FD; cursor: pointer;' id='btnTest1'  value='test' onclick='deletetr(this)'>删除职位</td>"+
                "<td class='tdc' style='color: #03B8FD; cursor: pointer;' id='btnTest3'  value='test' onclick='saveEdit()'>保存修改</td>"
        );
        table.append(tr);
    }




    function insertS(){
        var v1=$("#v1 option:selected").val();
        var v2=$("#v2 option:selected").val();
        var v3=$("#v3").val();
        var v4=$("#v4").val();
        var v5=$("#v5").val();
        var v6=$("#v6").val();
        var v7=$("#v7").val();
        var v8=$("#v8").val();
        var v9=$("#v9").val();
        var v10=$("#v10").val();
        var table = $("#para_table");
        var tr= $(
                "<tr>" +
                "<td  class='tdc' onclick='tdclick(this)'>"+v1+"</td>" +
                "<td  class='tdc' onclick='tdclick(this)'>"+v2+"</td>" +
                "<td  class='tdc' onclick='tdclick(this)'>"+v3+"</td>" +
                "<td  class='tdc' onclick='tdclick(this)'>"+v4+"</td>" +
                "<td  class='tdc' onclick='tdclick(this)'>"+v5+"</td>" +
                "<td  class='tdc' onclick='tdclick(this)'>"+"社会招聘"+"</td>" +
                "<td  class='tdc' onclick='tdclick(this)'>"+v6+"</td>" +
                "<td  class='tdc' onclick='tdclick(this)'>"+v7+"</td>" +
                "<td  class='tdc' onclick='tdclick(this)'>"+v8+"</td>" +
                "<td  class='tdc' onclick='tdclick(this)'>"+v9+"</td>" +
                "<td  class='tdc' onclick='tdclick(this)'>"+v10+"</td>" +
                "<td class='tdc' style='color: #03B8FD; cursor: pointer;' id='btnTest1'  value='test' onclick='deletetr(this)'>删除职位</td>"+
                "<td class='tdc' style='color: #03B8FD; cursor: pointer;' id='btnTest3'  value='test' onclick='saveEdit()'>保存修改</td>"
        );
        table.append(tr);
    }


    function insertS1(){
        var v1=$("#v11 option:selected").val();
        var v2=$("#v21 option:selected").val();
        var v3=$("#v31 option:selected").val();
        var v4=$("#v41 option:selected").val();
        var v5=$("#v51").val();
        var v6=$("#v61").val();
        var v7=$("#v71").val();
        var v8=$("#v81").val();
        var v9=$("#v91").val();
        var v10=$("#v101").val();
        var v11=$("#v111").val();
        var v12=$("#v121").val();
        var table = $("#para_table1");
        var tr= $(
                "<tr>" +
                "<td  class='tdc' onclick='tdclick(this)'>"+v1+"</td>" +
                "<td  class='tdc' onclick='tdclick(this)'>"+v2+"</td>" +
                "<td  class='tdc' onclick='tdclick(this)'>"+v3+"</td>" +
                "<td  class='tdc' onclick='tdclick(this)'>"+v4+"</td>" +
                "<td  class='tdc' onclick='tdclick(this)'>"+v5+"</td>" +
                "<td  class='tdc' onclick='tdclick(this)'>"+v6+"</td>" +
                "<td  class='tdc' onclick='tdclick(this)'>"+v7+"</td>" +
                "<td  class='tdc' onclick='tdclick(this)'>"+"校园招聘"+"</td>" +
                "<td  class='tdc' onclick='tdclick(this)'>"+v8+"</td>" +
                "<td  class='tdc' onclick='tdclick(this)'>"+v9+"</td>" +
                "<td  class='tdc' onclick='tdclick(this)'>"+v10+"</td>" +
                "<td  class='tdc' onclick='tdclick(this)'>"+v11+"</td>" +
                "<td  class='tdc' onclick='tdclick(this)'>"+v12+"</td>" +
                "<td class='tdc' style='color: #03B8FD; cursor: pointer;' id='btnTest1'  value='test' onclick='deletetr(this)'>删除职位</td>"+
                "<td class='tdc' style='color: #03B8FD; cursor: pointer;' id='btnTest3'  value='test' onclick='saveEdit()'>保存修改</td>"
        );
        table.append(tr);
    }

    function insertS2(){
        var v1=$("#v110 option:selected").val();
        var v2=$("#v210 option:selected").val();
        var v3=$("#v310 option:selected").val();
        var v4=$("#v410 option:selected").val();
        var v5=$("#v510").val();
        var v6=$("#v610").val();
        var v7=$("#v710").val();
        var v8=$("#v810").val();
        var v9=$("#v910").val();
        var v10=$("#v1010").val();
        var v11=$("#v1110").val();
        var v12=$("#v1210").val();
        var table = $("#para_table2");
        var tr= $(
                "<tr>" +
                "<td  class='tdc' onclick='tdclick(this)'>"+v1+"</td>" +
                "<td  class='tdc' onclick='tdclick(this)'>"+v2+"</td>" +
                "<td  class='tdc' onclick='tdclick(this)'>"+v3+"</td>" +
                "<td  class='tdc' onclick='tdclick(this)'>"+v4+"</td>" +
                "<td  class='tdc' onclick='tdclick(this)'>"+v5+"</td>" +
                "<td  class='tdc' onclick='tdclick(this)'>"+v6+"</td>" +
                "<td  class='tdc' onclick='tdclick(this)'>"+v7+"</td>" +
                "<td  class='tdc' onclick='tdclick(this)'>"+"黄金速聘"+"</td>" +
                "<td  class='tdc' onclick='tdclick(this)'>"+v8+"</td>" +
                "<td  class='tdc' onclick='tdclick(this)'>"+v9+"</td>" +
                "<td  class='tdc' onclick='tdclick(this)'>"+v10+"</td>" +
                "<td  class='tdc' onclick='tdclick(this)'>"+v11+"</td>" +
                "<td  class='tdc' onclick='tdclick(this)'>"+v12+"</td>" +
                "<td class='tdc' style='color: #03B8FD; cursor: pointer;' id='btnTest1'  value='test' onclick='deletetr(this)'>删除职位</td>"+
                "<td class='tdc' style='color: #03B8FD; cursor: pointer;' id='btnTest3'  value='test' onclick='saveEdit()'>保存修改</td>"
        );
        table.append(tr);
    }

    function showSoci() {
        $("#banner1").show(1000);
        $("#banner2").hide();
        $("#banner3").hide();
    }
    function showCamp() {
        $("#banner2").show(1000);
        $("#banner1").hide();
        $("#banner3").hide();
    }
    function showgold() {
        $("#banner3").show(1000);
        $("#banner1").hide();
        $("#banner2").hide();
    }

</script>
</body>
</html>