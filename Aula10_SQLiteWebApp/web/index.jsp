<%-- 
    Document   : index
    Created on : 17 de nov de 2020, 11:40:49
    Author     : biancasobral
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="db.TasksConnector"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 
    String errorMessage = null;
    if (request.getParameter("insert")!= null) {
        try {
           String name = request.getParameter("name");
           TasksConnector.insert(name);
           response.sendRedirect(request.getRequestURI());
        } catch(Exception ex){
            errorMessage = "Erro ao inserir tarefa:" + ex.getMessage();
        }
    }
    
    if (request.getParameter("delete")!= null) {
        try {
           String name = request.getParameter("name");
           TasksConnector.delete(name);
           response.sendRedirect(request.getRequestURI());
        } catch(Exception ex){
            errorMessage = "Erro ao inserir tarefa:" + ex.getMessage();
        }
    }
    
    ArrayList<String> tasks = new ArrayList<>();
    try {
        tasks = TasksConnector.select();
    } catch(Exception ex){
        errorMessage = "Erro ao ler dados" + ex.getMessage();
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tarefas - SQLite</title>
    </head>
    <body>
        <h1>SQLite</h1>
        <h2>Tarefas</h2>
        <form>
            <input type="text" name="name"/>
            <input type="submit" name="insert" value="Inserir tarefa"/>
        </form>
        <hr/>
        <% if (errorMessage != null ){ %>
        <div style="color: red"><%= errorMessage %></div>
        <% } %>
        <hr/>
        <table border ="1">
            <tr>
                <th>Nome</th>
                <th>Comando</th>
            </tr>
            <%for(String name: TasksConnector.select()) { %>
            <tr>
                <td><%= name %></td>
                <td>
                    <form>
                        <input type = "hidden" name="name" value="<%= name %>"/>
                        <input type = "submit" name="delete" value="Excluir"/>
                    </form>
                </td>
            </tr>
            <% }%>
        </table>
    </body>
</html>
