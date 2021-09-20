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
            String Eventname=request.getParameter("Eventname");
        String Eventtime=request.getParameter("Eventtime");
        String Eventdate=request.getParameter("Eventdate");
        String Eventplace=request.getParameter("Eventplace");
        String PresentedBy=request.getParameter("PresentedBy");
        
        PreparedStatement ps=con.prepareStatement("UPDATE event set Eventtime=?, Eventdate=?, Eventplace=?,PresentedBy=? where Eventname='"+Eventname+"'");
        ps.setString(1,Eventtime);
        ps.setString(2,Eventdate);
        ps.setString(3,Eventplace);
        ps.setString(4,PresentedBy);
        ps.executeUpdate();
    response.sendRedirect("alleventview.jsp");
%>      

    </body>
</html>
