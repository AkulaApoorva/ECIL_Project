<%-- 
    Document   : view
    Created on : 20 Jun, 2019, 10:32:32 PM
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
    <body style="background-color: #c1c1c1">
        <center>
    <h1 style="font-family:Courier New;font-size:30px;">ALL GUEST VIEW
    </h1>
</center>
        <table border="1" align="center">
            <tr>
                <td>FIRSTNAME</td>
                <td>LASTNAME</td>
                <td>EMAIL</td>
                <td>PASSWORD</td>
                <td>CONFIRMPASSWORD</td>
            </tr>
            <tbody>
                <%
                    Statement st = con.createStatement();
                    ResultSet rs = st.executeQuery("select * from guest");
                    while (rs.next()) {
                %>
                <tr>
                    <td><%=rs.getString(1)%>
                    </td>
                    <td><%=rs.getString(2)%>
                    </td>
                    <td><%=rs.getString(3)%>
                    </td>
                    <td><%=rs.getString(4)%>
                    </td>
                    <td><%=rs.getString(5)%>
                    </td>
                </tr>
                <%
                    }
                %>

            </tbody>
        </table>
    </body>
</html>
