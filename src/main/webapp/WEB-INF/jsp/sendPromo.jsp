<%--
  Created by IntelliJ IDEA.
  User: gur01
  Date: 29.07.2018
  Time: 12:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Promo</title>
    <meta charset="utf-8">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/Style_sendPromo.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/game/jquery-2.1.1.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/app.js"></script>
</head>
<body>
<div id="blackpanelPromo">
    <form id="winLogInPromo" action="192.168.1.201/mail.php" method="POST">
        <div class="closeBlockPromo">
            <div class="closePromo"></div>
        </div>
        <c:if test="${loggedIn}">
        <div class="formsPromo">
            <legend>Вы получили 200 монет</legend>
            <div class="form-groupPromo">
                <!-- <label for="">Введите email</label> -->
                <button onclick="okBtn()">OK</button>
            </div>
        </div>
        </c:if>
        <c:if test="${!loggedIn}">
        <div class="formsPromo">
            <legend>Ваш промокод на 200 монет</legend>
            <div class="form-groupPromo">
                <!-- <label for="">Введите email</label> -->
                <span> ${promocode} </span>
            </div>
        </div>
        </c:if>
    </form>
</body>
</html>
