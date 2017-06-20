<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%--
    <%@taglib uri="标签库的uri"  prefix="标签的使用前缀"%>
    使用taglib指令引用viewIP标签库,标签库的(prefix)可以随便设置
--%>
<%--<%@taglib prefix="lt" uri="/testTag" %>--%>
<%@taglib prefix="lt" uri="/testTag" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8">
    <title>第一个JSP程序</title>
</head>
<body>
    <a href="/task4/home">跳转</a>
    <%--<p>你的IP地址是(使用java代码获取输出)：</p>--%>
    <%--<br/>--%>
    <%--使用自定义标签--%>
    <%--<lt:viewIP/>--%>
    <%--<lt:demo1>--%>
        <%--李涛--%>
    <%--</lt:demo1>--%>
    <%--<lt:demo2/>--%>
    <%--<lt:repeatDemo><p>老大最帅</p></lt:repeatDemo>--%>

    <%--<lt:simpleTag>老大最帅<br/></lt:simpleTag>--%>
    <%--<lt:simpleTag2>dafadfa</lt:simpleTag2>--%>
    <%--&lt;%&ndash;<lt:simpleTag3/>&ndash;%&gt;--%>
    <%--<lt:simpleTag4 count="2"><h1>老大最帅</h1></lt:simpleTag4>--%>
</body>
</html>