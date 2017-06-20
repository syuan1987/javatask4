<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Map" %>
<%@ page import="com.ptteng.entity.Vocation" %><%--
  Created by IntelliJ IDEA.
  User: litao
  Date: 2017/3/1
  Time: 上午10:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>无标题文档</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport" charset="UTF-8">
    <link rel="stylesheet" href="http://apps.bdimg.com/libs/bootstrap/3.3.4/css/bootstrap.min.css">
    <script src="http://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
    <script src="http://apps.bdimg.com/libs/bootstrap/3.3.4/js/bootstrap.min.js"></script>
    <link href="css/t11.css" rel="stylesheet" type="text/css">
    <link href="css/base.css" rel="stylesheet" type="text/css">
</head>

<body>
<header>
    <div class="top container">
        <p class="hidden-xs">客服热线：010-594-78634</p>
        <img src="imges/12321.gif">
    </div>

    <div role="navigation" class="nav1 navbar navbar-default">
        <div class="container">
            <div class="header-logo">
                <div class="logo-middle"><img src="imges/logo.png"></div>
            </div>
            <div class="navbar-header marginTop">
                <button data-target="#example-navbar-collapse" data-toggle="collapse" class="navbar-toggle"
                        type="button">
                    <span class="sr-only">切换导航</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>

            <div id="example-navbar-collapse" class=" collapse navbar-collapse">
                <ul class="nav navbar-nav">
                    <a href="/task4/home">
                        <li>首 页</li>
                    </a>
                    <a href="">
                        <li class="border">职 业</li>
                    </a>
                    <a href="">
                        <li>推 荐</li>
                    </a>
                    <a href="">
                        <li>关 于</li>
                    </a>
                </ul>
            </div>
        </div>

    </div>

</header>

<div class="container">

    <div class="nav-title">首页&gt;职业</div>
    <div class="nav-bar">
        <span class="">方向：</span>
        <%
            int selectNum = Integer.parseInt(request.getParameter("type"));
            String titleList[] = {"全部","前端开发","后端开发","移动开发","整站开发","运营维护"};

            for (int i = 0; i < titleList.length; i ++){
                if (i == selectNum){
        %>
        <a class="nav-bar-a a-selected" href="/task4/courseList?type=<%=i%>"><%=titleList[i]%></a>
            <%}else{%>
        <a class="nav-bar-a" href="/task4/courseList?type=<%=i%>"><%=titleList[i]%></a>
        <%}}%>
    </div>


    <%
        List list = (List) request.getAttribute("list");
        if (selectNum == 0){
        for (int i = 1;i < titleList.length; i++){%>
    <div class="caption"><h4><%=titleList[i]%></h4></div>
    <%
        List<Vocation> vocationList = (List) list.get(i-1);
        for (Vocation vocation : vocationList){%>
    <div class="row">
        <div class="col-md-4 col-sm-6 col-xs-12 top-margin">

            <div class="warp-border">
                <div class="clearfix">
                    <div class="icon-people"><img src="imges/687.png"></div>
                    <div class="text">
                        <h4 class=""><%=vocation.getV_name()%></h4>
                        <p class="text-present"><%=vocation.getIntroduce()%></p>
                    </div>
                </div>

                <div class="warp-class2">
                    <div class="warp-class2-text">
                        <div class="iconfont text-padding">门槛
                            <%
                                int step_diff = vocation.getStep_diff();
                                for (int j = 0;j<step_diff;j++){%>
                            <img src="imges/xx.png">
                                <%}%>
                        </div>
                    </div>
                    <div class="warp-class2-text">
                        <div class="iconfont text-padding text-border-left">难易程度
                            <%
                                for (int j = 0;j<vocation.getStu_diff();j++){%>
                            <img src="imges/xx.png">
                            <%}%>


                        </div>
                    </div>
                </div>
                <div class="warp-class2">
                    <div class="warp-class2-text">
                        <div class="iconfont text-padding">成长周期 <span class="iconfont-color"><%=vocation.getStu_cycle()%></span>年</div>
                    </div>
                    <div class="warp-class2-text">
                        <div class="iconfont text-padding text-border-left">稀缺程度 <span class="iconfont-color"><%=vocation.getCom_count()%></span>家公司需要
                        </div>
                    </div>
                </div>

                <div class="warp-class2">
                    <div class="leftWarp">
                        薪资待遇
                    </div>
                    <div class="rightWarp">
                        <div class="rightWarp-class">
                            <div class="rightWarp-year">0-1年</div>
                            <div class="rightWarp-wages"><%=vocation.getSalary_low()%>/月</div>
                        </div>
                        <div class="rightWarp-class">
                            <div class="rightWarp-year">1-3年</div>
                            <div class="rightWarp-wages"><%=vocation.getSalary_mid()%>/月</div>
                        </div>
                        <div class="rightWarp-class border-bottom">
                            <div class="rightWarp-year">3年以上</div>
                            <div class="rightWarp-wages"><%=vocation.getSalary_high()%>/月</div>
                        </div>
                    </div>
                </div>

                <div class="warp-class2">
                    <b class="text-b">有286人正在学</b>
                </div>
                <div class="warp-class2">
                    <p class="text-p">提示:<%=vocation.getTip()%></p>
                </div>

                <div class="flip-container">
                    <p class="flip-title"><%=vocation.getV_name()%></p>
                    <p class="flip-text"><%=vocation.getDetail_introduce()%></p>
                </div>
            </div>

        </div>
    </div>

    <%}}}else {%>
    <div class="caption"><h4><%=titleList[selectNum]%></h4></div>
    <%
        List<Vocation> vocationList = (List) list.get(selectNum-1);
        for (Vocation vocation : vocationList){%>
    <div class="row ">
        <div class="col-md-4 col-sm-6 col-xs-12 top-margin">

            <div class="warp-border">
                <div class="clearfix">
                    <div class="icon-people"><img src="imges/687.png"></div>
                    <div class="text">
                        <h4 class=""><%=vocation.getV_name()%></h4>
                        <p class="text-present"><%=vocation.getIntroduce()%></p>
                    </div>
                </div>

                <div class="warp-class2">
                    <div class="warp-class2-text">
                        <div class="iconfont text-padding">门槛
                            <%
                                int step_diff = vocation.getStep_diff();
                                for (int j = 0;j<step_diff;j++){%>
                            <img src="imges/xx.png">
                            <%}%>
                        </div>
                    </div>
                    <div class="warp-class2-text">
                        <div class="iconfont text-padding text-border-left">难易程度
                            <%
                                for (int j = 0;j<vocation.getStu_diff();j++){%>
                            <img src="imges/xx.png">
                            <%}%>


                        </div>
                    </div>
                </div>
                <div class="warp-class2">
                    <div class="warp-class2-text">
                        <div class="iconfont text-padding">成长周期 <span class="iconfont-color"><%=vocation.getStu_cycle()%></span>年</div>
                    </div>
                    <div class="warp-class2-text">
                        <div class="iconfont text-padding text-border-left">稀缺程度 <span class="iconfont-color"><%=vocation.getCom_count()%></span>家公司需要
                        </div>
                    </div>
                </div>

                <div class="warp-class2">
                    <div class="leftWarp">
                        薪资待遇
                    </div>
                    <div class="rightWarp">
                        <div class="rightWarp-class">
                            <div class="rightWarp-year">0-1年</div>
                            <div class="rightWarp-wages"><%=vocation.getSalary_low()%>/月</div>
                        </div>
                        <div class="rightWarp-class">
                            <div class="rightWarp-year">1-3年</div>
                            <div class="rightWarp-wages"><%=vocation.getSalary_mid()%>/月</div>
                        </div>
                        <div class="rightWarp-class border-bottom">
                            <div class="rightWarp-year">3年以上</div>
                            <div class="rightWarp-wages"><%=vocation.getSalary_high()%>/月</div>
                        </div>
                    </div>
                </div>

                <div class="warp-class2">
                    <b class="text-b">有286人正在学</b>
                </div>
                <div class="warp-class2">
                    <p class="text-p">提示:<%=vocation.getTip()%></p>
                </div>

                <div class="flip-container">
                    <p class="flip-title"><%=vocation.getV_name()%></p>
                    <p class="flip-text"><%=vocation.getDetail_introduce()%></p>
                </div>
            </div>

        </div>
    </div>
    <%--padding-bottom--%>
    <%}}%>
</div>

<!--footer-->
<footer class="footer">
    <div class="container height">
        <div class="row">
            <div class="text-left col-sm-4">
                <span>技能树 &mdash; 改变你我</span>
                <p class="bottom">关于我们 | 联系我们 | 合作企业</p>
            </div>
            <div class="text-center col-sm-4">
                <p>旗下网站</p>
                <span>草船云孵化器     最强IT特训营</span>
                <span>葡萄藤轻游戏     桌游精灵</span>
            </div>
            <div class="text-right col-sm-4">
                <p>微信公众号</p>
                <img src="imges/2524.jpg">
            </div>
        </div>

    </div>

    <div class="footer-bottom">
        Copyright &copy; 2015技能树 www.jnshu.com All Rights Reserved | 京ICP
    </div>
</footer>

</body>
</html>
