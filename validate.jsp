<%-- 
    Document   : validate
    Created on : Nov 2, 2019, 2:02:14 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%
    
    try{
        String username=request.getParameter("username");
        String password=request.getParameter("password");
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/emp?user=root&password=root");
        PreparedStatement pst=conn.prepareStatement("select username,password from login where username=? and password=?");
        pst.setString(1,username);
        pst.setString(2,password);
        ResultSet rs=pst.executeQuery();
        if(rs.next())
        {
            out.println("valid ");
            RequestDispatcher rd=request.getRequestDispatcher("detail.jsp");
            rd.forward(request, response);
        }
        else{
            out.println("invalid");
        }
    }
        catch(Exception e)
                {
                    out.println("something went wrong");
                }
                
    %>