<%-- 
    Document   : customer
    Created on : Oct 30, 2016, 7:56:09 PM
    Author     : filmz
--%>

<%@page import="sport.Customer"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Customer Page</title>
    </head>
    <body align = "center" bgcolor="#66FF00">
        <h1>Customer JSP Hibernate Example!</h1>
        <div style="background-color: #FFFFCC; width:100%;">
        
        <br />
            
            
            <h2>Customer Search Form</h2>
            <form name="searchForm" action="SearchController">
                Enter Customer ID:<input type="text" name="searchValue" value="" >
                <input type="submit" value="Find Customer Details" name="searchButton" />
            </form>

            <%
                try {
                    // Create a session object if it is already not  created.
                    Customer acc = (Customer) session.getAttribute("searchResult");

                    if (acc != null) {
            %>


            <table border="1" align = "center">

                <tbody>
                    <tr>
                        <td>Customer ID</td>
                        <td><% out.println(acc.getCid()); %></td>
                    </tr>
                    <tr>
                        <td>Customer Firstname</td>
                        <td><% out.println(acc.getCfname()); %></td>
                    </tr>
                    <tr>
                        <td>Customer Lastname</td>
                        <td><% out.println(acc.getClname()); %></td>
                    </tr>
                    <tr>
                        <td>Customer Address</td>
                        <td><% out.println(acc.getCaddress()); %></td>
                    </tr>
                    <tr>
                        <td>Customer Tel.</td>
                        <td><% out.println(acc.getCtel()); %></td>
                    </tr>
                    <tr>
                        <td>Customer E-mail</td>
                        <td><% out.println(acc.getCemail()); %></td>
                    </tr>
                </tbody>
            </table>

            <%
                    }

                } catch (Exception e) {
                    out.println(e.getMessage());
                }

            %>
            </div>
            <a href="index.html">back to first page</a>
    </body>
</html>
