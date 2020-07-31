<%@ page  contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
    <title>人力资源系统</title>
</head>
<style type="text/css">
    body{
        background-color: cornflowerblue;
    }
    .num1{
        background-color: darkkhaki;
        text-align: center; /*让div内部文字居中*/
        border:2px #FFB6C1 solid;
        border-radius: 20px;
        width: 300px;
        height: 365px;
        position: absolute;
        left: 50%;
        top: 50%;
        transform: translate(-50%,-50%);
    }
    .btn { /* 按钮美化 */
        width: 168px; /* 宽度 */
        height: 35px; /* 高度 */
        border-width: 0px; /* 边框宽度 */
        border-radius: 3px; /* 边框半径 */
        background: #FFB6C1; /* 背景颜色 */
        cursor: pointer; /* 鼠标移入按钮范围时出现手势 */
        outline: none; /* 不显示轮廓线 */
        font-family: Microsoft YaHei; /* 设置字体 */
        color: white; /* 字体颜色 */
        font-size: 17px; /* 字体大小 */
    }
    .btn:hover { /* 鼠标移入按钮范围时改变颜色 */
        background: #5599FF;
    }
    input{
        width:168px;
        height:35px;
        border-radius:13px;
    }
    p{
        font-size: 20px;
    }
    h1{
        color: #FFB6C1;
        font-family:verdana;
    }
</style>
<body>
<div class="num1">
    <h1>hello</h1>
    <form action="${pageContext.request.contextPath}/person/login" method="post">
        <p>账号:</p><input type="text" name="username"/><br/>
        <p>密码:</p><input type="password" name="password"><br/><br/><br/>
        <button type = "submit " class="btn">登录</button>
    </form>
</div>
</body>
</html>

