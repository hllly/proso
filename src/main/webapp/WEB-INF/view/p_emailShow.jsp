<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
            <form>
                <div class="register-top-grid">
                    <div class="clearfix"> </div>
                    <a class="news-letter" href="#">
                        <label class="checkbox"></label>
                    </a>
                    <%--fadeInRight--%>

                    <h3>收件箱</h3>
                    <div style="overflow: scroll; height:500px;width:500px;margin:0 auto;">
                        <c:forEach items="${noReadEmailList}" var="item" >
                            <div>
                                <p>发送人</p>
                                <p>${item.getFrom()}</p>
                                <p>发送时间</p>
                                <p>${item.getSentDate()}</p>
                                <p>主题</p>
                                <p>${item.getSubject()}</p>
                                <p>内容</p>
                                <p>${item.getBodyText()}</p>
                            </div>
                        </c:forEach>
                    </div>
                    <%--<div class="wow " data-wow-delay="0.4s">--%>
                        <%--<span>收件人<label></label></span>--%>
                        <%--<input type="text" name="toEmail">--%>
                    <%--</div>--%>

                    <%--<h3>已读邮件</h3>--%>
                    <%--<div class="wow " data-wow-delay="0.4s">--%>
                        <%--<span>抄送人<label></label></span>--%>
                        <%--<input type="text" name="toCC">--%>
                    <%--</div>--%>
                    <%----%>
                    <%--<h3>已读邮件</h3>--%>
                    <%--<div style="overflow: scroll;">--%>
                        <%--${eadEmailList.size()}--%>
                        <%--<c:forEach items="${readEmailList}" var="item" >--%>
                            <%--<div>--%>
                                <%--<p>${item.getFrom()}</p>--%>
                                <%--<p>${item.getSubject()}</p>--%>
                                <%--<p>${item.getBodyText()}</p>--%>
                                <%--<p></p>--%>
                            <%--</div>--%>
                        <%--</c:forEach>--%>
                    <%--</div>--%>
                    <div class="clearfix"> </div>
                </div>

                <div class="clearfix"> </div>
                <div class="register-but">
                    <form>
                        <input type="submit" id="btn-submit" class="btn btn-send-message btn-md" value="提交" onclick="send()">
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
</script>
</body>
</html>
