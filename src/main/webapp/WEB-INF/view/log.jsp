<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/4/22
  Time: 21:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        #log1{ width:1200px;margin:0 auto;border-style: solid;border-color: #00b3ee;text-align: left;padding: 20px;overflow: scroll;border-width: 1px; }
        #log2{ width:1200px;margin:0 auto;border-style: solid;border-color: #00b3ee;text-align: left;padding: 20px;overflow: scroll;border-width: 1px; }
    </style>
</head>
<body style='background: url("/img/back1.png") repeat;'>
<br/>
<br/>
<br/>
<br/>
<h2 style="margin: 0 auto;color:#00b488;text-align: center;">系统日志</h2>
<div id="log1" style="font-weight: 300;">
    ${log}
</div>
<br/>
<br/>
<b/>
<h2 style="margin: 0 auto;color:#00b488;text-align: center;">框架日志</h2>
<div id="log2" style="font-weight: 300;">
    ${bslog}
</div>
</body>
</html>
