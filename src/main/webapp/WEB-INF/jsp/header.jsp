<%--
  Created by IntelliJ IDEA.
  User: Telega
  Date: 7/28/2018
  Time: 5:09 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
    <div class="userSettings" id="userSettingsIdDiv">
        <c:if test="${loggedIn}">
            <div class="coinBlock" style="display: flex;">
                <img class="coinImg" src="${pageContext.request.contextPath}/resources/images/coin.png">
                <span  id="conValue">${user.coins}</span>
            </div>
        </c:if>
        <c:if test="${!loggedIn}">
            <div style="display: none;" class="coinBlock">
                <img class="coinImg" src="${pageContext.request.contextPath}/resources/images/coin.png">
                <span id="conValue">0</span>
            </div>
        </c:if>
        <div class="user" id="logInIdDiv">
        <c:if test="${loggedIn}">
            <button style="display: none;" id="logIn">Войти</button>
            <span id="userName">${authenticatedUserName}</span>
        </c:if>
        <c:if test="${!loggedIn}">
            <button id="logIn">Войти</button>
            <span style="display: none;" id="userName">${authenticatedUserName}</span>
        </c:if>
            <%--<span id="userName">Gur001</span>--%>
        </div>
        </div>
        <c:if test="${loggedIn}">
        <div class="userWindow" id="userWindowId">
            <span id="bonuses">Бонусы</span>
            <span id="logOut">Выйти</span>
        </div>
        </c:if>
        <c:if test="${!loggedIn}">
            <div class="userWindow" id="userWindowId">
                <span id="bonuses">Бонусы</span>
                <span id="logOut">Выйти</span>
            </div>
        </c:if>
</header>
<main></main>
</body>
</body>
</html>
