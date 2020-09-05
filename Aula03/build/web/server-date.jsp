<%-- 
    Document   : index
    Created on : 31 de ago de 2020, 20:08:17
    Author     : biancasobral
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Index - JSP Page</title>
    </head>
    <body>
        <h1>Java Server Page</h1>
        <h2>Index</h2>
        <% 
            java.util.Date agora = new java.util.Date();
            out.println("<h3>Agora no servidor"+agora+"</h3>");
            %><%--Exemplo de um Scriptlet --%>
            
        
        <h3>Agora, no servidor <%= agora +" teste" %></h3>
        <%--Exemplo de um Expression --%>
        <%--Nao dar expaço entre o marcador do sptlet e a iguladade.--%>

        <h2><a href="minha-idade.jsp">Tarefa 01 - Aula03(Scriptlet)</a></h2>
    </body>
</html>
