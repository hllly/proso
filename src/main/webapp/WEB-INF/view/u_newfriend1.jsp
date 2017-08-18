<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
<html>
<head>
    <title>Home</title>
    <link href="/css/bootstrap.css" rel='stylesheet' type='text/css' />
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
    <!-- //grid-slider -->

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
<!-- start header_bottom -->
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
        <div class="clear"></div>
    </div>
</div>


<!-- end header_bottom -->
<!-- start menu -->
<div class="menu" id="menu">
    <div class="container">
        <div class="logo">
            <a href="index.html"><img src="/img/logo.png" alt=""/></a>
        </div>
        <div class="h_menu4"><!-- start h_menu4 -->
            <a class="toggleMenu" href="#">Menu</a>
            <ul class="nav">
                <li class="active"><a href="${pageContext.request.contextPath}/user/pindex?email=${email}">首页</a></li>
                <li><a href="#">好友</a></li>
                <%--<li><a href="trainers.html">消息</a></li>--%>
                <li><a href="trainers.html">邮箱</a></li>
                <li><a href="classes.html">职位</a></li>
                <li><a href="${pageContext.request.contextPath}/p_user/toP_record">职业档案</a></li>
                <li><a href="contact.html">个人中心</a></li>
            </ul>
            <script type="text/javascript" src="/js/nav.js"></script>
        </div><!-- end h_menu4 -->
        <div class="clear"></div>
    </div>
</div>


<!-- end menu -->
<div class="main">
    <div class="container">
        <!-- start content-top -->
        <div class="row content-top">
        </div>
    </div>
    <!-- end content-top -->
    <div class="container" >
        <div class="row content-middle">
            <div class="clear"></div>
        </div>
        <!-- end content-middle -->
        <div class="row about">
            <div class="col-md-12" >
                <h3 class="m_2">好友列表</h3>
                <div class="classes" style=" height:500px;overflow:scroll;">

                    <c:forEach items="${userList}" var="item" >
                        <div class="cardio_list">
                            <div class="cardio_sublist">
                                <ul class="cardio">
                                    <li><i class="clock"> </i><span id="${item.getEmail()}">${item.getEmail()}</span></li>
                                </ul>
                                <div class="social-media">
                                    <ul>
                                        <li> <span class="simptip-position-bottom simptip-movable" data-tooltip="添加好友">
                                            <%--<img src="/img/2.png" style="height:10px;width:10px;">--%>
                                            <a href="#"  id="test" target="_self" onclick="alert('添加成功!')"><img src="/img/添加好友.png" style="height:20px;width:20px;"> </a></span></li>
                                        <li><span class="simptip-position-bottom simptip-movable" data-tooltip="查看资料"><a href="#" target="_self" onclick="getInformation()"><img src="/img/查看资料.png" style="height:20px;width:25px;"></a> </span></li>
                                    </ul>
                                </div>
                                    <%--<div class="clear"></div>--%>
                            </div>
                            <p id="emailp" style="display: none;">${item.getEmail()}</p>
                        </div>
                    </c:forEach>

                    <%--<div class="clear"></div>--%>
                </div>
            </div>
            <div class="clear"></div>
        </div>
    </div>

    <div class="footer-top">
        <ul class="twitter_footer">
            <li>
                <i class="twt_icon"> </i><p><span class="m_6"></span></p>
                <div class="clear"></div>
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
                        <li><a href="#">博客</a></li>
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

    <div id="info" style="border-radius:10px;position:relative;z-index:9999;width:400px;height:600px;margin: 0 auto;background: #FFFFFF;margin-top: -1300px; padding-left: 80px;color: #9755d1;font-weight: bold;"hidden>
    </div>
    <div id="overlay"></div>
</div>

<script>
    function  toSendMessage(idval) {
        $("#online_hail").append("<p id='"+idval+"' onclick=getRecord('"+idval+"')>"+idval+"</p>");
    }

    function getRecord(idval){
        $.ajax({
            type: "GET",
            url: "ok.php",
            data: "writer="+$("#writer").val(),
            success: function(msg){
            }
        });
    }

    function getInformation() {
        var email=$("#emailp").text();
        var path="http://localhost:8080";
        $.ajax({
            url: path+"/user/info",
            type: "POST",
            dataType: "json",
            data: {
                "email": email,
                "p_name":"",
                "p_sex":"",
                "p_birth":"",
                "p_nation":"",
                "p_property":"",
                "p_nickname":"",
                "p_education":"",
                "p_graduateTime":"",
                "p_college":"",
                "p_major":"",
                "p_workTime":"",
                "p_skill":"",
                "p_employer":"",
                "p_other":""
            },
            async: false,
            success: function(data) {
                var result;
                $.each(data, function(index, element) {
                    var result1="<p>邮箱："+element["email"]+"</p>";var result2="<p>姓名："+element["p_name"]+"</p>";
                    var result3="<p>性别："+element["p_sex"]+"</p>";var result4="<p>生日："+element["p_birth"]+"</p>";
                    var result5="<p>民族："+element["p_nation"]+"</p>";var result6="<p>性质："+element["p_property"]+"</p>";
                    var result7="<p>昵称："+element["p_nickname"]+"</p>";var result8="<p>学历："+element["p_education"]+"</p>";
                    var result9="<p>毕业："+element["p_education"]+"</p>";var result10="<p>学校："+element["p_college"]+"</p>";
                    var result11="<p>专业："+element["p_major"]+"</p>";var result12="<p>工作年限："+element["p_workTime"]+"</p>";
                    var result13="<p>公司："+element["p_employer"]+"</p>";var result14="<p>擅长："+element["p_skill"]+"</p>";
                    var result15="<p>其他："+element["p_other"]+"</p>";var result16="<button class='btn' type='button' onclick='removeInfo()'>关闭</button>";
                    result=result1+result2+result3+result4+result5+result6+result6+result7+result8+result9+result10+result11+result12+result13+result14+result15+result16;
                    return false;
                });
                $("#info").html(result);
                $("#info").show();
                showOverlay();
            },
            error: function() {
                alert("信息查看失败.");
            }
        });
    }

    function removeInfo() {
        $("#info").hide(1000);
        hideOverlay();
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


    $('#file-fr').fileinput({
        language: 'fr',
        uploadUrl: '#',
        allowedFileExtensions : ['jpg', 'png','gif'],
    });
    $('#file-es').fileinput({
        language: 'es',
        uploadUrl: '#',
        allowedFileExtensions : ['jpg', 'png','gif'],
    });
    $("#file-0").fileinput({
        'allowedFileExtensions' : ['jpg', 'png','gif'],
    });
    $("#file-1").fileinput({
        uploadUrl: '#', // you must set a valid URL here else you will get an error
        allowedFileExtensions : ['jpg', 'png','gif'],
        overwriteInitial: false,
        maxFileSize: 1000,
        maxFilesNum: 10,
        //allowedFileTypes: ['image', 'video', 'flash'],
        slugCallback: function(filename) {
            return filename.replace('(', '_').replace(']', '_');
        }
    });
    /*
     $(".file").on('fileselect', function(event, n, l) {
     alert('File Selected. Name: ' + l + ', Num: ' + n);
     });
     */
    $("#file-3").fileinput({
        showUpload: false,
        showCaption: false,
        browseClass: "btn btn-primary btn-lg",
        fileType: "any",
        previewFileIcon: "<i class='glyphicon glyphicon-king'></i>"
    });
    $("#file-4").fileinput({
        uploadExtraData: {kvId: '10'}
    });
    $(".btn-warning").on('click', function() {
        if ($('#file-4').attr('disabled')) {
            $('#file-4').fileinput('enable');
        } else {
            $('#file-4').fileinput('disable');
        }
    });
    $(".btn-info").on('click', function() {
        $('#file-4').fileinput('refresh', {previewClass:'bg-info'});
    });
    /*
     $('#file-4').on('fileselectnone', function() {
     alert('Huh! You selected no files.');
     });
     $('#file-4').on('filebrowse', function() {
     alert('File browse clicked for #file-4');
     });
     */
    $(document).ready(function() {
        $("#test-upload").fileinput({
            'showPreview' : false,
            'allowedFileExtensions' : ['jpg', 'png','gif'],
            'elErrorContainer': '#errorBlock'
        });
        /*
         $("#test-upload").on('fileloaded', function(event, file, previewId, index) {
         alert('i = ' + index + ', id = ' + previewId + ', file = ' + file.name);
         });
         */
    });

</script>

</body>
</html>