<%-- 
    Document   : index
    Created on : 1 de out de 2020, 01:43:01
    Author     : biancasobral
--%>

<%@page import="br.edu.fatecpg.poo.Horario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% 
    Horario agora = new Horario(21, 17);
    Horario intervalo = new Horario();
    intervalo.setHoras(20);
    intervalo.setMinutos(15);
%>
<html>
    <head>
        <title>Index - JavaOO</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <a href="index.jsp">Voltar</a>
        <h1>JavaOO</h1>
        <h1>Classe Horário</h1>
        <h3>Agora</h3>
        
        <div><%= agora.getHorario()%></div>
        
        <h3>Intervalo</h3>
        <div><%= intervalo.getHoras() + ":" + intervalo.getMinutos()%></div>
    </body>
</html>
