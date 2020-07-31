<%--
  Created by IntelliJ IDEA.
  User: hcx
  Date: 2020/7/28
  Time: 0:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>主页</title>
</head>
<style type="text/css">
    *{margin: 0;
        padding: 0;
    }
.css1{
    width:100%;
    height:6%;
    background-color:black;
}
    h1{
    color: white;
        float: left;
    }
#t{
    float: right;
    width: 60px;
    height: 40px;
}
    .to{
        width: 140px;
        height: 30px;
    }
</style>
<body>
<div class="css1">
<h1>人力资源管理系统主界面</h1>
    <button id="t"><a href="/outLogin">退出</a></button>
</div>
<div>
<button class="to"><a href="/transform/inster">增加员工</a></button>
    <button class="to"><a href="${pageContext.request.contextPath}/findAll?page=1&size=5">显示全体员工</a></button>
<button class="to"><a href="/transform/select">查询员工信息</a></button>
<button class="to"><a href="/findAllOne">删除或者修改员工信息</a></button>
</div>
</body>
</html>
