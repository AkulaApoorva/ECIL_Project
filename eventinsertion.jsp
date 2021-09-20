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
    <body>
         <%
        String Eventname=request.getParameter("Eventname");
        String Eventtime=request.getParameter("Eventtime");
        String Eventdate=request.getParameter("Eventdate");
        String Eventplace=request.getParameter("Eventplace");
        String PresentedBy=request.getParameter("PresentedBy");        
        PreparedStatement ps=con.prepareStatement("insert into event values(?,?,?,?,?)");
        
        ps.setString(1,Eventname);
        ps.setString(2,Eventtime);
        ps.setString(3,Eventdate);
        ps.setString(4,Eventplace);
        ps.setString(5,PresentedBy);
        ps.executeUpdate();
        response.sendRedirect("alleventview.jsp");
        %>
       
        
    </body>
</html>
