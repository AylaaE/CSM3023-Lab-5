<%-- 
    Document   : circle
    Created on : 16 May 2024, 12:49:24 am
    Author     : Nur Ezreena
--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Circle Calculator</title>
</head>
<body>
    <h1>Circle Calculator</h1>
    <fieldset>
        <legend>Find the radius</legend>
    <form action="calculateCircle.jsp" method="post">
        <label for="radius">Enter the radius of the circle:</label>
        <input type="text" id="radius" name="radius" placeholder="Enter in cm" required>
        <button type="submit">Calculate</button>
    </form>
    </fieldset>
</body>
</html>
