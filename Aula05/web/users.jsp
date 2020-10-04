<%-- 
    Document   : data
    Created on : 28 de set de 2020, 16:09:44
    Author     : biancasobral
--%>
<%@page import="br.edu.fatecpg.poo.User"%>
<%@page import="java.util.ArrayList"%>
<%@page import="br.edu.fatecpg.poo.Pessoa"%>
<%@page contentType="text/html" pageEncoding= "ISO-8859-1"%>
<% 
    ArrayList<User> userList = (ArrayList) application.getAttribute("userList");
    if (userList == null ) {
    userList = new ArrayList();
    userList.add(new User("Bianca", "bananasdepijamas@domain.com", "12345"));
    userList.add(new User("Sergio", "sergiomalandro@domain.com", "12345"));
    userList.add(new User("Diego", "didiboco@domain.com", "12345"));
    userList.add(new User("Maria", "josefisdapraca@domain.com", "12345"));
    userList.add(new User("Felipe", "principedoscavalos@domain.com", "12345"));
    application.setAttribute("userList", userList);
    }
    
        //Recupera os parametros do form e add nos parametros do array userList;
        if (request.getParameter("add") != null) {
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            userList.add(new User(name, email, password));
            //Faz o tratamento de página para no reenvio de formulário evitar ação duplicada
            response.sendRedirect(request.getRequestURI());
        }
        
        if (request.getParameter("remove")!= null) {
            int i = Integer.parseInt(request.getParameter("i"));
            userList.remove(i);
            //Faz o tratamento de página para no reenvio de formulário evitar ação duplicada
            response.sendRedirect(request.getRequestURI());
        }
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
        <h2>Classe Usuários</h2>
        <form method="post">
            <input type="text" name="name" placeholder="Nome"/>
            <input type="text" name="email" placeholder="Email"/>
            <input type="password" name="password" placeholder="Senha"/>
            <input type="submit" name="add" value="Adicionar"/>
            
        </form>
        </hr>
        <table border = "1">
            <tr>
                <th>Índice</th>
                <th>Nome</th>
                <th>Email</th>
                <th>Commandos</th>
            </tr>
            <% for (int i = 0; i < userList.size(); i++){ %>
            <% User user = userList.get(i);%>
            <tr>
                <td><%= i %></td>
                <td><%= user.getName() %></td>
                <td><%= user.getEmail() %></td>
                <td>
                    <form>
                        <input type="submit" name ="remove" value="Remover"/>
                        <input type="hidden" name ="i" value="<%= i%>"/>
                    </form>
                </td>
            </tr
            <% } %>
        </table>
    </body>
</html>
