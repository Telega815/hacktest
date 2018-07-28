<%--
  Created by IntelliJ IDEA.
  User: Telega
  Date: 7/28/2018
  Time: 12:06 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<html>
<head>
    <title>MAIN</title>
</head>
<body>
    <a href="${pageContext.request.contextPath}/registration">REGISTRATION</a>
    <a href="${pageContext.request.contextPath}/login">LOGIN</a>

    <c:if test="${loggedIn}">
        <c:if test="${user.emailConfirmed}">
            <p> Hi ${user.email}, ty for confirming email</p>
        </c:if>
        <c:if test="${!user.emailConfirmed}">
            <p> Hi ${user.email}, please confirm email</p>
        </c:if>
    </c:if>
</body>
</html>
