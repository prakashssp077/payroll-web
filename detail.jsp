<%-- 
    Document   : detail
    Created on : Nov 2, 2019, 2:11:58 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Details</title>
        <style>
            body{
                font-family:cursive,sans-serif;
                text-align: center;
                margin-top: 20%;
                margin-bottom: 20%;
                width: 100%;
               background-image: linear-gradient(#2342aa,#e20ed1);
            }
        </style>
    </head>
    <body>
        <h1>Employee details</h1>
        <form action="detail1.jsp" method="POST">
            Employee Name:<input type="text" name="name" value="" />
            <br>
            <br>
            <input type="submit" value="Generate Bill" />
        </form>
    </body>
</html>
