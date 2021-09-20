<%-- 
    Document   : update
    Created on : 24 Jun, 2019, 10:56:45 AM
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
        
        PreparedStatement ps=con.prepareStatement("UPDATE user set Firstname=?, Lastname=?, Password=?,Confirmpassword=? where Email='"+Email+"'");
        ps.setString(1,Firstname);
        ps.setString(2,Lastname);
        ps.setString(3,Password);
        ps.setString(4,Confirmpassword);
     ps.executeUpdate();
    response.sendRedirect("alluserviewadmin.jsp");
%>      

    </body>
</html>
