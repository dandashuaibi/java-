<%--
  Created by IntelliJ IDEA.
  User: LI
  Date: 2023/12/14
  Time: 12:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>register</title>
    <link rel="stylesheet" type="text/css" href="change.css" />

</head>
<body>
<div class="control">
    <div class="item">
        <div><a href="index.jsp">登录</a></div><div class="active">注册</div>
    </div>
    <div class="content">
        <div style="display: block;">
            <form method="post" action="<%=request.getContextPath()%>/RegisterServlet">
            <p>用户名</p>
            <input type="text" name="username" />
            <p>密码</p>
            <input type="password" name="password"/>
            <p>邮箱</p>
            <input type="text" name="email" />
            <br/>
            <input type="submit" value="注册"/>
            </form>
        </div>
    </div>
</div>
</body>
</html>
