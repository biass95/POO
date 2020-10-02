<%-- 
    Document   : data
    Created on : 28 de set de 2020, 16:09:44
    Author     : biancasobral
--%>
<%@page import="br.edu.fatecpg.poo.Data"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 
    Data hoje = new Data(1,7,2020);
    
    Data nasc = new Data();
    nasc.setDia(3);
    nasc.setMes(4);
    nasc.setAno(1995);
    
    

%>
<!DOCTYPE html>
<html>
    <head>
        <title>Index - JavaOO</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <div><a href="index.jsp">Voltar</a></div>
        <h1>JavaOO</h1>
        <h1>Índice</h1>
        <h2>Classe Data</h2>
        <h3>Hoje:</h3>
        <%= hoje.getData() %>
        <h3>Nasimento:</h3>
        <%= nasc.getData() %>
        <div></div>
    </body>
</html>
