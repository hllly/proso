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

<!-- end header_bottom -->
<!-- start menu -->
<div class="menu" id="menu">
    <div style="margin-top:50px;">

    </div>
    <div class="container">
        <div class="logo">
            <a href="index.html"><img src="/img/logo.png" alt=""/></a>
        </div>
    </div>
</div>

<div class="getting-started getting-started-2" style="margin-top:200px;background: #3896E0;">
    <div class="container">
        <div class="row">
            <div class="col-md-5 to-animate-2">
                <div class="call-to-action text-right" >
                    <a href="${pageContext.request.contextPath}/u_user/abJob?email=${email}" class="sign-up">招聘会</a>
                </div>
            </div>
            <div class="col-md-5 to-animate-2">
                <div class="call-to-action text-right" >
                    <a href="${pageContext.request.contextPath}/u_user/abPerson?email=${email}" class="sign-up">人才库</a>
                </div>
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
