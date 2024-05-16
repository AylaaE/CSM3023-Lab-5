<%-- 
    Document   : calculateCircle
    Created on : 16 May 2024, 12:50:03 am
    Author     : Nur Ezreena
--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.lang.Math" %>
<!DOCTYPE html>
<html>
<head>
    <title>Circle Calculation Result</title>
</head>
<body>
    <h1>Circle Calculation Result</h1>

    <%
        String radiusStr = request.getParameter("radius");
        double radius = 0;
        boolean valid = true;

        try {
            radius = Double.parseDouble(radiusStr);
        } catch (NumberFormatException e) {
            valid = false;
        }

        if (valid) {
            double area = Math.PI * radius * radius;
            double perimeter = 2 * Math.PI * radius;

            request.setAttribute("radius", radius);
            request.setAttribute("area", area);
            request.setAttribute("perimeter", perimeter);
        } else {
            request.setAttribute("error", "Invalid radius value. Please enter a valid number.");
        }
    %>

    <c:choose>
        <c:when test="${not empty error}">
            <p style="color:red;">${error}</p>
            <a href="circle.jsp">Go back and enter a valid radius</a>
        </c:when>
        <c:otherwise>
            <p>Radius: <fmt:formatNumber value="${radius}" maxFractionDigits="3" /></p>
            <p>Area: <fmt:formatNumber value="${area}" maxFractionDigits="3" /></p>
            <p>Perimeter: <fmt:formatNumber value="${perimeter}" maxFractionDigits="3" /></p>
            <a href="circle.jsp">Calculate another circle</a>
        </c:otherwise>
    </c:choose>
</body>
</html>
