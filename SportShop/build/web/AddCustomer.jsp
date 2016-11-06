<%-- 
    Document   : AddCustomer
    Created on : Oct 31, 2016, 9:57:54 AM
    Author     : STD
--%>

<%@page import="sport.Customer"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Page</title>
    </head>
    <body align = "center" bgcolor="#66FF00">
        <h1>Add Customer</h1>
        <table border="1" align = "center">
            <tr><td>
                    <form name="formAddCustomer" action="AddCustomerController">
                        Firstname: <input type="text" name="firstname" value="" /><br>
                        Lastname: <input type="text" name="lastname" value="" /><br>
                        Address: <input type="text" name="address" value="" /><br>
                        Telephone: <input type="text" name="tel" value="" /><br>
                        E-mail: <input type="text" name="email" value="" /><br><br>
                        <input type="submit" value="Submit" name="AddCustomer" />
                    </form>
                </td>
                <td>
                    
                    <form name="formSearchCustomer" action="SearchCustomerController1" >
                        Search by name: <input type="text" name="searchValue" value="" />
                        <input type="submit" value="Search" name="SearchCustomer" />
                    </form>
                </td>
            </tr>
        </table>
        <%
            String message = request.getParameter("message");
            if (message != null) {
                out.println("<h2>"+message+"</h2>");
            }
        %>
        <a href="index.html">back to first page</a>
    </body>
</html>
