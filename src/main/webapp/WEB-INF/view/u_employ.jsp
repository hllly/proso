<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/2/17
  Time: 20:58
  To change this template use File | Settings | File Templates.
--%>
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
    <link href="/css/style_emp.css" rel='stylesheet' type='text/css' />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!--<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />-->
    <script src="/js/jquery.min.js"></script>
    <script src="/js/jquery.cookie.js"></script>
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <script type="text/javascript" src="/js/bootstrap.js"></script>
    <script type="text/javascript" src="/js/move-top.js"></script>
    <script type="text/javascript" src="/js/easing.js"></script>
    <script type="text/javascript">
        jQuery(document).ready(function($) {
            $(".scroll").click(function(event){
                event.preventDefault();
                $('html,body').animate({scrollTop:$(this.hash).offset().top},1200);
            });
            $.cookie("email",${requestScope.email}, { expires: 7});
        });
    </script>
    <!-- grid-slider -->
    <script type="text/javascript" src="/js/jquery.mousewheel.js"></script>
    <script type="text/javascript" src="/js/jquery.contentcarousel.js"></script>
    <script type="text/javascript" src="/js/jquery.easing.1.3.js"></script>
    <!-- //grid-slider -->
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
        <%--<div class="clear"></div>--%>
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
            <a class="toggleMenu" href="#">导航</a>
            <ul class="nav">
                <li class="active"><a href="index.html">首页</a></li>
                <li><a href="about.html">好友</a></li>
                <%--<li><a href="trainers.html">消息</a></li>--%>
                <li><a href="trainers.html">企业邮箱</a></li>
                <li><a href="${pageContext.request.contextPath}/c_user/toJob?email="+${requestScope.email}>企业职位</a></li>
                <li><a href="">招聘管理</a></li>
                <li><a href="${pageContext.request.contextPath}/c_user/toC_record?="+${requestScope.email}>企业档案</a></li>
                <li><a href="contact.html">企业中心</a></li>
            </ul>
            <script type="text/javascript" src="/js/nav.js"></script>
        </div><!-- end h_menu4 -->
        <%--<div class="clear"></div>--%>
    </div>
</div>


<div class="founder">
    <div class="container">
        <h3>FOUNDED IN 2010,</h3>
        <h4>OUR CHARITY HAS OVER 100 DONARS</h4>
        <P>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque
            corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui
            officia deserunt mollitia animi, id est laborum et dolorum fuga.</P>
        <a class="hvr-shutter-in-horizontal" href="#">Read More</a>
    </div>
</div>
<!-- founder -->
<!-- deffence -->
<div class="deffence">
    <div class="container">
        <div class="col-md-4 deffence-rgt">
            <div class="deffence-left">
                <img src="images/9.png" class="img-responsive" alt=""/>
                <h3>Adipisicing</h3>
                <p>Dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitau.</p>
            </div>
        </div>
        <div class="col-md-4 deffence-rgt">
            <div class="deffence-left">
                <img src="images/10.png" class="img-responsive" alt=""/>
                <h3>Consectetur</h3>
                <p>Dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitau.</p>
            </div>
        </div>
        <div class="col-md-4 deffence-rgt">
            <div class="deffence-left">
                <img src="images/11.png" class="img-responsive" alt=""/>
                <h3>Incididunt </h3>
                <p>Dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitau.</p>
            </div>
        </div>
        <div class="clearfix"> </div>
    </div>
</div>

    </div>
    <div class="footer-top">
        <ul class="twitter_footer">
            <li>
                <i class="twt_icon"> </i><p><span class="m_6"></span></p>
                <%--<div class="clear"></div>--%>
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
                        <li><a href="#">Blog</a></li>
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
</div>


</body>
</html>