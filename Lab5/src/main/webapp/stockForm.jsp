<%-- 
    Document   : stockForm
    Created on : 16 May 2024, 1:02:08 am
    Author     : Nur Ezreena
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Stock Transaction Calculator</title>
    <style>
            label {
                display: inline-block; 
                margin-right: 10px;
                width: 150px;
            }
        </style>
</head>
<body>
    <h1>Stock Transaction Calculator</h1>
    <form action="calculateStock.jsp" method="post">
        <label for="numberOfShares">Number of Shares:</label>
        <input type="text" id="numberOfShares" name="numberOfShares" required><br><br>

        <label for="pricePerShare">Price per Share:</label>
        <input type="text" id="pricePerShare" name="pricePerShare" required><br><br>

        <label for="commissionRate">Commission Rate (%):</label>
        <input type="text" id="commissionRate" name="commissionRate" required><br><br>

        <button type="submit">Calculate</button>
    </form>
</body>
</html>
