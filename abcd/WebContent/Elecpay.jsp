<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <meta http-equiv="refresh" content="1; URL=http://localhost:8080/abcd/#parentVerticalTab4">
<meta name="keywords" content="automatic redirection">
<title>Insert title here</title>
</head>
   <%@ page import="java.sql.Date" %>
        <%@ page import="java.math.BigInteger" %>
       <%@ page import="java.lang.*" %>
       <%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
                        	<% 
                        	String ecus_id = request.getParameter("ecus_id");
                        	
                        	int s;
                        	try{
                       		 
                             Class.forName("com.mysql.jdbc.Driver"); 
                             java.sql.Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/utility","root","root"); 
                             
                             PreparedStatement ps3 = conn.prepareStatement("select bill from electricity where customer_id=?");
                             ps3.setString(1,ecus_id);
                             ResultSet rs3 = ps3.executeQuery();
                             if(rs3.next()){
    			    		      s = rs3.getInt(1);
    			    		     String ecus_bill = Integer.toString(s); 
    			    		      session.setAttribute("ecus_bill", ecus_bill);
    			    		      //out.println("value set hogaya");
    			    		      
    			    		   }
	                   
                       	 }
                       	 catch(Exception e)
                       	    {
                       		out.println(e.getMessage());
             
                       	    }
						%>
<body>

</body>
</html>