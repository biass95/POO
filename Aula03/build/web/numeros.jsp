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
        <title>Data / Hora - JSP Page</title>
    </head>
    <body>
        <h1>Java Server Page</h1>
        <h2>Data / Hora no servidor</h2>
        
        <h3>Utilizando os Scriptlet:</h3>
        <% 
            java.util.Date agora = new java.util.Date();
            out.println("<h4>Agora no servidor"+agora+"</h4>");
            %><%--Exemplo de um Scriptlet --%>
            
        <h3>Utilizando Expressions:</h3>
        <h4>Agora, no servidor <%= agora +" teste" %></h4>
        <%--Exemplo de um Expression --%>
        <%--Nao dar expaço entre o marcador do sptlet e a iguladade.--%>
        <h2><a href="index.jsp">Voltar</a></h2>
    </body>
</html>
