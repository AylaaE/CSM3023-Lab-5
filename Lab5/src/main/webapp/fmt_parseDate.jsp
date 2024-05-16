<%-- 
    Document   : fmt_parseDate
    Created on : 15 May 2024, 4:32:30 pm
    Author     : Nur Ezreena
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>fmt-parseDate</title>
    </head>
    <body>
        <h1>fmt:parseDate Example</h1>
        
        <c:set var="dateTimeString" value="15-05-2024 16:35"/>
        <h4>
            dateTimeString:
            <c:out value="${dateTimeString}"/>
        </h4>
        
        <fmt:parseDate value="${dateTimeString}"
                       type="both" var="parsedDateTime" pattern="dd-MM-yyyy HH:mm"/>
        <p>
            The Date Time after parsing:
            <c:out value="${parsedDateTime}"/>
        </p>
        <br/>
        
        <p>Date only (dd/MM/yyyy):
            <fmt:formatDate value="${parsedDateTime}" pattern="dd/MM/yyyy"/>
        </p>
    </body>
</html>
