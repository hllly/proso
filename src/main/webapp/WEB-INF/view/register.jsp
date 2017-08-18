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
                <li><a href="#">快速注册</a></li>
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
            <form>
                <div class="register-top-grid">
                    <div class="clearfix"> </div>
                    <a class="news-letter" href="#">
                        <label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i></i>*</label>
                    </a>
                    <h3>必填信息</h3>
                    <div class="wow fadeInRight" data-wow-delay="0.4s">
                        <span>邮箱<label>*</label></span>
                        <input type="text" name="email">
                    </div>
                    <div class="wow fadeInRight" data-wow-delay="0.4s">
                        <span>电话<label>*</label></span>
                        <input type="text" name="phone">
                    </div>
                    <div class="wow fadeInRight" data-wow-delay="0.4s">
                        <span>企业代码<label>*企业用户必填,其他用户勿填.</label></span>
                        <input type="text" name="c_number">
                    </div>
                    <div class="wow fadeInRight" data-wow-delay="0.4s">
                        <span>院校代码<label>*院校用户必填,其他用户勿填.</label></span>
                        <input type="text" name="u_number">
                    </div>
                    <div class="clearfix"> </div>
                    <a class="news-letter" href="#">
                        <label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i></i>*</label>
                    </a>
                </div>

                <div class="register-top-grid">
                    <h3>密码设置</h3>
                    <div class="wow fadeInRight" data-wow-delay="0.4s">
                        <span>密码<label>*</label></span>
                        <input type="password" name="password">
                    </div>
                    <div class="wow fadeInRight" data-wow-delay="0.4s">
                        <span>密码确认<label>*</label></span>
                        <input type="password">
                    </div>
                    <div class="clearfix"> </div>
                    <a class="news-letter" href="#">
                        <label class="checkbox"><input type="checkbox" name="checkbox" checked=""></label>
                    </a>
                </div>

                <div class="register-top-grid">
                    <h3>非必填信息</h3>
                    <div class="wow fadeInRight" data-wow-delay="0.4s">
                        <span>姓名<label></label></span>
                        <input type="text" name="userName">
                    </div>
                    <div class="wow fadeInRight" data-wow-delay="0.4s">
                        <span>昵称<label></label></span>
                        <input type="text" name="nickname">
                    </div>
                </div>

                <div class="clearfix"> </div>
                <div class="register-but">
                    <form>
                        <input type="submit" id="btn-submit" class="btn btn-send-message btn-md" value="提交" onclick="register()">
                        <div class="clearfix"> </div>
                    </form>
                </div>

            </form>
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

<script>
    function register() {
        var form = document.forms[0];
        form.action = "${pageContext.request.contextPath}/user/register";
        form.method = "post";
        form.submit();
    }
</script>
</body>
</html>
