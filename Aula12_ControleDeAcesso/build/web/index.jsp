<%-- 
    Document   : index
    Created on : 26 de nov de 2020, 12:40:40
    Author     : biancasobral
--%>

<%@page import="listener.DbListener"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%if (DbListener.exception != null){ %>
        <div style="color: red "><%= DbListener.exception %></div>
        <%}%>
        <h1>Controle de Acesso</h1>
        <% try { %>  
        <h2>Usuários:</h2>
        <%=DbListener.getUsersCount()%>
        <% for(String email: DbListener.getUsersEmails()){ %>
        <div><%= email %></div>
        <% } %>
           <% } catch (Exception ex) {%>
           <div style="color:red"><%= ex.getMessage()%></div>
           <%}%>
        <div></div>
    </body>
</html>
