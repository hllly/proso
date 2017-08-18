<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="/img/favicon.png">

    <title>Cupid</title>

    <!-- Bootstrap core CSS -->
    <link href="/css/bootstrap.css" rel="stylesheet">
    <link href="/css/eden.css" rel="stylesheet">
    <link href="/css/animate.css" rel="stylesheet">
    <link href="/css/icons.css" rel="stylesheet">
    <link href="//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.min.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="/css/style111.css" rel="stylesheet">


    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="bootstrap/js/html5shiv.js"></script>
    <script src="bootstrap/js/respond.min.js"></script>
    <![endif]-->

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

        .tdc{
            overflow:hidden;
            white-space:nowrap;
            text-overflow:ellipsis;
        }

        .i1{border:none;}
    </style>
</head>

<body data-spy="scroll" data-target="#topnav" style='background: url("/img/back1.png") repeat;'>

<section class="pricing" id="pricing" style='background: url("/img/back1.png") repeat;'>

    <div class="container" style='background: url("/img/back1.png") repeat;'>
        <div class="row">
            <div class="col-md-12 pricing-intro white">
                <h2 class="" style="color:#e52b50;text-align: center;">院校人才库</h2>
                <p class="text-center"></p>
            </div>
        </div>
    </div>


    <div class="container" style='background: url("/img/back1.png") repeat;'>
        <div class="row pricing-table">
            <div class="col-md-3">
                <div class="panel panel-danger">
                    <div class="panel-heading"><h3 class="text-center">在校生</h3></div>
                    <div class="panel-body text-center">
                        <div class="pricing-circle bg-danger" style="cursor: pointer;" onclick="showInfo('#info3')">添加</div>
                        <a class="btn btn-lg btn-block btn-danger" href="#" onclick="showInfo('#info1')" id="a1">博士</a>
                        <a class="btn btn-lg btn-block btn-danger" href="#" onclick="showInfo('#info4')" id="a2">硕士</a>
                        <a class="btn btn-lg btn-block btn-danger" href="#" onclick="showInfo('#info4')" id="a3">本科</a>
                        <a class="btn btn-lg btn-block btn-danger" href="#" onclick="showInfo('#info4')" id="a4">专科</a>
                        <a class="btn btn-lg btn-block btn-danger" href="#" onclick="showInfo('#info4')" id="a5">其他</a>
                        <a class="btn btn-lg btn-block btn-danger" href="#" onclick="showInfo('#info2')" id="a6">统计</a>
                    </div>
                    <ul class="list-group list-group-flush">
                    </ul>
                </div>
            </div>
            <div class="col-md-3">
                <div class="panel panel-info">
                    <div class="panel-heading"><h3 class="text-center">应届生</h3></div>
                    <div class="panel-body text-center">
                        <div class="pricing-circle bg-info" style="cursor: pointer;" onclick="showInfo('#info3')">添加</div>
                        <a class="btn btn-lg btn-block btn-info" href="#" onclick="showInfo('#info4')">博士</a>
                        <a class="btn btn-lg btn-block btn-info" href="#" onclick="showInfo('#info4')">硕士</a>
                        <a class="btn btn-lg btn-block btn-info" href="#" onclick="showInfo('#info4')">本科</a>
                        <a class="btn btn-lg btn-block btn-info" href="#" onclick="showInfo('#info4')">专科</a>
                        <a class="btn btn-lg btn-block btn-info" href="#" onclick="showInfo('#info4')">其他</a>
                        <a class="btn btn-lg btn-block btn-info" href="#" onclick="showInfo('#info2')">统计</a>
                    </div>
                    <ul class="list-group list-group-flush">
                    </ul>

                </div>

            </div>
            <div class="col-md-3">
                <div class="panel panel-success">
                    <div class="panel-heading"><h3 class="text-center">毕业生</h3></div>
                    <div class="panel-body text-center">
                        <div class="pricing-circle bg-success" style="cursor: pointer;" onclick="showInfo('#info3')">添加</div>
                        <a class="btn btn-lg btn-block btn-primary" href="#" onclick="showInfo('#info4')">博士</a>
                        <a class="btn btn-lg btn-block btn-primary" href="#" onclick="showInfo('#info4')">硕士</a>
                        <a class="btn btn-lg btn-block btn-primary" href="#" onclick="showInfo('#info4')">本科</a>
                        <a class="btn btn-lg btn-block btn-primary" href="#" onclick="showInfo('#info4')">专科</a>
                        <a class="btn btn-lg btn-block btn-primary" href="#" onclick="showInfo('#info4')">其他</a>
                        <a class="btn btn-lg btn-block btn-primary" href="#" onclick="showInfo('#info2')">统计</a>
                    </div>
                    <ul class="list-group list-group-flush">
                    </ul>

                </div>

            </div>
            <div class="col-md-3">
                <div class="panel panel-warning">
                    <div class="panel-heading"><h3 class="text-center">其他</h3></div>
                    <div class="panel-body text-center">
                        <div class="pricing-circle bg-warning" style="cursor: pointer;" onclick="showInfo('#info3')">添加</div>
                        <a class="btn btn-lg btn-block btn-warning" href="#" onclick="showInfo('#info4')">博士</a>
                        <a class="btn btn-lg btn-block btn-warning" href="#" onclick="showInfo('#info4')">硕士</a>
                        <a class="btn btn-lg btn-block btn-warning" href="#" onclick="showInfo('#info4')">本科</a>
                        <a class="btn btn-lg btn-block btn-warning" href="#" onclick="showInfo('#info4')">专科</a>
                        <a class="btn btn-lg btn-block btn-warning" href="#" onclick="showInfo('#info4')">其他</a>
                        <a class="btn btn-lg btn-block btn-warning" href="#" onclick="showInfo('#info2')">统计</a>
                    </div>
                    <ul class="list-group list-group-flush">
                    </ul>

                </div>

            </div>
        </div>
    </div>
</section>

<footer id="footer">

    <div class="footer-copyright">
        <div class="container">
            <div class="row">
                <div class="col-md-2">
                    <a class="logo" href="index.html">
                        <img src="/img/logo.png" alt="Template Eden">
                    </a>
                </div>
                <div class="col-md-5">
                    <p>&copy; Copyright 2017 QUAMAX版权所有.</p>
                </div>
                <div class="col-md-5">
                    <nav id="footer-menu">
                        <ul>
                            <li><a href="#">问题</a></li>
                            <li><a href="#">反馈</a></li>
                            <li><a href="#">帮助</a></li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
    </div>
</footer>


<div id="info1" style="overflow: scroll;border-radius:10px;position:relative;z-index:9999;width:800px;height:700px;margin: 0 auto;background: #FFFFFF;margin-top: -800px; padding-top:10px;padding-left: 20px;color: #9755d1;font-weight: bold;"hidden>
    <div class="table-responsive" style="width: 100%;height:500px;text-align: center;" id="table1">
        <table style="table-layout:fixed" class="table table-condensed table-bordered table-hover table-striped">
            <thead>
            <td >编号</td><td>姓名</td><td>性别</td><td>年龄</td><td>户籍</td>
            <td>学历</td><td>专业</td><td>等级</td><td>其他</td><td>操作</td>
            </thead>
            <tbody id="tbody1">
                <tr>
                    <td class="tdc">20130516181</td>
                    <td class="tdc">小明</td>
                    <td class="tdc">男</td>
                    <td class="tdc">28</td>
                    <td class="tdc">重庆万州</td>
                    <td class="tdc">在读博士</td>
                    <td class="tdc">计算机</td>
                    <td class="tdc">优秀(10%)</td>
                    <td class="tdc"></td>
                    <td class="tdc" style="color: #03B8FD; cursor: pointer;" id="btn1"  value="test" onclick="removeInfo('#btn1')">删除</td>
                </tr>

                <tr>
                    <td class="tdc">20130516182</td>
                    <td class="tdc">小红</td>
                    <td class="tdc">女</td>
                    <td class="tdc">28</td>
                    <td class="tdc">重庆沙坪坝</td>
                    <td class="tdc">在读博士</td>
                    <td class="tdc">计算机</td>
                    <td class="tdc">合格(40%)</td>
                    <td class="tdc"></td>
                    <td class="tdc" style="color: #03B8FD; cursor: pointer;" id="btn2"  value="test" onclick="popupDiv('pop-div');">删除</td>
                </tr>
            </tbody>
        </table>
        <button onclick="removeInfo1('#info1')" class="btn btn-large btn-primary" type="button">关闭窗口</button>
    </div>
</div>

<div  id="info2" style="overflow: scroll;border-radius:10px;position:relative;z-index:9999;width:800px;height:700px;margin: 0 auto;background: #FFFFFF;margin-top: -800px; padding-top:10px;padding-left: 20px;color: #9755d1;font-weight: bold;"hidden>
    <div class="table-responsive" style="width: 100%;height:500px;text-align: center;">
        <table style="table-layout:fixed" class="table table-condensed table-bordered table-hover table-striped">
            <thead>
            <td >博士总人数</td><td>优秀人数</td><td>合格人数</td><td>不合格人数</td>
            </thead>
            <tbody>
            <tr>
                <td class="tdc">2</td>
                <td class="tdc">1</td>
                <td class="tdc">1</td>
                <td class="tdc">0</td>
            </tr>
            </tbody>
            <thead>
            <td >硕士总人数</td><td>优秀人数</td><td>合格人数</td><td>不合格人数</td>
            </thead>
            <tbody>
            <tr>
                <td class="tdc">0</td>
                <td class="tdc">0</td>
                <td class="tdc">0</td>
                <td class="tdc">0</td>
            </tr>
            </tbody>
            <thead>
            <td >本科总人数</td><td>优秀人数</td><td>合格人数</td><td>不合格人数</td>
            </thead>
            <tbody>
            <tr>
                <td class="tdc">0</td>
                <td class="tdc">0</td>
                <td class="tdc">0</td>
                <td class="tdc">0</td>
            </tr>
            </tbody>
            <thead>
            <td >专科总人数</td><td>优秀人数</td><td>合格人数</td><td>不合格人数</td>
            </thead>
            <tbody>
            <tr>
                <td class="tdc">0</td>
                <td class="tdc">0</td>
                <td class="tdc">0</td>
                <td class="tdc">0</td>
            </tr>
            </tbody>
            <thead>
            <td >其他总人数</td><td>优秀人数</td><td>合格人数</td><td>不合格人数</td>
            </thead>
            <tbody>
            <tr>
                <td class="tdc">0</td>
                <td class="tdc">0</td>
                <td class="tdc">0</td>
                <td class="tdc">0</td>
            </tr>
            </tbody>
        </table>
        <button onclick="removeInfo1('#info2')" class="btn btn-large btn-primary" type="button">关闭窗口</button>
    </div>
</div>
<div id="overlay"></div>

<div id="info3" style="overflow: scroll;border-radius:10px;position:relative;z-index:9999;width:800px;height:700px;margin: 0 auto;background: #FFFFFF;margin-top: -800px; padding-top:10px;padding-left: 20px;color: #9755d1;font-weight: bold;"hidden>
    <div class="table-responsive" style="width: 100%;height:500px;text-align: center;" id="table2">
        <form>
        <table style="table-layout:fixed" class="table table-condensed table-bordered table-hover table-striped">
            <thead>
            <td >编号</td><td>姓名</td><td>性别</td><td>年龄</td><td>户籍</td>
            <td>学历</td><td>专业</td><td>等级</td><td>其他</td>
            </thead>
            <tbody id="tbody2">
            <tr id="tr1">
                <td class="tdc"><input style="height:inherit;width: inherit;" type="text" name="v1" id="v1" class="i1"></td>
                <td class="tdc"><input style="height:inherit;width: inherit;" type="text" name="v2" id="v2" class="i1"></td>
                <td class="tdc"><input style="height:inherit;width: inherit;" type="text" name="v3" id="v3" class="i1"></td>
                <td class="tdc"><input style="height:inherit;width: inherit;" type="text" name="v4" id="v4" class="i1"></td>
                <td class="tdc"><input style="height:inherit;width: inherit;" type="text" name="v5" id="v5" class="i1"></td>
                <td class="tdc"><input style="height:inherit;width: inherit;" type="text" name="v6" id="v6" class="i1"></td>
                <td class="tdc"><input style="height:inherit;width: inherit;" type="text" name="v7" id="v7" class="i1"></td>
                <td class="tdc"><input style="height:inherit;width: inherit;" type="text" name="v8" id="v8" class="i1"></td>
                <td class="tdc"><input style="height:inherit;width: inherit;" type="text" name="v9" id="v9" class="i1"></td>
            </tr>
            </tbody>
        </table>
        <button onclick="publish()" class="btn btn-large btn-primary" type="button">添加</button>
        <button onclick="removeInfo1('#info3')" class="btn btn-large btn-primary" type="button">取消</button>
        </form>
    </div>
</div>

<div id="info4" style="overflow: scroll;border-radius:10px;position:relative;z-index:9999;width:800px;height:700px;margin: 0 auto;background: #FFFFFF;margin-top: -800px; padding-top:10px;padding-left: 20px;color: #9755d1;font-weight: bold;"hidden>
    <div class="table-responsive" style="width: 100%;height:500px;text-align: center;" id="table3">
        <form>
            <table style="table-layout:fixed" class="table table-condensed table-bordered table-hover table-striped">
                <thead>
                <td >编号</td><td>姓名</td><td>性别</td><td>年龄</td><td>户籍</td>
                <td>学历</td><td>专业</td><td>等级</td><td>其他</td>
                </thead>
                <tbody id="tbody3">
                </tbody>
            </table>
            <button onclick="removeInfo1('#info4')" class="btn btn-large btn-primary" type="button">关闭窗口</button>
        </form>
    </div>
</div>

<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="/js/jquery.min.js"></script>
<script src="/js/bootstrap.min.js"></script>

<script type="text/javascript">
    $(function () {
        if($(window).width()>960){
            var tw = $('.triangles').width()/7+32;
            var ta = tw/2+22;
            $('.down-triangle').css('border-top',tw+'px solid rgba(0,0,0,0.8)').css('border-left',ta+'px solid transparent').css('border-right',ta+'px solid transparent');
            $('.up-triangle').css('border-bottom',tw+'px solid rgba(0,0,0,0.8)').css('border-left',ta+'px solid transparent').css('border-right',ta+'px solid transparent');
        }
        $('#wd-wrapper').sinusoid({
            minImgW: 80,
            maxImgW: 130,
            minImgAngle: -20,
            maxImgAngle: 20,
            leftFactor: 60,
            sinusoidFunction: {
                A: 70,
                T: 1700,
                P: 0
            }
        });


        $('a[href*=#]:not([href=#]):not([rel=crs])').click(function() {
            if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') && location.hostname == this.hostname) {
                var target = $(this.hash);
                target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
                if (target.length) {
                    $('html,body').animate({
                        scrollTop: target.offset().top
                    }, 1000);
                    return false;
                }
            }
        });
    });


    function removeInfo1(val) {
        $(val).hide(1000);
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

    function publish() {
        var v1=$("#v1").val();
        var v2=$("#v2").val();
        var v3=$("#v3").val();
        var v4=$("#v4").val();
        var v5=$("#v5").val();
        var v6=$("#v6").val();
        var v7=$("#v7").val();
        var v8=$("#v8").val();
        var v9=$("#v9").val();
        $btn1="#btn1";
        var v10="<td class='tdc' style='color: #03B8FD; cursor: pointer;' id='btn1'  value='test' onclick='removeInfo($btn1)'>删除</td>";
        var result="<tr> " +
                "<td class='tdc'>"+v1+"</td>"+
                "<td class='tdc'>"+v2+"</td>"+
                "<td class='tdc'>"+v3+"</td>"+
                "<td class='tdc'>"+v4+"</td>"+
                "<td class='tdc'>"+v5+"</td>"+
                "<td class='tdc'>"+v6+"</td>"+
                "<td class='tdc'>"+v7+"</td>"+
                "<td class='tdc'>"+v8+"</td>"+
                "<td class='tdc'>"+v9+"</td>"+v10+
                "</tr>";
        $("#tbody1").append(result);
        alert("添加成功!");
        removeInfo1("#info3");
    }
</script>
</body>
</html>
