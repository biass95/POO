

<%@page import="java.util.Calendar"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<% int anoAtual = Calendar.getInstance().get(Calendar.YEAR);
                int anoNasc = 1995;
                int idade = anoAtual - anoNasc;
            %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Minha Idade</title>
    </head>
    <body>
        <h4><a href="index.jsp">Voltar</a></h4>
        <h1>Java Server Pages</h1>
        <h2>Minha Idade</h2>
        <h3>Nome:</h3>
        <h4>BIANCA DOS SANTOS SOBRAL</h4>      
        <h3>Idade:</h3>      
        <h4><%=idade%> anos</h4>      
    </body>
</html>
