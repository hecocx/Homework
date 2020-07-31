<%--
  Created by IntelliJ IDEA.
  User: hcx
  Date: 2020/7/28
  Time: 11:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<style type="text/css">
    div{
        text-align:center;
        margin: auto;
        width:280px;
        height: 80px;
    }
    td{
        width: 69px;
    }
</style>
<body>
<div >
   <a href="/transform">回到主页</a>
<form action="/person/select" method="post">
    输入员工编号:<input type="text" name="pid"/><br/>
    <input type="submit" name="查询">
</form>

<form>
    <h1 align="center">员工查询结果</h1>
    <table border="1" cellspacing="0" style="text-align: center;  margin: auto;"  >
        <tr>
            <th>编号</th>
            <th>姓名</th>
            <th>年龄</th>
            <th>性别</th>
        </tr>
        <c:choose>
            <c:when test="${not empty requestScope.person}">
                <tr>
                    <td><c:out value="${person.pid}"/></td>
                    <td><c:out value="${person.pname}" /></td>
                    <td><c:out value="${person.page}" /></td>
                    <td><c:out value="${person.psex}" /></td>
                </tr>
            </c:when>
        </c:choose>
    </table>
</form>
</div>
</body>
</html>
