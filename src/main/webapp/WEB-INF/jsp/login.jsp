<%--
  Created by IntelliJ IDEA.
  User: Telega
  Date: 7/27/2018
  Time: 2:13 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
    <p>Test page</p>
    <br>
        <a href="${pageContext.request.contextPath}/registration">REGISTRATION</a>
    <br>

        <c:url value="/service/loginProcessing" var="loginUrl"/>
        <form:form id="userForm" method="post" action="${loginUrl}" modelAttribute="user">
            <p>Login:</p>
            <form:input path="email" type="email" />
            <br>
            <p>Password:</p>
            <form:input path="pwd" type="password"/>
            <input form="userForm" id="submitRegForm" type="submit" />
        </form:form>
    <div id="ErrorField">
        <c:if test="${not empty error}">
            <p>${error}</p>
        </c:if>
    </div>
</body>
</html>
