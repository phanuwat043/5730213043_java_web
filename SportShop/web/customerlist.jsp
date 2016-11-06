<%-- 
    Document   : customerlist
    Created on : Oct 30, 2016, 7:45:46 PM
    Author     : filmz
--%>

<%@page import="sport.Customer"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CustomerList</title>
    </head>
    <body align = "center" bgcolor="#66FF00">
        <h1>CustomerList</h1>
        
        <%
            try {

                List<Customer> clist = (List<Customer>) session.getAttribute("listResult");

                if (clist != null) {
                    //out.println("not null");
                    //out.println(filmList.size());
        %>
        <table border="1" align = "center">

            <tbody>
                <tr>
                    <td>Customer ID</td>
                    <td>Customer Firstname</td>
                    <td>Customer Lastname</td>
                    <td>Address</td>

                </tr>
                <%  for (Customer acc : clist) {
                %>
                <tr>
                    <td><% out.println(acc.getCid()); %></td>
                    <td><% out.println(acc.getCfname()); %></td>
                    <td><% out.println(acc.getClname()); %></td>
                    <td><% out.println(acc.getCaddress()); %></td>  
                </tr>
                <% } %>
            </tbody>
        </table>  
        <%

                } else {
                    out.println("return null");
                }
            } catch (Exception e) {
                e.printStackTrace();
                out.println("error");
            }

        %>
        <a href="index.html">back to first page</a>
    </body>
</html>
