<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
       <head>
         <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" /><!-- bootstrap-CSS -->
<link href="css/font-awesome.css" rel="stylesheet" type="text/css" media="all" /><!-- Fontawesome-CSS -->
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script type='text/javascript' src='js/jquery-2.2.3.min.js'></script>
<!-- Custom Theme files -->
<!--theme-style-->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />	
<!--//theme-style-->
<!-- metatags -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Online Recharge Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- /metatags -->
<!-- online fonts -->
<link href="//fonts.googleapis.com/css?family=Montserrat:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&amp;subset=latin-ext,vietnamese" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Oxygen:300,400,700&amp;subset=latin-ext" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese" rel="stylesheet">
<!-- /online fonts -->
        <title>Payment</title>
    </head>
    <body>
       
        <%@ page import="java.sql.Date" %>
        <%@ page import="java.math.BigInteger" %>
       <%@ page import="java.lang.*" %>
        
       <% 
       String name = (String)session.getAttribute("lemail");
              String DthCusID = request.getParameter("DthCusID");
              String Dthamount = request.getParameter("Dthamount");
            
           
              long millis=System.currentTimeMillis();  
              java.sql.Date date=new java.sql.Date(millis);  
             
              String Dth= "DTH recharge";
             
            
              
           
              
               
           
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
        PreparedStatement ps = conn.prepareStatement("select max(transac_id) from payment");
        ResultSet rs1 = ps.executeQuery();
	     long t_id;
   	 if(rs1.next()){
   		     t_id = Long.parseLong(rs1.getObject(1).toString());
   			   t_id = t_id+1;
   			  
   		   }
   	 else  
   		 t_id = 0;
   	 String tid = Long.toString(t_id);
         //   out.println("<h1> Connected to Mysql </h1>");
    String Query2 = "insert into payment values ('"+date+"','"+Dthamount+"','"+Dth+"','"+tid+"','"+DthCusID+"','"+name+"')";
                                                   // out.println(Query2);  
                                                     statement = conn.createStatement();
                                                      statement.executeUpdate(Query2);
                                                      //out.println(" <h1>Recharge Successful</h1>");
    }
    catch(Exception e)
    {
        out.println(e.getMessage());
    }
%>
<!-- Pay -->
	<div class="agile-pay w3layouts-content">
    <div class="container">
			<h3 class="w3-head">Payment</h3>
	<!--Horizontal Tab-->
        <div id="parentHorizontalTab">
            <ul class="resp-tabs-list hor_1">
                <li>Credit/Debit</li>
                
                
            </ul>
            <div class="resp-tabs-container hor_1">
                <div>
                    <form action="success.jsp" method="post" class="creditly-card-form agileinfo_form">
									<section class="creditly-wrapper wthree, w3_agileits_wrapper">
										<div class="credit-card-wrapper">
											<div class="first-row form-group">
												<div class="controls">
													<label class="control-label">Name on Card</label>
													<input class="billing-address-name form-control" type="text" required="required" placeholder="Priyanka Rakshit">
													
												</div>
												<div class="w3_agileits_card_number_grids">
													<div class="w3_agileits_card_number_grid_left">
														<div class="controls">
															<label class="control-label">Card Number</label>
															<input class="number credit-card-number form-control" type="text" name="number"  pattern="\d{16}" >
														</div>
													</div>
													<div class="w3_agileits_card_number_grid_right">
														<div class="controls">
															<label class="control-label">CVV</label>
															<input class="security-code form-control">
														</div>
													</div>
													<div class="clear"> </div>
												</div>
												<div class="controls">
													<label class="control-label">Expiration Date</label>
													<input class="expiration-month-and-year form-control" type="text" name="expiration-month-and-year" placeholder="MM / YY">
												</div>
											</div>
											<button class="submit"><span>Make a payment <i class="fa fa-long-arrow-right" aria-hidden="true"></i></span></button>
										</div>
									</section>
								</form>
<!-- credit-card -->
    </body>
</html>