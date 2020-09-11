<%-- 
    Document   : index
    Created on : 31 de ago de 2020, 20:08:17
    Author     : biancasobral
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

   <%  Exception requestException = null;
       int n;
                try{ n = Integer.parseInt(request.getParameter("n")); 
                } catch(Exception ex ) {
                    n = 0;
                    requestException = ex;
        } %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Numeros aleatórios 2 - JSP Page</title>
    </head>
    
        <h4><a href="index.jsp">Voltar</a></h4>
        <h1>Java Server Page</h1>
        <h2>Tabuada - Java Server Page</h2> 
        
        <form>
            Quantidade:
            <input type="number" name="n"/>
            <input type="submit" value="Gerar"/>
        </form>
        
        <hr/>
        <table >
            <tr>
                <th>Tabuada</th>
            </tr>
            <% if (request.getParameter("n") == null){ %>
            <tr><td colspan="2">Não há parâmetros</td></tr>
            <% } else  if(requestException!=null){%>
            <tr><td colspan="2">Parâmetro Inválido</td></tr>
            <%} else {%> 
            <% for (int i = 1; i<= 10; i ++) { %>
            <tr>
                <td><%= n %></td>
                <td>x</td>
                <td><%= i %></td>
                <td> = </td>
                <td><%= (n * i)%></td>
             
            </tr>
           <% }} %>
        </table>
        
    
</html>
