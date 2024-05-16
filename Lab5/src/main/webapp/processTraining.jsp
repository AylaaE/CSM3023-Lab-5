<%-- 
    Document   : processTraining
    Created on : 8 May 2024, 3:53:29 pm
    Author     : Nur Ezreena
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Training Registration Acknowledgement</title>
    </head>
    <body>
        <h1>Training Registration Acknowledgement</h1>
        
        <% 
            String icno = request.getParameter("icno");
            String name = request.getParameter("name");
            String type = request.getParameter("type");
            int number = Integer.parseInt(request.getParameter("number"));
            String student = request.getParameter("student");
            double fee = 0.0;

            // Define training fees
            switch (type) {
                case "1":
                    fee = 3000;
                    type = "C++ training";
                    break;
                case "2":
                    fee = 3000;
                    type = "Java for beginner";
                    break;
                case "3":
                    fee = 2800;
                    type = "HTML5";
                    break;
                case "4":
                    fee = 5500;
                    type = "Java EEE";
                    break;
                case "5":
                    fee = 3200;
                    type = "Android Programming";
                    break;
                default:
                    out.println("Invalid training type.");
                    break;
            }

            // Calculate total amount
            double totalAmount = fee * number;

            // Apply student discount if applicable
            if (student.equals("1")) {
                totalAmount *= 0.9;
            }

            // Format the output amount
            java.text.DecimalFormat df = new java.text.DecimalFormat("0.00");
        %>
        
        <p style="color:blue;">IC No: <%= icno %> </p>
        <p style="color:blue;">Name: <%= name %> </p>
        <p style="color:blue;">Type of Training: <%= type %> </p>
        <p style="color:blue;">Number of Pax: <%= number %> </p>
        <p style="color:blue;">Student: <%= (student.equals("1") ? "Yes" : "No") %> </p>
        <p style="color:blue;"><strong>Amount Due: RM <%= df.format(totalAmount) %></strong></p>
        
        <br><br>
        <footer>&copy; 2024 - EZREENA</footer>
    </body>
</html>
