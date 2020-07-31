<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: hcx
  Date: 2020/7/28
  Time: 11:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1 align="center">修改员工信息</h1>
<form action="/person/update" method="post">
    <c:choose>
        <c:when test="${not empty requestScope.per}">
            员工编号:${per.pid}
            <input name="pid" type="hidden" value="${per.pid}"/><br/>
            姓名:<input type="text" name="pname" value="${per.pname}"/><br/>
            年龄:<input type="text" name="page" value="${per.page}"/><br/>
            性别:<select name="psex">
               <option ${ per.psex eq '男'?' selected' :''} value="男">男</option>
               <option ${ per.psex eq '女'?' selected' :''} value="女">女</option>
            </select><br/>
            <input type="submit" value="提交"/>
        </c:when>
    </c:choose>
</form>
</body>
</html>
