<%-- 
    Document   : delete
    Created on : 21 Jun, 2019, 2:21:54 PM
    Author     : Akula Apoorva
--%>
<%@include file="connection.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%
                    String Eventname=request.getParameter("Eventname");
                        Statement st=con.createStatement();
                st.executeUpdate("delete from event WHERE Eventname='"+Eventname+"'");
                response.sendRedirect("alleventview.jsp");
                    %>   
                    
    </body>
</html>
