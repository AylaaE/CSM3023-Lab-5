<%-- 
    Document   : processUser
    Created on : 15 May 2024, 2:41:50 pm
    Author     : Nur Ezreena
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Task 4</title>
    </head>
    <body>
        <h1>Retrieve info using c:param & display it using c:out</h1>
        
        <c:set var="Name" value="${param.name}"/>
        <c:set var="Surname" value="${param.surname}"/>
        <c:set var="Gender" value="${param.gender}"/>
        <c:set var="userType" value="${param.type}"/>
        <c:set var="userLanguage" value="${param.language}"/>
        
        <!---c:param -->
        <c:url var="processUrl" value="processUser.jsp">
            <c:param name="name" value="${Name}" />
            <c:param name="surname" value="${Surname}" />
            <c:param name="gender" value="${Gender}" />
            <c:param name="type" value="${userType}" />
            <c:param name="language" value="${userLanguage}" />
        </c:url>
        
        <p>First Name : <c:out value="${param.name}"/></p>
        <p>Surname : <c:out value="${param.surname}"/></p>
        <p>Gender : <c:out value="${param.gender}" /></p>
        <p>Type of User : <c:out value="${param.type}"/></p>
        <p>Prefer Language : <c:out value="${param.language}"/></p>

    </body>
</html>
