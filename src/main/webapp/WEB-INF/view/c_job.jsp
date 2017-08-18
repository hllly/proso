<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/4/9
  Time: 9:57
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>CUCU注册</title>
    <link href="/css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
    <link href="/css/register_style.css" rel="stylesheet" type="text/css" media="all" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <link rel="stylesheet" href="/css/register_flexslider.css" type="text/css" media="screen" />
    <script src="/js/jquery.min.js"></script>
    <script src="/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/js/move-top.js"></script>
    <script type="text/javascript" src="/js/easing.js"></script>
    <style>
        .pop-box {
            z-index: 9999; /*这个数值要足够大，才能够显示在最上层*/
            margin-bottom: 3px;
            display: none;
            position: absolute;
            background: #FFFFFF;
            border-color: #6e8bde;
            border-style: hidden;
        }

        .pop-box h4 {
            color: #FFF;
            cursor:default;
            height: 18px;
            font-size: 14px;
            font-weight:bold;
            text-align: left;
            padding-left: 8px;
            padding-top: 4px;
            padding-bottom: 2px;
            background: #03B8FD repeat-x 0 0;
        }

        .pop-box-body {
            clear: both;
            margin: 4px;
            padding: 2px;
        }


        .mask {
            color:#C7EDCC;
            /*background-color:#C7EDCC;*/
            background-color:#4D606E;
            position:absolute;
            top:0px;
            left:0px;
            /*filter: Alpha(Opacity=60);*/
            opacity:0.5;/*其他，透明度50%*/
        }

        .tdc{
            overflow:hidden;
            white-space:nowrap;
            text-overflow:ellipsis;
        }

    </style>
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
                <li><a href="#">招聘职位</a></li>
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
        </div>
        <div class="table-responsive" style="width: 100%;height:500px;vertical-align: middle;">
            <table style="table-layout:fixed" class="table table-condensed table-bordered table-hover table-striped" id="para_table">
                <thead>
                <td >行业</td>
                <td>职位</td>
                <td>单位</td>
                <td>部门</td>
                <td>招聘类型</td>
                <td>薪资</td>
                <td>工作城市</td>
                <td>岗位要求</td>
                <td>职责描述</td>
                <td>发布时间</td>
                <td>操作</td>
                <td>操作</td>
                <td>操作</td>
                </thead>
                <tbody>
                <tr>
                    <td class="tdc" onclick="tdclick(this)">计算机/IT</td>
                    <td class="tdc" onclick="tdclick(this)">java工程师</td>
                    <td class="tdc" onclick="tdclick(this)">XX公司</td>
                    <td class="tdc" onclick="tdclick(this)">XX部门</td>
                    <td class="tdc" onclick="tdclick(this)">社会招聘</td>
                    <td class="tdc" onclick="tdclick(this)">10000-20000</td>
                    <td class="tdc" onclick="tdclick(this)">重庆</td>
                    <td class="tdc" onclick="tdclick(this)">熟练掌握java和java ee开发技术.</td>
                    <td class="tdc" onclick="tdclick(this)">负责XX产品后台开发.</td>
                    <td class="tdc" onclick="tdclick(this)">2017/05/01</td>
                    <td class="tdc" style="color: #03B8FD; cursor: pointer;" id="btnTest1"  value="test" onclick="deletetr(this)">删除职位</td>
                    <td class="tdc" style="color: #03B8FD; cursor: pointer;" id="btnTest3"  value="test" onclick="saveEdit()">保存修改</td>
                    <td class="tdc" style="color: #03B8FD; cursor: pointer;" id="btnTest2"  value="test">
                        <p class="popover-options" >
                            <a href="#" type="button" class="btn btn-warning" title="<h3>职位招聘进度</h3>"
                               data-container="body" data-toggle="popover" data-placement="left"
                               style="color:#03B8FD;margin-top:-10px;margin-left: -20px;border: none;background: #f5f5f5;" data-content="
		<h4>发布时间：2017/05/01</h4>
        <h4>已申请总人数：23<h4>
        <h4>简历筛选状态：筛选完毕</h4>
        <h4>面试状态：面试中</h4>
        <h4>面试轮数：初面</h4>
        <h4>预计结束时间：2017/05/30</h4>
        <h4>特殊情况：暂无</h4>">
                                查看进度</a>
                        </p>
                        </td>
                </tr>
                </tbody>
            </table>
            <button class="btn btn-default" onclick="addtr()">添加职位</button>
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


<script>
    $(function () { $('.popover-show').popover('show');});
    $(function () { $('.popover-hide').popover('hide');});
    $(function () { $('.popover-destroy').popover('destroy');});
    $(function () { $('.popover-toggle').popover('toggle');});
    $(function () { $(".popover-options a").popover({html : true });});

    function register() {
        var form = document.forms[0];
        form.action = "${pageContext.request.contextPath}/user/register";
        form.method = "post";
        form.submit();
    }

    function show() {
        alert("您正在申请该职位");
    }

    function saveEdit() {
        alert("保存成功!");
    }


    function popupDiv(div_id) {
        var div_obj = $("#"+div_id);
        var windowWidth = document.body.clientWidth;
        var windowHeight = document.body.clientHeight;
        var popupHeight = div_obj.height();
        var popupWidth = div_obj.width();
        //添加并显示遮罩层
        $("<div id='mask'></div>").addClass("mask")
                .width(windowWidth + document.body.scrollWidth)
                .height(windowHeight + document.body.scrollHeight)
                .click(function() {hideDiv(div_id); })
                .appendTo("body")
                .fadeIn(200);
        div_obj.css({"position": "absolute"})
                .animate({left: windowWidth/2-popupWidth/2,
                    top: windowHeight/2-popupHeight/2, opacity: "show" }, "slow");

    }

    function hideDiv(div_id) {
        $("#mask").remove();
        $("#" + div_id).animate({left: 0, top: 0, opacity: "hide" }, "slow");
    }

    function edit() {
        window.location.href="${pageContext.request.contextPath}/p_user/toP_record?email=${email}";
    }

    function save_para_table(){

        var tableinfo = gettableinfo();
        alert(tableinfo);


    }
    //get table infomation
    function gettableinfo(){
        var key = "";
        var value = "";
        var tabledata = "";
        var table = $("#para_table");
        var tbody = table.children();
        var trs = tbody.children();
        for(var i=1;i<trs.length;i++){
            var tds = trs.eq(i).children();
            for(var j=0;j<tds.length;j++){
                if(j==0){
                    if(tds.eq(j).text()==null||tds.eq(j).text()==""){
                        return null;
                    }
                    key = "key\":\""+tds.eq(j).text();
                }
                if(j==1){
                    if(tds.eq(j).text()==null||tds.eq(j).text()==""){
                        return null;
                    }
                    value = "value\":\""+tds.eq(j).text();
                }
            }
            if(i==trs.length-1){
                tabledata += "{\""+key+"\",\""+value+"\"}";
            }else{
                tabledata += "{\""+key+"\",\""+value+"\"},";
            }
        }
        tabledata = "["+tabledata+"]";
        return tabledata;
    }

    function tdclick(tdobject){
        var td=$(tdobject);
        td.attr("onclick", "");
        //1,取出当前td中的文本内容保存起来
        var text=td.text();
        //2,清空td里面的内容
        td.html(""); //也可以用td.empty();
        //3，建立一个文本框，也就是input的元素节点
        var input=$("<input>");
        //4，设置文本框的值是保存起来的文本内容
        input.attr("value",text);
        input.bind("blur",function(){
            var inputnode=$(this);
            var inputtext=inputnode.val();
            var tdNode=inputnode.parent();
            tdNode.html(inputtext);
            tdNode.click(tdclick);
            td.attr("onclick", "tdclick(this)");
        });
        input.keyup(function(event){
            var myEvent =event||window.event;
            var kcode=myEvent.keyCode;
            if(kcode==13){
                var inputnode=$(this);
                var inputtext=inputnode.val();
                var tdNode=inputnode.parent();
                tdNode.html(inputtext);
                tdNode.click(tdclick);
            }
        });

        //5，将文本框加入到td中
        td.append(input);
        var t =input.val();
        input.val("").focus().val(t);
//              input.focus();

        //6,清除点击事件
        td.unbind("click");
    }
    function addtr(){
        var table = $("#para_table");
        var tr= $(
                        "<tr>" +
                        "<td  onclick='tdclick(this)'>"+"</td>" +
                        "<td  onclick='tdclick(this)'>"+"</td>" +
                        "<td  onclick='tdclick(this)'>"+"</td>" +
                        "<td  onclick='tdclick(this)'>"+"</td>" +
                        "<td  onclick='tdclick(this)'>"+"</td>" +
                        "<td  onclick='tdclick(this)'>"+"</td>" +
                        "<td  onclick='tdclick(this)'>"+"</td>" +
                        "<td  onclick='tdclick(this)'>"+"</td>" +
                        "<td  onclick='tdclick(this)'>"+"</td>" +
                        "<td  onclick='tdclick(this)'>"+"</td>" +
                        "<td class='tdc' style='color: #03B8FD; cursor: pointer;' id='btnTest1'  value='test' onclick='deletetr(this)'>删除职位</td>"+
                        "<td class='tdc' style='color: #03B8FD; cursor: pointer;' id='btnTest3'  value='test' onclick='saveEdit()'>保存修改</td>"+
                        "<td class='tdc' style='color: #03B8FD; cursor: pointer;' id='btnTest2'  value='test' onclick='show()'>查看进度</td>"
                        );
        table.append(tr);
    }
    function deletetr(tdobject){
        var td=$(tdobject);
        td.parents("tr").remove();
    }


</script>
</body>
</html>
