<%--
  Created by IntelliJ IDEA.
  User: hcx
  Date: 2020/7/28
  Time: 0:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>添加员工</title>
</head>
<script type="text/javascript">
</script>

<body>
<div>
    <%--@elvariable id="person" type="cn.cqupt.Moudle.Person"--%>
    <form:form action="/person/add" modelAttribute="person" enctype="multipart/form-data" method="post">
        <form:errors path="*" cssClass="error"/>
        ID: <input type="number" name="pid" /><form:errors path="pid" cssClass="error" cssStyle="color:red"/> </br>
        姓名:<input  type="text" name="pname" />
        <form:errors path="pname" cssClass="error" cssStyle="color:red"/> </br>
        Age: <input  type="number" name="page" />
        <form:errors path="page" cssClass="error" cssStyle="color:red"/></br>
        性别:<select name="psex"  placeholder="请选择你的性别">
        <option value="男">男</option>
        <option value="女">女</option>
    </select></br>
        选择文件:<input id="photo" type="file" name="file"/><form:errors path="image" cssClass="error" cssStyle="color:red"/></br>
        <input type="submit" value="添加"/>
        <input type="reset" value="重置"/>
    </form:form>
</div>
</body>
</html>