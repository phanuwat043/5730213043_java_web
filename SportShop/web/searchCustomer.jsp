<%-- 
    Document   : searchCustomer
    Created on : Nov 6, 2016, 12:43:16 AM
    Author     : filmz
--%>

<%@page import="java.util.List"%>
<%@page import="sport.Customer"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search Cutomer</title>
    </head>
    <body align = "center" bgcolor="#66FF00">
        <h1>Search Customer from name</h1>
        
        <%
            try {
                List<Customer> clist = (List<Customer>) session.getAttribute("SearchCustomer");
                if (clist != null) {
                    
        %>
        <table border="1" align = "center">
            <tbody>
                <tr>
                    <td>Customer ID</td>
                    <td>Firstname</td>
                    <td>Lastname</td>
                </tr>
                <% for (Customer cust : clist) {
                %>
                <tr>
                    <td><% out.println(cust.getCid());
                        %></td>
                    <td><% out.println(cust.getCfname());
                        %></td>
                    <td><% out.println(cust.getClname());
                        %></td>
                </tr>
                <% } %>
            </tbody>
        </table>
        <%
                }else{
                    out.print("<h2>Empty Value</h2>");
                }
            } catch (Exception e) {
                e.printStackTrace();
                out.println("error");
            }
        %>
        <br><br><a href="AddCustomer.jsp">back to search name page</a><br>
        <a href="index.html">back to first page</a>
    </body>
</html>
