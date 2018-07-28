<%--
  Created by IntelliJ IDEA.
  User: Telega
  Date: 7/27/2018
  Time: 11:19 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<html>
<head>
    <title>Registration</title>
</head>

<body>
    <form:form id="registrationForm" method="post" modelAttribute="user">
        <p>Login:</p>
        <form:input path="email" type="email" />
        <br>
        <p>Password:</p>
        <form:input path="pwd" type="password"/>
        <input form="registrationForm" id="submitRegForm" type="submit" />
    </form:form>
</body>
</html>
