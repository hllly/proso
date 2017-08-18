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
            <form style="color: #63B8BD;">
                <div class="bs-example bs-example-form">
                    <div class="clearfix"> </div>
                    <a class="news-letter" href="#">
                        <label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i></i>*</label>
                    </a>
                    <h3>个人信息</h3>

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

                </div>
                <div class="clearfix"> </div>
                <div class="register-but">
                    <form>
                        <input type="submit" id="btn-submit" class="btn btn-send-message btn-md" value="保存修改" onclick="register()"><span style="color: #449d44;">${flag}</span>
                        <div class="clearfix"> </div>
                    </form>
                </div>
            </form>

            <br/>

            <form style="color: #63B8BD;">
                <div class="bs-example bs-example-form">
                    <div class="clearfix"> </div>
                    <a class="news-letter" href="#">
                        <label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i></i>*</label>
                    </a>
                    <h3>个人简历</h3>

                    <div class="input-group">
                        <span class="input-group-addon" style="color: #63B8BD;font-weight: bold;">最高学历</span>
                        <input type="text" name="xueli"  class="form-control" value="${doc.getP_resume().getP_education()}">
                    </div>

                    <div class="input-group">
                        <span class="input-group-addon" style="color: #63B8BD;font-weight: bold;">毕业时间</span>
                        <input type="text" name="xueli"  class="form-control" value="${doc.getP_resume().getP_graduateTime()}">
                    </div>

                    <div class="input-group">
                        <span class="input-group-addon" style="color: #63B8BD;font-weight: bold;">学&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;校</span>
                        <input type="text" name="xuexiao"  class="form-control" value="${doc.getP_resume().getP_college()}">
                    </div>

                    <div class="input-group">
                        <span class="input-group-addon" style="color: #63B8BD;font-weight: bold;">技&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;能</span>
                        <input type="text" name="jineng"  class="form-control" value="${doc.getP_resume().getP_skill()}">
                    </div>

                    <div class="input-group">
                        <span class="input-group-addon" style="color: #63B8BD;font-weight: bold;">工作经验</span>
                        <input type="text" name="gongzuoshijian"  class="form-control" value="${doc.getP_resume().getP_workTime()}">
                    </div>

                    <div class="input-group">
                        <span class="input-group-addon" style="color: #63B8BD;font-weight: bold;">公&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;司</span>
                        <input type="text" name="gongsi"  class="form-control" value="XX公司">
                    </div>

                    <div class="input-group">
                        <span class="input-group-addon" style="color: #63B8BD;font-weight: bold;">职&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;责</span>
                        <input type="text" name="zhize"  class="form-control" value="${doc.getP_resume().getP_other()}">
                    </div>

                    <div class="input-group">
                        <span class="input-group-addon" style="color: #63B8BD;font-weight: bold;">专&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;业</span>
                        <input type="text" name="zhuanye"  class="form-control" value="${doc.getP_resume().getP_major()}">
                    </div>

                </div>
                <div class="clearfix"> </div>
                <div class="register-but">
                    <form>
                        <input type="submit" id="btn-submit" class="btn btn-send-message btn-md" value="保存修改" onclick="registertwo()"><span>${flag1}</span>
                        <%--<input type="submit" value="保存修改" onclick="registertwo()"><span>${flag1}</span>--%>
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
                    <h3>简历文档</h3>
                </div>
                <form role="form">
                    <div class="form-group">
                        <textarea class="form-control" rows="30" readonly >${doc.getDoc()}</textarea>
                    </div>
                </form>
                <div class="clearfix"> </div>
                <div style="margin: 0 auto;">
                    <form class="form-inline" role="form"  action="${pageContext.request.contextPath}/user/fileUpLoad" method="post" enctype="multipart/form-data">
                        <div class="form-group">
                            <label class="sr-only" for="name">名称</label>
                            <input type="text" class="form-control" id="name" placeholder="请输入名称">
                        </div>
                        <div  class="form-group">
                            <label class="sr-only" for="inputfile">文件输入</label>
                            <input type="file" id="inputfile" class="btn btn-default file" name="file" value="resume">
                            <input type="text" name="email2" class="btn btn-default file" value="${email}" style="display: none;"/>
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
        form.action = "${pageContext.request.contextPath}/p_user/to_SavePerson";
        form.method = "post";
        form.submit();
    }

    function registertwo() {
        var form = document.forms[3];
        form.action = "${pageContext.request.contextPath}/p_user/to_SaveRecord";
        form.method = "post";
        form.submit();
    }
</script>
</body>
</html>
