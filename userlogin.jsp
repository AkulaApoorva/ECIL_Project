
<%@ include file="connection.jsp" %>

<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page import="javax.servlet.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body style="background-color:#c1c1c1">
       <%
           Statement st=con.createStatement();
           String Email=request.getParameter("Email");
           String Password=request.getParameter("Password");
           

           session.setAttribute("Email",Email);
           
           String s=(String)session.getAttribute("Email");

           
           ResultSet rs=st.executeQuery("select Email, Password from user where Email='"+Email+"'");
           if(rs.next())
               {
               String u=rs.getString(1);
               String p=rs.getString(2);
               if(p.equals(Password)&&u.equals(Email))
                   {
                   %>
                   <jsp:forward page="userhome.html"/>
                   <%
                  }
               else
                
               {%>
               <jsp:forward page="error.jsp"/>
               <%
               }
             }
               else
               {
                  %>
                  <jsp:forward page="error.jsp"/>
                  <%
               }
       
       %>
       
       
                   
     </body>
</html>
