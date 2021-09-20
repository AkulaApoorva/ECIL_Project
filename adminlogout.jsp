<%-- 
    Document   : userlogout
    Created on : 23 Jun, 2019, 10:33:18 PM
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
