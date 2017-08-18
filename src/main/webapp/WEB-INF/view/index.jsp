<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>cucu职业社交平台</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Free HTML5 Template by FREEHTML5.CO" />
    <meta name="keywords" content="free html5, free template, free bootstrap, html5, css3, mobile first, responsive" />
    <meta name="author" content="FREEHTML5.CO" />
    <meta property="og:title" content=""/>
    <meta property="og:image" content=""/>
    <meta property="og:url" content=""/>
    <meta property="og:site_name" content=""/>
    <meta property="og:description" content=""/>
    <meta name="twitter:title" content="" />
    <meta name="twitter:image" content="" />
    <meta name="twitter:url" content="" />
    <meta name="twitter:card" content="" />

    <link rel="shortcut icon" href="favicon.ico">
    <link rel="stylesheet" href="/css/animate.css">
    <link rel="stylesheet" href="/css/icomoon.css">
    <link rel="stylesheet" href="/css/simple-line-icons.css">
    <link rel="stylesheet" href="/css/bootstrap.css">
    <link rel="stylesheet" href="/css/owl.carousel.min.css">
    <link rel="stylesheet" href="/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="/css/style.css">
    <script src="/js/modernizr-2.6.2.min.js"></script>
    <script src="/js/respond.min.js"></script>
</head>
<body style='background: url("/img/back1.png") repeat;'>

<div class="getting-started getting-started-2">
    <div class="container">
        <div class="row">
            <div class="col-md-6 to-animate">
                <h3>从这里开启新的职业生涯</h3>
                <p>
                    在这里您可以获得更丰富的行业人才资讯，您可以获得更及时的行业人才动态，
                    或者您可以尝试新的机会，当然您也可以和志同道合的朋友亲密沟通。
                </p>
            </div>
            <div class="col-md-6 to-animate-2">
                <div class="call-to-action text-right">
                    <a href="${pageContext.request.contextPath}/user/toRegister" class="sign-up">免费注册</a>
                </div>
            </div>
        </div>
    </div>
</div>

<div id="fh5co-footer" role="contentinfo">
    <div class="container">
        <div class="row">
            <div class="col-md-4 to-animate">
                <h3 class="section-title">关于我们</h3>
                <p>
                    我们是一家致力于让企业和人才之间的信息交流更加顺畅，
                    让企业和人才获得双赢的平台。我们努力让您的职业之路更加通畅宽阔，
                    让您的企业获取最佳人才取得更大发展。
                </p>
                <p class="copy-right">&copy; 2017 cucu.   <br>保留所有权利. <br>
                </p>
            </div>

            <div class="col-md-4 to-animate">
                <h3 class="section-title">地址</h3>
                <ul class="contact-info">
                    <%--<li><i class="icon-map-marker"></i>重庆市沙坪坝区大学城重庆师范大学</li>--%>
                    <%--<li><i class="icon-phone"></i>+ 13896228864</li>--%>
                    <%--<li><i class="icon-envelope"></i><a href="#">1757853547@qq.com</a></li>--%>
                    <li>重庆市沙坪坝区大学城重庆师范大学</li>
                    <li>+ 13896228864</li>
                    <li><a href="#">1757853547@qq.com</a></li>
                </ul>
                <h3 class="section-title">分享</h3>
                <%--<ul class="social-media">--%>
                    <%--<li><a href="#" class="facebook"><i class="icon-facebook"></i></a></li>--%>
                    <%--<li><a href="#" class="twitter"><i class="icon-twitter"></i></a></li>--%>
                    <%--<li><a href="#" class="dribbble"><i class="icon-dribbble"></i></a></li>--%>
                    <%--<li><a href="#" class="github"><i class="icon-github-alt"></i></a></li>--%>
                <%--</ul>--%>
            </div>
            <div class="col-md-4 to-animate">
                <h3 class="section-title">快速登陆</h3>
                <form class="contact-form">

                    <div class="form-group">
                        <label for="email" class="sr-only"></label>
                        <input type="email" class="form-control" id="email" placeholder="邮箱" name="email">
                    </div>
                    <div class="form-group">
                        <label for="password" class="sr-only"></label>
                        <input type="password" class="form-control" id="password" placeholder="密码" name="password">
                    </div>

                    <div class="form-group">
                        <select class="form-control" name="type">
                            <option>个人</option>
                            <option>企业</option>
                            <option>校方</option>
                        </select>
                    </div>

                    <div class="form-group">
                        <input type="submit" id="btn-submit" class="btn btn-send-message btn-md" value="登陆" onclick="login()">
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<script src="/js/jquery.min.js"></script>
<script src="/js/jquery.easing.1.3.js"></script>
<script src="/js/bootstrap.min.js"></script>
<script src="/js/jquery.waypoints.min.js"></script>
<script src="/js/jquery.stellar.min.js"></script>
<script src="/js/owl.carousel.min.js"></script>
<script src="/js/main.js"></script>
<script>
    function login() {
        var form = document.forms[0];
        form.action = "${pageContext.request.contextPath}/user/login";
        form.method = "post";
        form.submit();
    }
</script>

</body>
</html>
