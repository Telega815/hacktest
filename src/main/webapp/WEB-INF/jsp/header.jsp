<%--
  Created by IntelliJ IDEA.
  User: Telega
  Date: 7/28/2018
  Time: 5:09 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/styles.css">
    <title>header</title>
</head>
<body>
<body>
<header>
    <%--<a class="logo" href="#">Logo</a>--%>
        <img id="logoImgOr" src="${pageContext.request.contextPath}/resources/images/muzikalnie.png" alt="">
    <div class="links">
        <a href="">Музыка</a>
        <a href="">Клипы</a>
        <%--<a href="">О нас</a>--%>
    </div>
    <div class="userSettings">
        <div class="coinBlock">
            <img class="coinImg" src="${pageContext.request.contextPath}/resources/images/coin.png">
            <span id="conValue">1000</span>
        </div>
        <div class="user">
            <button id="logIn">Войти</button>
            <span id="userName">Gur001</span>
        </div>
    </div>
    <div class="userWindow">
        <span id="bonuses">Бонусы</span>
        <span id="logOut">Выйти</span>
    </div>
</header>
<main></main>
</body>
</body>
</html>
