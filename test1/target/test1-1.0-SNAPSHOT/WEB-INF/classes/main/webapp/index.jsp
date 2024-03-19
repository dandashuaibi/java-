<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>登录页面</title>
    <link rel="stylesheet" type="text/css" href="change.css" />

</head>
<body>
<div class="control">
    <div class="item">
        <div class="active">登录</div><div><a href="register.jsp">注册</a></div>
    </div>
    <div class="content">
        <div style="display: block;">

            <form method="post" action="<%=request.getContextPath()%>/LoginServlet">
                <label for="email">邮箱</label>
            <input type="text" id="email" name="email"/>
                <label for="password">密码</label>
            <input type="password" id="password" name="password"/>
            <br/>
            <input type="submit" value="登录"/>
            </form>
        </div>
    </div>
</div>
</body>
</html>