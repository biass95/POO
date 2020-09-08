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
        <title>Numeros aleatórios - JSP Page</title>
    </head>
    <body>
        <h1>Java Server Page</h1>
        <h2>Numeros aleatóriosr</h2> 
        
        <table border = "1">
            <tr>
                <th>Números</th>
            </tr>
            <% for (int i = 1; i<10; i ++) { %>
            <tr>
                <td>
                    <%= ((int)(100 * Math.random()))%>
                </td>
            </tr>
           <% } %>
        </table>
        
    </body>
</html>
