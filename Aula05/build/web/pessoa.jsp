<%-- 
    Document   : data
    Created on : 28 de set de 2020, 16:09:44
    Author     : biancasobral
--%>
<%@page import="br.edu.fatecpg.poo.Pessoa"%>
<%@page import="br.edu.fatecpg.poo.Data"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 
   Pessoa bianca = new Pessoa("Bianca", new Data(3, 4, 1995));
   bianca.setPai(new Pessoa("José"));
   bianca.setMae(new Pessoa("Maria"));
   //Abaixo estou usando recurso de hierarquia, onde eu recupero o "pai" e insiro o "pai" de "pai"
   bianca.getPai().setPai(new Pessoa("Sobral"));
   bianca.getMae().setPai(new Pessoa("Joaquim"));
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
        <h2>Classe Pessoa</h2>
        <div><%= bianca.getNome()%> nasceu em: <%= bianca.getNascimento().getData() %></div>
        <div><%= bianca.getNome() %> tem <%= bianca.getIdade(2020) %> anos.</div>
        <div>O nome do pai de <%= bianca.getNome() %> é <%= bianca.getPai().getNome() %></div>
        <div>O nome da mãe de <%= bianca.getNome() %> é <%= bianca.getMae().getNome() %></div>
        <div> O avô paterno de <%= bianca.getNome() %> chama-se <%= bianca.getAvôPaterno().getNome()%></div>
        <div> O avô materno de <%= bianca.getNome() %> chama-se <%= bianca.getAvôMaterno().getNome()%></div>
      
    </body>
</html>
