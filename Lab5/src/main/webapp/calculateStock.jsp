<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="lab5.com.stockTransaction" %>

<!DOCTYPE html>
<html>
<head>
    <title>Stock Transaction Result</title>
</head>
<body>
    <h1>Stock Transaction Result</h1>

    <%
        String numberOfSharesStr = request.getParameter("numberOfShares");
        String pricePerShareStr = request.getParameter("pricePerShare");
        String commissionRateStr = request.getParameter("commissionRate");

        int numberOfShares = Integer.parseInt(numberOfSharesStr);
        double pricePerShare = Double.parseDouble(pricePerShareStr);
        double commissionRate = Double.parseDouble(commissionRateStr);

        stockTransaction transactions = new stockTransaction();
        transactions.setNumberOfShares(numberOfShares);
        transactions.setPricePerShare(pricePerShare);
        transactions.setCommissionRate(commissionRate);

        request.setAttribute("transaction", transactions);
    %>

    <jsp:useBean id="transaction" scope="request" type="lab5.com.stockTransaction" />

    <p>Amount paid for the stock alone (without commission): 
        <fmt:formatNumber value="${transaction.amountPaidForStock}" type="currency" maxFractionDigits="2" />
    </p>
    <p>Commission amount: 
        <fmt:formatNumber value="${transaction.commissionAmount}" type="currency" maxFractionDigits="2" />
    </p>
    <p>Total amount paid (for stock plus commission): 
        <fmt:formatNumber value="${transaction.totalAmountPaid}" type="currency" maxFractionDigits="2" />
    </p>

    <a href="stockForm.jsp">Calculate another transaction</a>
</body>
</html>
