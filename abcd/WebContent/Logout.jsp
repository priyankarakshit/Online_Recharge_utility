<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="refresh" content="1; URL=http://localhost:8080/abcd/">
<meta name="keywords" content="automatic redirection">
        <title>Logout</title>
    </head>
    <body>
       <h1>Logout Sucessful</h1>
   
           
  <%             
 session.removeAttribute("lemail");
  
%>
    </body>
</html>