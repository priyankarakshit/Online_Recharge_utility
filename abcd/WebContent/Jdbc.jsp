<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
          <meta http-equiv="refresh" content="1; URL=http://localhost:8080/abcd/">
<meta name="keywords" content="automatic redirection">
        <title>Signup</title>
    </head>
    <body>
       
        <%@ page import="java.sql.Date" %>
        <%@ page import="java.math.BigInteger" %>
        <%@page import = "java.text.SimpleDateFormat" %>
       <% String name = request.getParameter("name");
              String email = request.getParameter("email");
              String password = request.getParameter("password");
              String mobile = request.getParameter("mobile");
              String secret_answer = request.getParameter("secret_answer");
            
              
           
              
               
           
              // out.println(FName+" "+MName+" "+LName+" "+FAName+" "+MOName+" "+dob+" "+add+" "+city+" "+state+" "+pinno+" "+adhaar+" "+email+" "+Fphone+" "+Mphone+" "+Sphone+" "+Major);
            //  out.println();
            %>
      
        <%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%
    try{
        Class.forName("com.mysql.jdbc.Driver"); 
        java.sql.Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/utility","root","root"); 
        Statement statement= conn.createStatement();
         //   out.println("<h1> Connected to Mysql </h1>");
    String Query2 = "insert into user values ('"+name+"','"+email+"','"+mobile+"','"+password+"','"+secret_answer+"')";
                                                   // out.println(Query2);  
                                                     statement = conn.createStatement();
                                                      statement.executeUpdate(Query2);
                                                      out.println(" <h1>Signup Successful ...!</h1>");
    }
    catch(Exception e)
    {
        out.println(e.getMessage());
    }
%>
    </body>
</html>
