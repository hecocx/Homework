<%--
  Created by IntelliJ IDEA.
  User: hcx
  Date: 2020/7/27
  Time: 23:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" import="java.util.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>人员名单</title>
</head>
<style type="text/css">
    div{
        align: center;
        margin: auto;
        width: 1000px;
        height: 580px;
    }
    .imagetable {
        align: center;
        margin: auto;
        border: 7px;
        font-family: verdana, arial, sans-serif;
        font-size: 11px;
        color: #333333;
        border-width: 3px;
        border-collapse: collapse;
    }

    .imagetable th {
        font-size: 18px;
        border-width: 1px;
        padding: 8px;
        border-style: solid;
        border-color: #999999;
    }

    .imagetable td {
        width: 150px;
        font-size: 18px;
        border-width: 1px;
        padding: 8px;
        border-style: solid;
        border-color: #999999;
    }
    .button1{
        float: left;
    }
</style>
<body>
<h1 align="center">人力资源管理系统</h1>
<h2 align="center">公司员工名单</h2>
<div>
    <table class="imagetable">
        <tr>
            <th>编号</th>
            <th>姓名</th>
            <th>年龄</th>
            <th>性别</th>
            <th>照片</th>
        </tr>
        <c:forEach var="person" items="${pageInfos.list}">
            <tr>
                <td><c:out value="${person.pid}"/></td>
                <td><c:out value="${person.pname}"/></td>
                <td><c:out value="${person.page}"/></td>
                <td><c:out value="${person.psex}"/></td>
                <c:choose>
                    <c:when test="${person.image!=null}">
                        <td><img src="images/${person.image}" width=80 height=80/></td>
                        <br/>
                    </c:when>
                    <c:otherwise>
                        <td>该员工未上传照片</td>
                        <br/>
                    </c:otherwise>
                </c:choose>
            </tr>
        </c:forEach>
        <tr>
            <td><a href="/transform">回到主页</a></td>
        </tr>
    </table>
        <button class="button1"><a href="${pageContext.request.contextPath}/findAll?page=1&size=5" aria-label="Previous">首页</a></button>&nbsp&nbsp;&nbsp;
    <button class="button1"><a href="${pageContext.request.contextPath}/findAll?page=${pageInfos.pageNum-1}&size=5">上一页</a>&nbsp;</button>&nbsp;&nbsp;
        <c:forEach begin="1" end="${pageInfos.pages}" var="pageNumber">
        <button class="button1"> <a href="${pageContext.request.contextPath}/findAll?page=${pageNumber}&size=5">${pageNumber}</a></button>&nbsp;&nbsp;&nbsp;
        </c:forEach>
        <button class="button1"> <a href="${pageContext.request.contextPath}/findAll?page=${pageInfos.pageNum+1}&size=5">下一页</a>&nbsp;</button>&nbsp;&nbsp;
      <button class="button1"><a href="${pageContext.request.contextPath}/findAll?page=${pageInfos.pages}&size=5" aria-label="Next">尾页</a></button>
</div>
</body>
</html>