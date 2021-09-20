<%-- 
    Document   : userlogout
    Created on : 24 Jun, 2019, 2:06:12 PM
    Author     : Akula Apoorva
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body style="background-color:#c1c1c1">
        <%


String n = (String)session.getAttribute("Email");

if(session!=null)
	{

session.removeAttribute("Email");
session.invalidate();
response.sendRedirect("home.html");
    }

%>

    </body>
</html>
