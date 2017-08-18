<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
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

    <script src="/js/fileinput.min.js"></script>
    <link rel="stylesheet" href="/css/fileinput.min.css"/>

    <script type="text/javascript">
        function forward() {
            <%--//window.location.href="${pageContext.request.contextPath}/email/showEmail";--%>
        }
        jQuery(document).ready(function($) {
            if("${flag}"=="1"){ setTimeout("forward()",5000); }
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
<div class="header">
    <div class="head-nav">
        <div class="container">
            <span class="menu">Menu</span>
            <ul class="cl-effect-7">
                <li><a href="${pageContext.request.contextPath}/user/index">首页</a></li>
                <li><a href="#">收件箱</a></li>
                <li><a href="#">新邮件</a></li>
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
<!-- register -->
<div class="main-1">
    <div class="container">
        <div class="register">
            <form id="emailForm" action="${pageContext.request.contextPath}/email/sendEmail" method="post" style="color: #63B8BD;font-weight: bold;">
                <div class="bs-example bs-example-form" style="color: #63B8BD;font-weight: bold;">
                    <div class="clearfix"> </div>
                    <a class="news-letter" href="#">
                        <label class="checkbox"></label>
                    </a>
                    <div class="input-group">
                        <span class="input-group-addon" style="color: #63B8BD;font-weight: bold;">收&nbsp;&nbsp;件&nbsp;&nbsp;人</span>
                        <input type="text" name="toEmail" class="form-control" placeholder="@">
                    </div>
                    <div class="input-group">
                        <span class="input-group-addon" style="color: #63B8BD;font-weight: bold;">抄&nbsp;&nbsp;送&nbsp;&nbsp;人</span>
                        <input type="text" name="toCC" class="form-control" placeholder="@">
                    </div>
                    <div class="input-group">
                        <span class="input-group-addon" style="color: #63B8BD;font-weight: bold;">主&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;题</span>
                        <input type="text" align="subject" class="form-control" name="" placeholder="@">
                    </div>
                    <div class="input-group">
                        <span class="input-group-addon" style="color: #63B8BD;font-weight: bold;">重要级别</span>
                        <select class="form-control" name="critical">
                            <option>critical</option>
                            <option>high</option>
                            <option>middle</option>
                            <option>low</option>
                        </select>
                    </div>

                    <br/>
                    <br/>
                    <div class="wow " data-wow-delay="0.4s" style="width: inherit;">
                        <span>正文<label></label></span><br/><br/>
                        <textarea class="form-control" rows="10" name="body"></textarea>
                    </div>
                    <br/>
                    <br/>
                    <%--<div class="wow " data-wow-delay="0.4s" style="width: 900px;">--%>
                    <button style="margin-top:350px;margin-left:-5px;position: absolute;opacity: 0.0;width:70px;height:50px;" id="submitButton" onclick="send()">提交</button>
                    <%--</div>--%>
                    <div class="wow " data-wow-delay="0.4s" style="width: 900px;">
                        <span>附件<label></label></span><br/>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>

<%--start--%>
<div class="container kv-main" style="margin-top:-100px;">
    <form enctype="multipart/form-data">
        <hr>
        <div class="form-group">
            <input id="file-4" type="file" class="file" data-upload-url="#">
        </div>
        <hr>
        <div class="form-group">
            <button class="btn btn-primary" onclick="send1()">发送</button>
            <button class="btn btn-default" type="reset">清除</button><span style="color:red;">${requestScope.result}</span>
        </div>
    </form>
    <hr>
    <br>
</div>
<%--end--%>
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

<script>


    function send() {
        var form = document.forms[0];
        form.action = "${pageContext.request.contextPath}/email/sendEmail";
        form.method = "post";
        form.submit();
    }

    function send1(){
        $("#submitButton").submit();
    }

</script>
</body>
</html>
