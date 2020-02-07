<%-- 
    Document   : detail1
    Created on : Nov 2, 2019, 2:37:35 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Details</title>
        <style>
            body{
                font-family:cursive,sans-serif;
               margin-left: 10%;
           
                width:50%;
               background-image: linear-gradient(#2ccccc,#a2324a);
            }
            table,th,td{
                text-align: center;
                border: 2px solid black;
                padding: 20px;
                
            }
            th{
                background-color: yellowgreen;
                width:10%;
            }
            td{
                background-color: buttonface;          
            }
            input{
                width:50%;
                padding: 10px;
                margin-top: 5%;
                
            }
            
        </style>
    </head>
    <body>
       
    <%
    
    try{
      
        String name=request.getParameter("name");
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/emp?user=root&password=root");
        PreparedStatement pst=conn.prepareStatement("select * from empdet1 where name=?");
        pst.setString(1,name);
        ResultSet rs=pst.executeQuery();
        while(rs.next())
        { %>
        <table>
            <tr>
                <th> ID:</th>
                <td><%=rs.getString("id")%></td>
            </tr>
            <tr>
                <th> Name:</th>
                <td><%=rs.getString("name")%></td>
            </tr>
            <tr>
                <th> Address:</th>
                <td><%=rs.getString("address")%></td>
            </tr>
            <tr>
                <th> Job:</th>
                <td><%=rs.getString("job")%></td>
            </tr>
            <tr>
                <th> salary:</th>
                <td><%=rs.getString("salary")%></td>
            </tr>
            <tr>
                <th> Worked Days:</th>
                <td><%=rs.getString("days")%></td>
            </tr>
            <tr>
                <th> Report:</th>
                <td><%=rs.getString("report")%></td>
            </tr>
        </table
        <form action="payment.jsp" method="POST">
            <a href="payment.jsp" ><input type="submit" value="Generate bil" /></a>
        </form>
        <%}
    }
        catch(Exception e)
                {
                    out.println("something went wrong");
                }
                
    %>
    </body>
</html>
