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
        
        
        <% // Controle de sessao
            
        String loginErrorMessage = null;
        if(request.getParameter("login")!= null) {
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            String name = DbListener.login(email, password);
            if (name==null) {
                loginErrorMessage = "usuário e/ ou senha inválidos";
            } else {
                session.setAttribute("email", email);
                session.setAttribute("name", name );
                response.sendRedirect(request.getRequestURI());        
            }
            
        } 
        if (request.getParameter("logout")!= null) {
            session.removeAttribute("email");
            session.removeAttribute("name");
            response.sendRedirect(request.getRequestURI());
        }
        
        %>
        
        
   <%if (session.getAttribute("email")==null) {%>
        <%if (loginErrorMessage != null) { %>
        <div style="color:red"><%=loginErrorMessage %></div>
        <%}%>
        <form method="post">
           Email: <input type="text" name="email"/>
           Senha: <input type="password" name="password"/>
            <input type="submit" name="login" value="Entrar"/>
        </form>
        <%} else {%>
        <form>
            Bem vindo, <%= session.getAttribute("name") %>
            <input type="submit" name="logout" value="Sair"/> 
        </form>
            
        <%} %>
        
        <%if(session.getAttribute("email")== null) {%>
        Entre com login usuario para ver o conteúdo
        <%} else {%>
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
        <%}%>
    </body>
</html>
