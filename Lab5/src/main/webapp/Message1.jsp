<%-- 
    Document   : Message1
    Created on : 8 May 2024, 2:43:43 pm
    Author     : Nur Ezreena
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java"%>
<%@page info="Using JSP Standard Action to call JavaBeans"%>
<%@page import="java.util.Date,lab5.com.Message"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Using JSP Scriplet</title>
    </head>
    <body>
        <h1>Using JSP Scriplet to call JavaBeans</h1>
        <%
            //create an object
            Message objMsg = new Message();
            
            //Assign value
            objMsg.setMsg("Welcome to CSF3107 course...!");
            
            //DIsplay value
            out.println("<p>" + objMsg.getMsg() +"</p>");
            
            //Add date
            out.println("<p>Current date is"+new java.util.Date()+"</p>");
            
            %>
    </body>
</html>
