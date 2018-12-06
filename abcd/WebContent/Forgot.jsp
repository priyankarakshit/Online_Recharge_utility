<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="refresh" content="10; URL=http://localhost:8080/abcd/">
<meta name="keywords" content="automatic redirection">
        <title>Login</title>
    </head>
    <body>
       
        <%@ page import="java.sql.Date" %>
        <%@ page import="java.math.BigInteger" %>
        <%@page import = "java.text.SimpleDateFormat" %>
       <% String name = request.getParameter("name");
              String lemail = request.getParameter("lemail");
              String sanswer = request.getParameter("sanswer");
             
              
           
              
 
              // out.println(FName+" "+MName+" "+LName+" "+FAName+" "+MOName+" "+dob+" "+add+" "+city+" "+state+" "+pinno+" "+adhaar+" "+email+" "+Fphone+" "+Mphone+" "+Sphone+" "+Major);
            //  out.println();
            %>
      
        <%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%
try{

    //loading drivers for mysql
    Class.forName("com.mysql.jdbc.Driver");

//creating connection with the database
      Connection  con=DriverManager.getConnection
                ("jdbc:mysql://localhost/utility","root","root");

    PreparedStatement ps=con.prepareStatement
              ("select passcode from user where email=? and secret_answer=? ");

    ps.setString(1,lemail);
    ps.setString(2,sanswer);
   





    ResultSet rs=ps.executeQuery();
    

     if(rs.next()) {
    	 
    	
    	 out.print("your password is");
    	 out.print(rs.getString(1));
    	 
    	 
     }
     else 
    	 out.print("no such user");
    }
    catch(Exception se)
    {
        se.printStackTrace();
    }

  
%>
    </body>
</html>