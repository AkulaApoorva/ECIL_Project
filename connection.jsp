<%-- 
    Document   : connection
    Created on : 20 Jun, 2019, 10:49:36 AM
    Author     : Akula Apoorva
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@page import="java.sql.*" %>
        <%@page import="java.io.*" %>
        <%! Connection con;%>
        <% Class.forName("com.mysql.jdbc.Driver");
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root");
        %>
    </body>
</html>
