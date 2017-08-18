<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/4/27
  Time: 20:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="/css/bootstrap.css">
    <link href="/css/style_p_index.css" rel='stylesheet' type='text/css' />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href='http://fonts.useso.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>
    <link href='http://fonts.useso.com/css?family=Open+Sans+Condensed:300,700' rel='stylesheet' type='text/css'>
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!--<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />-->
    <script src="/js/jquery.min.js"></script>
    <script type="text/javascript">
        jQuery(document).ready(function($) {
            $(".scroll").click(function(event){
                event.preventDefault();
                $('html,body').animate({scrollTop:$(this.hash).offset().top},1200);
            });
        });
    </script>
    <!-- grid-slider -->
    <script type="text/javascript" src="/js/jquery.mousewheel.js"></script>
    <script type="text/javascript" src="/js/jquery.contentcarousel.js"></script>
    <script type="text/javascript" src="/js/jquery.easing.1.3.js"></script>
    <style>
        #overlay {
            background: #000;
            filter: alpha(opacity=50); /* IE的透明度 */
            opacity: 0.5;  /* 透明度 */
            display: none;
            position: absolute;
            top: 0px;
            left: 0px;
            width: 100%;
            height: 100%;
            z-index: 100; /* 此处的图层要大于页面 */
            display:none;
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
        <%--<div class="clear"></div>--%>
    </div>
</div>
<!-- end header_bottom -->
<!-- start menu -->
<div class="menu" id="menu" >
    <div class="container">
        <div class="logo">
            <a href="index.html"><img src="/img/logo.png" alt=""/></a>
        </div>
        <div class="h_menu4"><!-- start h_menu4 -->
            <a class="toggleMenu" href="#">导航</a>
            <ul class="nav">
                <li class="active"><a href="index.html">首页</a></li>
                <li><a href="${pageContext.request.contextPath}/inChat/toU_CHF/${requestScope.email}">招聘管理</a></li>
            </ul>
            <script type="text/javascript" src="/js/nav.js"></script>
        </div><!-- end h_menu4 -->
        <%--<div class="clear"></div>--%>
    </div
</div>



<div class="main" style='background: url("/img/back1.png") repeat;'>
    <div style="height:30px;"></div>
<div class="container" style="color:#63B8BD;margin:0 auto;">
    <div class="row content-middle">
        <div class="col-md-12 register" id="form1">
            <h2 style="color:#e52b50;text-align: center;">院校招聘会</h2>
            <br/>
            <form role="form">
                <div class="form-group">
                    <label for="name1">主题</label>
                    <input class="form-control" type="text" placeholder="" id="name1" name="name1">
                </div>
                <div class="form-group">
                    <label for="name2">宣言</label>
                    <input class="form-control" type="text" placeholder="" id="name2" name="name2">
                </div>
                <div class="form-group">
                    <label for="name3">时间</label>
                    <input class="form-control" type="text" placeholder="" id="name3" name="name3">
                </div>
                <div class="form-group">
                    <label for="name4">意向招聘方</label>
                    <select class="form-control" id="name4" name="name4">
                        <option value="国企/外企">国企/外企</option>
                        <option value="民企/初创企业">民企/初创企业</option>
                        <option value="事业单位">事业单位</option>
                        <option value="其他">其他</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="name5">专项招聘领域</label>
                    <select class="form-control" id="name5" name="name5">
                        <option value="计算机/IT">计算机/IT</option>
                        <option value="建筑/土木">建筑/土木</option>
                        <option value="制造业">制造业</option>
                        <option value="金融/保险">金融/保险</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="name6">专项人才</label>
                    <select class="form-control" id="name6" name="name6">
                        <option value="博士">博士</option>
                        <option value="硕士">硕士</option>
                        <option value="本科">本科</option>
                        <option value="其他">其他</option>
                        <option value="全部">全部</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="name7">注意事项</label>
                    <textarea class="form-control" rows="5" id="name7" name="name7"></textarea>
                </div>
                <div class="form-group">
                    <label for="name8">详细内容</label>
                    <textarea class="form-control" rows="5" id="name8" name="name8"></textarea>
                </div>
                <div class="form-group">
                    <label for="name9">邀请方</label>
                    <textarea class="form-control" rows="5" id="name9" name="name9"></textarea>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-4 col-sm-10">
                        <button type="button" class="btn btn-default" onclick="publish()">发布</button>
                        <button type="button" class="btn btn-default" onclick="showInfo('#info1')">历史</button>
                        <button type="reset" class="btn btn-default" onclick="removeInfo1('#info1')">取消</button>
                    </div>
                </div>
                <div style="height:100px;"></div>
            </form>
        </div>
    </div>
</div>
</div>


<div id="info1" style="overflow: scroll;border-radius:10px;position:relative;z-index:9999;width:800px;height:700px;margin: 0 auto;background: #FFFFFF;margin-top: -800px; padding-top:30px;padding-left: 20px;color: #9755d1;font-weight: bold;"hidden>
</div>
<div id="overlay"></div>
<input name="pemail" id="pemail" value="${email}" hidden>

<script>
    function publishJobFair(v1,v2,v3,v4,v5,v6,v7,v8,v9,v10) {
        var path="http://localhost:8080";
        $.ajax({
            url: path+"/user/pJobFair",
            type: "POST",
            dataType: "json",
            data: {
                "email":v1,
                "zhuti": v2,
                "xuanyan":v3,
                "time":v4,
                "to":v5,
                "lingyu":v6,
                "rencai":v7,
                "shixiang":v8,
                "content":v9,
                "emails":v10
            },
            async: false,
            success: function(data) {
            },
            error: function() {
            }
        });
    }

    function publish() {
        var email=$("#pemail").val();
        var v1=$("#name1").val();
        var v2=$("#name2").val();
        var v3=$("#name3").val();
        var v4=$("#name4 option:selected").val();
        var v5=$("#name5 option:selected").val();
        var v6=$("#name6 option:selected").val();
        var v7=$("#name7").val();
        var v8=$("#name8").val();
        var v9=$("#name9").val();
        var result="<div style='text-align: center;color:#63B8BD;'><br/><br/><br/>" +
                        "<h2>校园招聘会</h2><br/>"
                "<p>主题:"+v1+"</p>" +
                "<p>宣言:"+v2+"</p>" +
                "<p>时间:"+v3+"</p>" +
                "<p>意向招聘方:"+v4+"</p>" +
                "<p>专项招聘领域:"+v5+"</p>" +
                "<p>专项人才:"+v6+"</p>" +
                "<p>注意事项:"+v7+"</p>" +
                "<p>详细内容:"+v8+"</p>" +
                "<p>邀请方:"+v9+"+</p><br/><br/><br/>"+
                        "<button onclick='"+"removeInfo1()"+"'class='btn btn-default'"+">关闭窗口</button></div>";
        $("#info1").html(result);
        publishJobFair(email,v1,v2,v3,v4,v5,v6,v7,v8,v9);
        alert("发布成功!");
    }
    function removeInfo1() {
        $("#info1").hide(1000);
        hideOverlay();
    }

    function showInfo(val) {
        $(val).show();
        showOverlay();
    }


    /* 显示遮罩层 */
    function showOverlay() {
        $("#overlay").height(pageHeight());
        $("#overlay").width(pageWidth());

        // fadeTo第一个参数为速度，第二个为透明度
        // 多重方式控制透明度，保证兼容性，但也带来修改麻烦的问题
        $("#overlay").fadeTo(200, 0.5);
    }

    /* 隐藏覆盖层 */
    function hideOverlay() {
        $("#overlay").fadeOut(200);
    }

    /* 当前页面高度 */
    function pageHeight() {
        return document.body.scrollHeight;
    }

    /* 当前页面宽度 */
    function pageWidth() {
        return document.body.scrollWidth;
    }

    function removeInfo(val) {
        alert("删除成功!");
        $(val).parent().remove();
    }

    function add(val1,val2) {
        var value="<td class="+"tdc" +"style='color: #03B8FD; cursor: pointer;'"+" id='btn2'" +" value='test' onclick="+"popupDiv('pop-div');>删除</td>";
        $(val2).append(value);
        ($('#tbody1')).append($(val2).html())
        removeInfo1("info3");
    }



</script>
</body>
</html>
