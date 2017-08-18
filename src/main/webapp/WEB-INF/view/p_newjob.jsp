<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/4/9
  Time: 9:57
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>CUCU注册</title>
    <link href="/css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
    <link href="/css/register_style.css" rel="stylesheet" type="text/css" media="all" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <link rel="stylesheet" href="/css/register_flexslider.css" type="text/css" media="screen" />
    <script src="/js/jquery.min.js"></script>
    <script type="text/javascript" src="/js/move-top.js"></script>
    <script type="text/javascript" src="/js/easing.js"></script>
    <style>
        .pop-box {
            z-index: 9999; /*这个数值要足够大，才能够显示在最上层*/
            margin-bottom: 3px;
            display: none;
            position: absolute;
            background: #FFFFFF;
            border-color: #6e8bde;
            border-style: hidden;
            border-radius: 5px;
        }

        .pop-box h4 {
            color: #FFF;
            cursor:default;
            height: 18px;
            font-size: 14px;
            font-weight:bold;
            text-align: left;
            padding-left: 8px;
            padding-top: 4px;
            padding-bottom: 2px;
            background: #03B8FD repeat-x 0 0;
            border-radius: 5px;
        }

        .pop-box-body {
            clear: both;
            margin: 4px;
            padding: 2px;
            border-radius: 5px;
        }


        .mask {
            color:#C7EDCC;
            /*background-color:#C7EDCC;*/
            background-color:#4D606E;
            position:absolute;
            top:0px;
            left:0px;
            /*filter: Alpha(Opacity=60);*/
            opacity:0.5;/*其他，透明度50%*/
        }

        .tdc{
            overflow:hidden;
            white-space:nowrap;
            text-overflow:ellipsis;
        }

    </style>
    <script type="text/javascript">
        jQuery(document).ready(function($) {
            $(".scroll").click(function(event){
                event.preventDefault();
                $('html,body').animate({scrollTop:$(this.hash).offset().top},1200);
            });
        });
    </script>
    <script type="text/javascript">
        $(document).ready(function() {
            $().UItoTop({ easingType: 'easeOutQuart' });
        });
    </script>
    <script src="/js/responsiveslides.min.js"></script>
    <script>
        $(function () {
            $("#slider").responsiveSlides({
                auto: true,
                nav: true,
                speed: 500,
                namespace: "callbacks",
                pager: true,
            });
        });
    </script>
</head>
<body style='background: url("/img/back1.png") repeat;'>
<!-- header -->
<div class="header">
    <div class="head-nav">
        <div class="container">
            <span class="menu">Menu</span>
            <ul class="cl-effect-7">
                <li><a href="${pageContext.request.contextPath}/user/index">CUCU首页</a></li>
                <li><a href="#">招聘职位</a></li>
                <div class="clearfix"> </div>
            </ul>
        </div>
    </div>
    <!-- script-for-nav -->
    <script>
        $( "span.menu" ).click(function() {
            $( ".head-nav ul" ).slideToggle(300, function() {
                // Animation complete.
            });
        });
    </script>
</div>
<!-- header -->
<!-- register -->
<div class="main-1">
    <div class="container">
        <div class="register">
            <div>
                <form action="/newJob/select" method="post">
                    <select class="form-control" name="industry">
                        <option>所属行业</option>
                        <option>IT</option>
                        <option>建筑和房地产</option>
                        <option>银行和金融</option>
                    </select>
                    <select class="form-control" name="jobName">
                        <option>职位名称</option>
                        <option>软件开发工程师</option>
                        <option>测试工程师</option>
                        <option>运维工程师</option>
                        <option>前端工程师</option>
                    </select>
                    <select class="form-control" name="city">
                        <option>工作城市</option>
                        <option>北京</option>
                        <option>上海</option>
                        <option>天津</option>
                        <option>重庆</option>
                    </select>
                    <p>
                        <input type="text" name="jobName1" class="" value="职位名称"/>
                        <input type="text" name="city1" class="" value="工作城市" >
                        <input type="submit"  value="查询">
                    </p>
                </form>
            </div>
        </div>
        <div class="table-responsive" style="width: 100%;height:500px;color:#63b8bd;">
            <table style="table-layout:fixed" class="table table-condensed table-bordered table-hover table-striped">
                <thead>
                <td >行业</td>
                <td>职位</td>
                <td>单位</td>
                <td>部门</td>
                <td>薪资</td>
                <td>工作城市</td>
                <td>岗位要求</td>
                <td>职责描述</td>
                <td>发布时间</td>
                <td>操作</td>
                </thead>
                <tbody>
                <c:forEach items="${jobList}" var="item" >
                    <tr>
                        <td class="tdc">${item.industry}</td>
                        <td class="tdc">${item.jobName}</td>
                        <td class="tdc">${item.c_number}</td>
                        <td class="tdc">${item.department}</td>
                        <td class="tdc">10000-20000</td>
                        <td class="tdc">${item.city}</td>
                        <td class="tdc">${item.requirement}</td>
                        <td class="tdc">${item.description}</td>
                        <td class="tdc">${item.pubTime}</td>
                        <td class="tdc" style="color: #03B8FD; cursor: pointer;" id="btnTest"  value="test" onclick="popupDiv('pop-div');">申请职位</td>
                    </tr>
                </c:forEach>
                    </tbody>
            </table>
        </div>
    </div>
</div>
<!-- register -->
<!-- footer -->
<div class="footer">
    <div class="container">
        <div class="clearfix"> </div>
        <p>Copyright &copy; 2017.Company CUCU 保留所有权利.CUCU. </p>
    </div>
    <a href="#" id="toTop" style="display: block;"><span id="toTopHover" style="opacity: 0;"></span> <span id="toTopHover" style="opacity: 0;"> </span></a>
</div>
<!-- footer -->
<div id='pop-div' style="width: 400px;height:400px;" class="pop-box">
    <div class="pop-box-body" style="padding: 30px;">
        <br/>
        <h3 style="color:#63b8bd;text-align: center;">
            ! 温馨提示<br/>你正在申请新职位，若您继续，我们会将您的求职简历和档案资料发给您申请职位所属公司邮箱.你也可以点击编辑修改您的职业档案后继续申请职位.
        </h3>
        <br/>
        <br/>
        <p style="margin: 0 auto;text-align: center;">
            <input id="btnClose1" class="btn btn-default " type=button onclick="hideDiv('pop-div');apply();" value="继续"/>
            <input id="btnClose2" class="btn btn-default" type=button onclick="hideDiv('pop-div');" value="取消"/>
            <input id="btnClose3" class="btn btn-default" type=button onclick="hideDiv('pop-div');edit();" value="编辑"/>
        </p>
    </div>
</div>

<script>

    function register() {
        var form = document.forms[0];
        form.action = "${pageContext.request.contextPath}/user/register";
        form.method = "post";
        form.submit();
    }

    function show() {
        alert("您正在申请该职位");
    }

    function apply() {
        var ajax=$.ajax({url:"${pageContext.request.contextPath}/p_user/applyJob?email=${email}",async:false});
        alert("申请提交成功!");
    }



    function popupDiv(div_id) {
        var div_obj = $("#"+div_id);
        var windowWidth = document.body.clientWidth;
        var windowHeight = document.body.clientHeight;
        var popupHeight = div_obj.height();
        var popupWidth = div_obj.width();
        //添加并显示遮罩层
        $("<div id='mask'></div>").addClass("mask")
                .width(windowWidth + document.body.scrollWidth)
                .height(windowHeight + document.body.scrollHeight)
                .click(function() {hideDiv(div_id); })
                .appendTo("body")
                .fadeIn(200);
        div_obj.css({"position": "absolute"})
                .animate({left: windowWidth/2-popupWidth/2,
                    top: windowHeight/2-popupHeight/2, opacity: "show" }, "slow");

    }

    function hideDiv(div_id) {
        $("#mask").remove();
        $("#" + div_id).animate({left: 0, top: 0, opacity: "hide" }, "slow");
    }

    function edit() {
        window.location.href="${pageContext.request.contextPath}/p_user/toP_record?email=${email}";
    }
</script>
</body>
</html>
