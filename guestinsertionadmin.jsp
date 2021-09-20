<%-- 
    Document   : in
    Created on : 20 Jun, 2019, 2:04:31 PM
    Author     : Akula Apoorva
--%>
<%@ include file="connection.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body style="background-color:#c1c1c1">
         <%
        String Firstname=request.getParameter("Firstname");
        String Lastname=request.getParameter("Lastname");
        String Email=request.getParameter("Email");
        String Password=request.getParameter("Password");
        String Confirmpassword=request.getParameter("Confirmpassword");
        
        PreparedStatement ps=con.prepareStatement("insert into guest values(?,?,?,?,?)");
        
        ps.setString(1,Firstname);
        ps.setString(2,Lastname);
        ps.setString(3,Email);
        ps.setString(4,Password);
        ps.setString(5,Confirmpassword);
        ps.executeUpdate();
        response.sendRedirect("allguestviewadmin.jsp");
        %>
       
        
    </body>
</html>
