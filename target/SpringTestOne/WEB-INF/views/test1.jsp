<%--
  Created by IntelliJ IDEA.
  User: hcx
  Date: 2020/7/28
  Time: 11:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>人员名单</title>
</head>
<style type="text/css">
    .imagetable {
        align:center;
        margin: auto;
        border: 7px;
        font-family: verdana,arial,sans-serif;
        font-size:11px;
        color:#333333;
        border-width:3px;
        border-collapse: collapse;
    }

    .imagetable th {
        font-size:18px ;
        border-width: 1px;
        padding: 8px;
        border-style: solid;
        border-color: #999999;
    }
    .imagetable td {
        width: 150px;
        font-size:18px ;
        border-width: 1px;
        padding: 8px;
        border-style: solid;
        border-color: #999999;
    }
</style>
<body>
<h1 align="center">人力资源管理系统</h1>
<h2 align="center">公司员工名单</h2>
<table class="imagetable"  >
    <tr>
        <th>编号</th>
        <th>姓名</th>
        <th>年龄</th>
        <th>性别</th>
        <th>删除</th>
        <th>修改</th>
    </tr>
    <c:forEach var="person" items="${list}">
        <tr>
            <td><c:out value="${person.pid}"/></td>
            <td><c:out value="${person.pname}" /></td>
            <td><c:out value="${person.page}" /></td>
            <td><c:out value="${person.psex}" /></td>
            <td><a href="/person/delete?pid=${person.pid}" >删除</a></td>
            <td><a href="/person/update?pid=${person.pid}" >修改</a></td>
        </tr>
    </c:forEach>
    <tr><td><a href="/transform">回到主页</a></td></tr>
</table>
</body>
</html>
