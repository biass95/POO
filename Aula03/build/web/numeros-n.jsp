<%-- 
    Document   : index
    Created on : 31 de ago de 2020, 20:08:17
    Author     : biancasobral
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

   <% int n;
                try{ n = Integer.parseInt(request.getParameter("n")); 
                } catch(Exception ex ) {
                    n = 0;
        } %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Numeros aleatórios 2 - JSP Page</title>
    </head>
    
        <h4><a href="index.jsp">Voltar</a></h4>
        <h1>Java Server Page</h1>
        <h2>Numeros aleatórios 2</h2> 
        
        <form>
            Quantidade:
            <input type="number" name="n"/>
            <input type="submit" value="Gerar"/>
        </form>
        
        <hr/>
        <table border = "1">
            <tr>
                <th>Índice</th>
                <th>Números</th>
            </tr>
            <% if (request.getParameter("n") == null){ %>
            <tr><td colspan="2">Não há parâmetros</td></tr>
            <% } %>
            <% for (int i = 1; i<= n; i ++) { %>
            <tr>
                <td><%= i %></td>
                <td>
                    <%= ((int)(100 * Math.random()))%>
                </td>
            </tr>
           <% } %>
        </table>
        
    
</html>
