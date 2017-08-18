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
        function forward() {
            window.location.href="${pageContext.request.contextPath}/user/index";
        }

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
                <li><a href="#">个人中心</a></li>
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
                <div class="bs-example bs-example-form" style="color:#63B8BD;">
                    <div class="clearfix"> </div>
                    <a class="news-letter" href="#">
                        <label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i></i>*</label>
                    </a>
                    <h3>账户信息</h3>
                    <div class="input-group">
                        <span class="input-group-addon" style="color: #63B8BD;font-weight: bold;">邮&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;箱</span>
                        <input type="text" name="email" readonly class="form-control" value="${recordDetail.getEmail()}">
                    </div>

                    <div class="input-group">
                        <span class="input-group-addon" style="color: #63B8BD;font-weight: bold;">姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名</span>
                        <input type="text" name="xingming"  class="form-control" value="${recordDetail.getP_name()}">
                    </div>

                    <div class="input-group">
                        <span class="input-group-addon" style="color: #63B8BD;font-weight: bold;">性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别</span>
                        <input type="text" name="xingbie"  class="form-control" value="${recordDetail.getP_sex()}">
                    </div>

                    <div class="input-group">
                        <span class="input-group-addon" style="color: #63B8BD;font-weight: bold;">出生日期</span>
                        <input type="text" name="chushengriqi"  class="form-control" value="${recordDetail.getP_birth()}">
                    </div>

                    <div class="input-group">
                        <span class="input-group-addon" style="color: #63B8BD;font-weight: bold;">民&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;族</span>
                        <input type="text" name="minzhu"  class="form-control" value="${recordDetail.getP_nation()}">
                    </div>

                    <div class="input-group">
                        <span class="input-group-addon" style="color: #63B8BD;font-weight: bold;">性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;质</span>
                        <input type="text" name="xingzhi"  class="form-control" value="${recordDetail.getP_property()}">
                    </div>

                    <div class="input-group">
                        <span class="input-group-addon" style="color: #63B8BD;font-weight: bold;">身&nbsp;&nbsp;份&nbsp;&nbsp;证</span>
                        <input type="text" name="shenfenzheng"  class="form-control" value="${recordDetail.getP_IDCard()}">
                    </div>

                    <div class="input-group">
                        <span class="input-group-addon" style="color: #63B8BD;font-weight: bold;">通信地址</span>
                        <input type="text" name="tongxindizhi"  class="form-control" value="${recordDetail.getP_address()}">
                    </div>

                    <br/>
                    <a class="news-letter" href="#">
                        <label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i></i>*</label>
                    </a>
                </div>
                <div class="bs-example bs-example-form" style="color:#63B8BD;">
                    <h3>修改密码</h3>
                    <div class="input-group">
                        <span class="input-group-addon" style="color: #63B8BD;font-weight: bold;">原&nbsp;&nbsp;&nbsp;&nbsp;密&nbsp;&nbsp;&nbsp;&nbsp;码</span>
                        <input type="password" name="xingming"  class="form-control" value="">
                    </div>
                    <div class="input-group">
                        <span class="input-group-addon" style="color: #63B8BD;font-weight: bold;">新&nbsp;&nbsp;&nbsp;&nbsp;密&nbsp;&nbsp;&nbsp;&nbsp;码</span>
                        <input type="password" name="p1"  id="p1" class="form-control" value="">
                    </div>

                    <div class="input-group">
                        <span class="input-group-addon" style="color: #63B8BD;font-weight: bold;">新密码确认</span>
                        <input type="password" name="p2"  id="p2" class="form-control" value="">
                    </div>
                    <div class="clearfix"> </div>
                    <a class="news-letter" href="#">
                        <label class="checkbox"><input type="checkbox" name="checkbox" checked=""></label>
                    </a>
                </div>

                <div class="clearfix"> </div>
                <div class="register-but">
                    <form>
                        <input type="button" id="btn-submit" class="btn btn-send-message btn-md" value="提交修改" onclick="register()">
                        <input type="reset" id="btn-cancle" class="btn btn-send-message btn-md" value="退出修改" onclick="register()">
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
        $p1=$("#p1").val();
        $p2=$("#p2").val();
        if($p1!=$p2){
            alert("新密码不一致!");
            return ;
        }
        else{
            var ajax=$.ajax({url:"${pageContext.request.contextPath}/p_user/alterPwd?email=${email}&pwd="+$p1,async:false});
        }
        alert("修改成功!");
        setTimeout(forward,5000);
    }
</script>
</body>
</html>

