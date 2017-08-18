<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false"%>
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
                <li><a href="#">职业档案</a></li>
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
        <%--<div class="register">--%>
        <form>
            <div class="bs-example bs-example-form" style="color:#63B8BD;">
                <div class="clearfix"> </div>
                <a class="news-letter" href="#">
                    <label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i></i>*</label>
                </a>
                <h3>基本信息</h3>

                <div class="input-group">
                    <span class="input-group-addon" style="color: #63B8BD;font-weight: bold;">院校邮箱</span>
                    <input type="text" name="email" readonly class="form-control" value="${recordDetail.getU_email()}">
                </div>

                <div class="input-group">
                    <span class="input-group-addon" style="color: #63B8BD;font-weight: bold;">院校名称</span>
                    <input type="text" name="mingcheng"  class="form-control" value="${recordDetail.getU_name()}">
                </div>

                <div class="input-group">
                    <span class="input-group-addon" style="color: #63B8BD;font-weight: bold;">所在城市</span>
                    <input type="text" name="city"  class="form-control" value="${recordDetail.getU_city()}">
                </div>

                <div class="input-group">
                    <span class="input-group-addon" style="color: #63B8BD;font-weight: bold;">创办时间</span>
                    <input type="text" name="time"  class="form-control" value="${recordDetail.getU_birth()}">
                </div>

                <div class="input-group">
                    <span class="input-group-addon" style="color: #63B8BD;font-weight: bold;">院校性质</span>
                    <input type="text" name="xingzhi"  class="form-control" value="${recordDetail.getU_property()}">
                </div>

                <div class="input-group">
                    <span class="input-group-addon" style="color: #63B8BD;font-weight: bold;">院校级别</span>
                    <input type="text" name="jibie"  class="form-control" value="${recordDetail.getU_class()}">
                </div>

                <div class="input-group">
                    <span class="input-group-addon" style="color: #63B8BD;font-weight: bold;">上级部门</span>
                    <input type="text" name="super"  class="form-control" value="${recordDetail.getU_super()}">
                </div>

            </div>
            <div class="clearfix"> </div>
            <div class="register-but">
                <form>
                    <input type="submit" id="btn-submit" class="btn btn-send-message btn-md" value="保存修改" onclick="register()"><span style="color: #449d44;">${flag}</span>
                    <div class="clearfix"> </div>
                </form>
            </div>
        </form>

        <form>
            <div class="register-top-grid">
                <div class="clearfix"> </div>
                <a class="news-letter" href="#">
                    <label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i></i>*</label>
                </a>
                <h3>档案文档</h3>
            </div>
            <form role="form">
                <div class="form-group">
                    <textarea class="form-control" rows="30" readonly >${doc.getDoc()}</textarea>
                </div>
            </form>
            <div class="clearfix"> </div>
            <div style="margin: 0 auto;">
                <form class="form-inline" role="form"  action="${pageContext.request.contextPath}/user/fileUpLoadU" method="post" enctype="multipart/form-data">
                    <div class="form-group">
                        <label class="sr-only" for="name">名称</label>
                        <input type="text" class="form-control" id="name" placeholder="请输入名称">
                    </div>
                    <div  class="form-group">
                        <label class="sr-only" for="inputfile">文件输入</label>
                        <input type="file" id="inputfile" name="file" value="resume">
                        <input type="text" name="email2" value="${email}" style="display: none;"/>
                    </div>
                    <button type="submit" class="btn btn-default">提交新简历</button><span style="color: firebrick;">${flag2}</span>
                </form>
            </div>
        </form>
        <%--</div>--%>
    </div>
    <!-- register -->
    <!-- footer -->
    <br/><br/>
    <div class="footer">
        <div class="container">
            <div class="clearfix"> </div>
            <p>Copyright &copy; 2017.Company CUCU 保留所有权利.CUCU. </p>
        </div>
        <a href="#" id="toTop" style="display: block;"><span id="toTopHover" style="opacity: 0;"></span> <span id="toTopHover" style="opacity: 0;"> </span></a>
    </div>
    <!-- footer -->
</div>
<script>
    function register() {
        var form = document.forms[0];
        form.action = "${pageContext.request.contextPath}/p_user/to_SaveUniversity";
        form.method = "post";
        form.submit();
    }

    function registertwo() {
        var form = document.forms[3];
        form.action = "${pageContext.request.contextPath}/p_user/to_SaveURecord";
        form.method = "post";
        form.submit();
    }
</script>
</body>
</html>
