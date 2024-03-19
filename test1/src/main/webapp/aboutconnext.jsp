<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>关于详情</title>
    <link rel="stylesheet" type="text/css" href="style.css">

    <style>
        body {
            font-family: 'Helvetica Neue', Arial, sans-serif;
            background-color: #f4f4f4;
            color: #333;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
        }



        .navbar {
            background-color: #dcacac;
            border-bottom: 1px solid #ddd;
            padding: 10px;
        }

        .navbar a {
            color: #007aff;
            text-decoration: none;
            padding: 10px;
            margin: 0 10px;
        }

        .navbar a:hover {
            background-color: #ddd;
            border-radius: 5px;
        }

        .section {
            padding: 20px;
            background-color: #fff;
            margin-top: 10px;
            border-radius: 5px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        .button2 {
            display: inline-block;
            padding: 10px 20px;
            background-color: #78aee9;;
            color: #000000;
            text-decoration: none;
            border-radius: 5px;
            transition: transform 0.3s ease
        }

        .button2:hover {
            transform: scale(1.2);
        }

        .footer {
            text-align: center;
            padding: 10px;
            margin-top: 20px;
            background-color: #f8f8f8;
        }


    </style>
</head>

<body>

<nav>
    <a href="Mainweb.jsp" class="active">首页</a>
    <a href="allworks.jsp" class="active">作品</a>
    <a href="aboutconnext.jsp" class="button">关于</a>
</nav>
<div class="container">

    <div class="section">
        <div class="work">
            <img src="images/hero.png" alt="Work 1">
        </div>
    </div>

    <div class="section">
        <h2>介绍</h2>
        <p>你好，我是李天阳。欢迎来到我的个人主页。我是一个什么都不会的大学生，每天上课，学习，写作业，还有打游戏。本来以为我会这样度过我的大学生活，没想到有一天，我高中幻想过的拯救世界的剧情也能在我身上发生！</p>
        <h4>性别：男         爱好：女</h4>
    </div>

    <div class="section">
        <h2>联系方式</h2>
        <p>
            <span class="button2">Email: dandashuaibi@Gmail.com</span>
            <span class="button2">手机: 131-4746-7856</span>

        </p>
    </div>

    <div class="section">
        <h2>更多社交媒体</h2>
        <p>
            <a href="https://www.zhihu.com/people/hao-hai-you-96-32-32" target="_blank">
                <button class="button2">点我跳转到知乎！</button>
            </a>
            <a href="https://github.com/dashboard" target="_blank">
                <button class="button2">点我跳转到github！</button>
            </a>
            <a href="https://space.bilibili.com/584775248" target="_blank">
                <button class="button2">点我跳转到哔哩哔哩！</button>
            </a>
        </p>
    </div>

    <div class="footer">
        &copy; 2023
    </div>

</div>

</body>
