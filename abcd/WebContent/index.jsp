
<!DOCTYPE html>
<!-- html -->
<html>
<!-- head -->
<head>
<title>Recharge Utility</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" /><!-- bootstrap-CSS -->
<link rel="stylesheet" href="css/bootstrap-select.css"><!-- bootstrap-select-CSS -->
<link href="css/font-awesome.css" rel="stylesheet" type="text/css" media="all" /><!-- Fontawesome-CSS -->
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script type='text/javascript' src='js/jquery-2.2.3.min.js'></script>
<!-- Custom Theme files -->
<!--theme-style-->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />	
<!--//theme-style-->
<!--meta data-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Online Recharge Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--//meta data-->
<!-- online fonts -->
<link href="//fonts.googleapis.com/css?family=Montserrat:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&amp;subset=latin-ext,vietnamese" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Oxygen:300,400,700&amp;subset=latin-ext" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese" rel="stylesheet">
<!-- /online fonts -->
       
</head>
<!-- //head -->
<!-- body -->
<body >
<!--header-->
<header>
	<div class="container">
		<!--logo-->
			<div class="logo">
				<h1><a href="index.jsp">Recharge Utility</a></h1>
			</div>
		<!--//logo-->
		  <div class="w3layouts-login">
		          <%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%! int val; %>
		  <% String name = (String)session.getAttribute("lemail");
		  try{

			    //loading drivers for mysql
			    Class.forName("com.mysql.jdbc.Driver");

			//creating connection with the database
			      Connection  con=DriverManager.getConnection
			                ("jdbc:mysql://localhost/utility","root","root");
			      PreparedStatement ps1 = con.prepareStatement("select count(*) from payment where email=?");
			      ps1.setString(1,name);
			      ResultSet rs1 = ps1.executeQuery();
			     
			    	 if(rs1.next()){
			    		     val = Integer.parseInt(rs1.getObject(1).toString());
			    			   val = val*50;
			    			  
			    		   }
			    	 else  
			    		 val = 0;
		  }
		    catch(Exception se)
		    {
		        se.printStackTrace();
		    }

		     //String point = (String)session.getAttribute("val"); 
		     %>
				<a data-toggle="modal" data-target="#myModal" href="#"><i class="glyphicon glyphicon-user"> </i><% if(name!= null)
				{ out.print("welcome " + "" +name);
				  out.print(" Your Points are  "+val);
					out.print ("<a href='Logout.jsp'>Logout</a>");
				}
				   else 
				             out.print("Login/SignUp");
					         %></a>
			</div>    
				<div class="clearfix"></div>
    <!--Login modal-->
        <div class="modal fade" id="myModal" tabindex="-1" role="dialog" 
            aria-hidden="true">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                            &times;</button>
                        <h4 class="modal-title" id="myModalLabel">
                            Recharge Utility</h4>
                    </div>
                    <div class="modal-body">
                        <div class="row">
                            <div class="col-md-8 extra-w3layouts" style="border-right: 1px dotted #C2C2C2;padding-right: 30px;">
                                <!-- Nav tabs -->
                                <ul class="nav nav-tabs">
                                    <li class="active"><a href="#Login" data-toggle="tab">Login</a></li>
                                    <li><a href="#Registration" data-toggle="tab">SignUp</a></li>
                                    <li><a href="#ForgotPassword" data-toggle="tab">Forgot Password</a></li>
                                </ul>
                                <!-- Tab panes -->
                                <div class="tab-content">
                                <div class="tab-pane " id="ForgotPassword">
                                        <form  class="form-horizontal" action="Forgot.jsp" method="post">
                                        <div class="form-group">
                                            <label for="email" class="col-sm-2 control-label">
                                                Email</label>
                                            <div class="col-sm-10">
                                                <input type="email" class="form-control" id="email1" placeholder="Email" required="required" name = "lemail"/>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputPassword1" class="col-sm-2 control-label">
                                                Security Answer</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" id="exampleInputPassword1" placeholder="sanswer" required="required" name="sanswer"/>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-sm-2">
                                            </div>
                                            <div class="col-sm-10">
                                                <button type="submit" class="submit btn btn-primary btn-sm">
                                                    Submit</button>
                                                
                                            </div>
                                        </div>
                                        </form>
                                    </div>
                                    <div class="tab-pane active" id="Login">
                                        <form  class="form-horizontal" action="Login.jsp" method="post">
                                        <div class="form-group">
                                            <label for="email" class="col-sm-2 control-label">
                                                Email</label>
                                            <div class="col-sm-10">
                                                <input type="email" class="form-control" id="email1" placeholder="Email" required="required" name = "lemail"/>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputPassword1" class="col-sm-2 control-label">
                                                Password</label>
                                            <div class="col-sm-10">
                                                <input type="password" class="form-control" id="exampleInputPassword1" placeholder="password" required="required" name="lpassword"/>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-sm-2">
                                            </div>
                                            <div class="col-sm-10">
                                                <button type="submit" class="submit btn btn-primary btn-sm">
                                                    Submit</button>
                                                
                                            </div>
                                        </div>
                                        </form>
                                    </div>
                                    <div class="tab-pane" id="Registration">
                                        <form  class="form-horizontal" action="Jdbc.jsp" method="post">
                                        <div class="form-group">
                                            <label for="email" class="col-sm-2 control-label">
                                                Name</label>
                                            <div class="col-sm-10">
                                                <div class="row">
                                                    <div class="col-md-3 col-sm-3 col-xs-3">
                                                        <select class="form-control">
                                                            <option>Mr.</option>
                                                            <option>Ms.</option>
                                                            <option>Mrs.</option>
                                                        </select>
                                                    </div>
                                                    <div class="col-md-9 col-sm-9 col-xs-9">
                                                        <input type="text" class="form-control" placeholder="Name" required="required" name = "name" />
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="email" class="col-sm-2 control-label">
                                                Email</label>
                                            <div class="col-sm-10">
                                                <input type="email" class="form-control" id="email" placeholder="Email" required="required" name = "email" />
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="mobile" class="col-sm-2 control-label">
                                                Phone Number</label>
                                            <div class="col-sm-10">
                                                <input type="tel" class="form-control" id="mobile" placeholder="Mobile" required="required" name ="mobile"/>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="password" class="col-sm-2 control-label">
                                                Password</label>
                                            <div class="col-sm-10">
                                                <input type="password" class="form-control" id="password" placeholder="Password" required="required" name ="password" />
                                            </div>
                                        </div>
                                         <div class="form-group">
                                            <label for="password" class="col-sm-2 control-label">
                                                What is your pet name?</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" id="password" placeholder="jonny" required="required" name ="secret_answer" />
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-sm-2">
                                            </div>
                                            <div class="col-sm-10">
                                                <button type="submit" class="submit btn btn-primary btn-sm">
                                                    Save & Continue</button>
                                                <button type="reset" class="submit btn btn-default btn-sm">
                                                    Cancel</button>
                                            </div>
                                        </div>
                                        </form>
                                    </div>
                                </div>
                                
                                <!--  div id="OR" >
                                    OR</div>
                            </div>
                            <div class="col-md-4 extra-agileits">
                                <div class="row text-center sign-with">
                                    <div class="col-md-12">
                                        <h3 class="other-nw">
                                            Sign in with</h3>
                                    </div-->
                                    <!--div class="col-md-12">
                                        <div class="btn-group btn-group-justified">
                                            <a href="#" class="btn btn-primary">Facebook</a> <a href="#" class="btn btn-danger">
                                                Google +</a>
                                        </div-->
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    <!--//Login modal-->
    </div>
</header>



    <!--Vertical Tab-->
	<div class="categories-section main-grid-border" id="mobilew3layouts">
		<div class="container">
			<div class="category-list">
				<div id="parentVerticalTab">
					<div class="agileits-tab_nav">
					<ul class="resp-tabs-list hor_1">
						<li><i class="icon fa fa-mobile" aria-hidden="true"></i>Mobile</li>
						<li><i class="icon fa fa-television" aria-hidden="true"></i>DTH</li>
						<li><i class="icon fa fa-credit-card" aria-hidden="true"></i>Data Card</li>
						<li><i class="icon fa fa-lightbulb-o" aria-hidden="true"></i>Electricity</li>
						<li><i class="icon fa fa-phone" aria-hidden="true"></i>Land Line</li>
						
						<li><i class="icon fa fa-tint" aria-hidden="true"></i>Water</li>
						<li><i class="icon fa fa-subway" aria-hidden="true"></i>Metro</li>
						<li><i class="icon fa fa-book" aria-hidden="true"></i>Payment History</li>
						
					</ul>
					</div>
					<div class="resp-tabs-container hor_1">
                        <!-- tab1 -->
						<div>
                            <div class="tabs-box">
                                
                    <img src="images/mobile.png" class="w3ls-mobile" alt="" data-pin-nopin="true">
                <ul class="tabs-menu">
                    <li><a href="#tab1"><label class="radio"><input type="radio" name="radio" checked=""><i></i>Prepaid</label></a></li>
                    <li><a href="#tab2"><label class="radio"><input type="radio" name="radio"><i></i>Postpaid</label></a></li>
                </ul>
			     <div class="clearfix"> </div>
			     <div class="tab-grids">
                    <div id="tab1" class="tab-grid">  
		                      <div class="login-form">	
						<form action="Prepaid.jsp" method="post" id="signup">
						<ol>							
							<li>
                                <h4>Enter your mobile number</h4>
								<input type="text" id="tel"  pattern="\d{10}" placeholder="Enter Mobile Number" required="required" name = "pre_no" />
								<p class="validation01">
									<span class="invalid">Please enter a valid mobile number</span>
									<span class="valid">That's what we wanted!</span>
								</p>
							</li>
                            <li>
                                <div class="agileits-select">
                                <select class="selectpicker show-tick" data-live-search="true" required="required" name= "pre_operator" >
                                  <option data-tokens="Select Operator">Select Operator</option>
                                  <option data-tokens="Airtel">Airtel</option>
                                  <option data-tokens="Jio">Jio</option>
                                  <option data-tokens="BSNL">BSNL</option>
                                 
                                  <option data-tokens="Vodafone">Vodafone</option>
                                  <option data-tokens="Idea">Idea</option>
                                  
                                </select>
                                </div>
                            </li>
                            <li>
                                <div class="agileits-select">
                                <select class="selectpicker show-tick" data-live-search="true" required="required" name ="pre_circle" >
                                  <option data-tokens="Select Circle">Select Circle</option>
                                  <option data-tokens="Chennai">Chennai</option>
                                  <option data-tokens="Delhi NCR">Delhi NCR</option>
                                  <option data-tokens="Kolkata">Kolkata</option>
                                  <option data-tokens="Mumbai">Mumbai</option>
                                  <option data-tokens="Maharashtra & Goa">Maharashtra & Goa</option>
                                  <option data-tokens="Assam">Assam</option>
                                  <option data-tokens="Bihar & Jharkhand">Bihar & Jharkhand</option>
                                  <option data-tokens="Gujarat">Gujarat</option>
                                  <option data-tokens="Haryana">Haryana</option>
                                  <option data-tokens="Himachal Pradesh">Himachal Pradesh</option>
                                  <option data-tokens="Jummu & Kashmir">Jummu & Kashmir</option>
                                  <option data-tokens="Karnataka">Karnataka</option>
                                  <option data-tokens="Kerala">Kerala</option>
                                  <option data-tokens="Andhra Pradesh">Andhra Pradesh</option>
                                  <option data-tokens="MP & Chattisgarh">MP & Chattisgarh</option>
                                  <option data-tokens="North East">North East</option>
                                  <option data-tokens="Orissa">Orissa</option>
                                  <option data-tokens="Punjab">Punjab</option>
                                  <option data-tokens="Rajasthan">Rajasthan</option>
                                  <option data-tokens="Tamilnadu">Tamilnadu</option>
                                  <option data-tokens="UP East">UP East</option>
                                  <option data-tokens="UP West & Utterkhand">UP West & Utterkhand</option>
                                  <option data-tokens="West Bengal">West Bengal</option>
                                </select>
                                </div>
                            </li>
                            <li>
                                <div class="mobile-right ">
                                    <h4>How Much To Recharge?</h4>
                                    <div class="mobile-rchge">
                                        <input type="text" placeholder="Enter amount" required="required" name = "pre_amount" />	
                                    </div>
                                    <div class="mobile-rchge">
                                        <a href="plans.jsp">VIEW ALL PLANS</a>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </li>
                            <li>
                                <input type="submit" class="submit" value="Recharge Now" />
                            </li>
				        </ol>
						</form>	
																							
						</div>	

                    </div>
                    <div id="tab2" class="tab-grid">
		                      <div class="login-form">
						<form action="pay.jsp" method="post" id="signup">
						<ol>							
							<li>
                                <h4>Enter your mobile number</h4>
								<input type="tel" id="tel" name="tel" pattern="\d{10}" placeholder="Enter Mobile Number" required name = "post_no"/>
								<p class="validation01">
									<span class="invalid">Please enter a valid mobile number</span>
									<span class="valid">That's what we wanted!</span>
								</p>
							</li>
                            <li>
                                <div class="agileits-select">
                                <select class="selectpicker show-tick" data-live-search="true" name = "post_operator" >
                                  <option data-tokens="Select Operator">Select Operator</option>
                                  <option data-tokens="Airtel">Airtel</option>
                                  <option data-tokens="Aircel">Aircel</option>
                                  <option data-tokens="BSNL">BSNL</option>
                                  <option data-tokens="Tata Docomo">Tata Docomo</option>
                                  <option data-tokens="Reliance GSM">Reliance GSM</option>
                                  <option data-tokens="Reliance CDMA">Reliance CDMA</option>
                                  <option data-tokens="Telenor">Telenor</option>
                                  <option data-tokens="Jio">Jio</option>
                                  <option data-tokens="Vodafone">Vodafone</option>
                                  <option data-tokens="Idea">Idea</option>
                                  <option data-tokens="MTS">MTS</option>
                                </select>
                                </div>
                            </li>
                            <li>
                                <div class="agileits-select">
                                <select class="selectpicker show-tick" data-live-search="true" required="required" name="post_circle" >
                                  <option data-tokens="Select Circle">Select Circle</option>
                                  <option data-tokens="Chennai">Chennai</option>
                                  <option data-tokens="Delhi NCR">Delhi NCR</option>
                                  <option data-tokens="Kolkata">Kolkata</option>
                                  <option data-tokens="Mumbai">Mumbai</option>
                                  <option data-tokens="Maharashtra & Goa">Maharashtra & Goa</option>
                                  <option data-tokens="Assam">Assam</option>
                                  <option data-tokens="Bihar & Jharkhand">Bihar & Jharkhand</option>
                                  <option data-tokens="Gujarat">Gujarat</option>
                                  <option data-tokens="Haryana">Haryana</option>
                                  <option data-tokens="Himachal Pradesh">Himachal Pradesh</option>
                                  <option data-tokens="Jummu & Kashmir">Jummu & Kashmir</option>
                                  <option data-tokens="Karnataka">Karnataka</option>
                                  <option data-tokens="Kerala">Kerala</option>
                                  <option data-tokens="Andhra Pradesh">Andhra Pradesh</option>
                                  <option data-tokens="MP & Chattisgarh">MP & Chattisgarh</option>
                                  <option data-tokens="North East">North East</option>
                                  <option data-tokens="Orissa">Orissa</option>
                                  <option data-tokens="Punjab">Punjab</option>
                                  <option data-tokens="Rajasthan">Rajasthan</option>
                                  <option data-tokens="Tamilnadu">Tamilnadu</option>
                                  <option data-tokens="UP East">UP East</option>
                                  <option data-tokens="UP West & Utterkhand">UP West & Utterkhand</option>
                                  <option data-tokens="West Bengal">West Bengal</option>
                                </select>
                                </div>
                            </li>
                            <li>
                                <div class="mobile-right ">
                                    <h4>How Much To Pay?</h4>
                                    <div class="mobile-rchge">
                                        <input type="text" placeholder="Enter amount" name="amount" required="required" name ="post_amount" />
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </li>
                            <li>
                                <input type="submit" class="submit" value="Pay bill" />
                            </li>
				        </ol>
						</form>	
																							
						</div>	
                    </div>
				</div>
			
			<div class="clearfix"> </div>
		</div>
	<!-- script -->
		<script>
			$(document).ready(function() {
				$("#tab2").hide();
				$("#tab3").hide();
				$("#tab4").hide();
				$(".tabs-menu a").click(function(event){
					event.preventDefault();
					var tab=$(this).attr("href");
					$(".tab-grid").not(tab).css("display","none");
					$(tab).fadeIn("slow");
				});
			});
		</script>
                            
							
                            
            
                    
			             </div>
                        <!-- /tab1 -->
			<!-- tab2 -->
						<div>
							
		                      <div class="login-form">
                                  <i class="icon fa fa-television inner-icon" aria-hidden="true"></i>
						<form action="dthpay.jsp" method="post" id="signup">
                            
						<ol>	
                            <li>
                                <div class="agileits-select">
                                <select class="selectpicker show-tick" data-live-search="true">
                                  <option data-tokens="Select Operator">DTH Operator</option>
                                  <option data-tokens="Airtel">Airtel</option>
                                  <option data-tokens="Aircel">Aircel</option>
                                  <option data-tokens="BSNL">BSNL</option>
                                  <option data-tokens="Tata Docomo">Tata Docomo</option>
                                  <option data-tokens="Reliance GSM">Reliance GSM</option>
                                  <option data-tokens="Reliance CDMA">Reliance CDMA</option>
                                  <option data-tokens="Telenor">Telenor</option>
                                  <option data-tokens="Jio">Jio</option>
                                  <option data-tokens="Vodafone">Vodafone</option>
                                  <option data-tokens="Idea">Idea</option>
                                  <option data-tokens="MTS">MTS</option>
                                </select>
                                </div>
                            </li>
                            <li>
                              <input type="text" id="customer" name = "DthCusID" value="Enter Customer ID" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Enter Customer ID';}" required="">	
                            </li>
                            <li>
                                <div class="mobile-right ">
                                    <div class="mobile-rchge">
                                        <input type="text" placeholder="Enter amount" name="Dthamount" required="required"  />
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </li>
                            <li>
                                <input type="submit" class="submit" value="Recharge Now" />
                            </li>
				        </ol>
						</form>	
																							
						</div>	
						</div>
                        <!-- /tab2 -->
                        
                        <!-- tab3 -->
				<div>
                    <i class="icon fa fa-credit-card inner-icon" aria-hidden="true"></i>
                    <div id="tab2" class="tab-grid">
		                      <div class="login-form">
						<form action="DCpay.jsp" method="post" id="signup">
						<ol>							
							<li>
                                  <h4>Enter your Datacard number</h4>
								<input type="tel" id="tel" name="DCno" pattern="\d{10}" placeholder="Enter Datacard Number" required />
								<p class="validation01">
									<span class="invalid">Please enter a valid 10 digit Datacard number</span>
									<span class="valid">That's what we wanted!</span>
								</p>
							</li>
                            <li>
                                <div class="agileits-select">
                                <select class="selectpicker show-tick" data-live-search="true">
                                  <option data-tokens="Select Operator">Select Operator</option>
                                  <option data-tokens="Operator1">Operator1</option>
                                  <option data-tokens="Operator2">Operator2</option>
                                  <option data-tokens="Operator3">Operator3</option>
                                  <option data-tokens="Operator4">Operator4</option>
                                  <option data-tokens="Operator5">Operator5</option>
                                  <option data-tokens="Operator6">Operator6</option>
                                </select>
                                </div>
                            </li>
                            <li>
                                <div class="mobile-right ">
                                    <h4>How Much To Pay?</h4>
                                    <div class="mobile-rchge">
                                       <input type="text" placeholder="Enter amount" name="DCamount" required="required"  />
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </li>
                            <li>
                                <input type="submit" class="submit" value="Recharge Now" />
                            </li>
				        </ol>
						</form>	
																							
						</div>	

                    </div>
                    </div>
                        <!-- /tab3 -->
                        
                        
                        <!-- tab4 -->
                        <div>
                            <i class="icon fa fa-lightbulb-o inner-icon" aria-hidden="true"></i>
                    <div id="tab2" class="tab-grid">
		                      <div class="login-form">
		                     
						<form action="Elecpay.jsp" method="post" id="signup">
						<ol>	
                            <li>
                                <div class="agileits-select">
                                <select class="selectpicker show-tick" data-live-search="true">
                                  <option data-tokens="Select Operator">Select Operator</option>
                                  <option data-tokens="Operator1">NTPC </option>
                                  <option data-tokens="Operator2">APDCL</option>
                                  <option data-tokens="Operator3">APSEB</option>
                                  <option data-tokens="Operator4">APGENCO</option>
                                  <option data-tokens="Operator5">TSGENCO</option>
                                  
                                </select>
                                </div>
                            </li>
                            <li>
                              <input type="text" id="customer" name="ecus_id" value="Customer Account Number" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Customer Account Number';}" required="">	
                            </li>
                            <% String ecus_bill = (String)session.getAttribute("ecus_bill");
                               out.println("Bill Amount"+"<p>"+ecus_bill+"</p>");
                            %>
                            <li>
                              	
                            </li>
                            
                            <li>
                                <input type="submit" class="submit" value="Proceed" />
                            </li>
				        </ol>
						</form>	
					    <form action="Elecpay1.jsp" method="post" id="signup">
					    <ol>
					     <li>
                              <input type="text" id="customer" name="ecus_idp" value="Customer Account Number" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Customer Account Number';}" required= "required">	
                            </li>
                            <li>
                              <input type="text" id="customer" name="ecus_amount" value="Amount" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Customer Account Number';}" required= "required">	
                            </li>
                            <li>
                                <input type="submit" class="submit" value="Proceed" />
                            </li>
                            </ol>
					    </form>																	
						</div>	
						</div>
                        </div>
                        <!-- /tab4 -->
                       
                       
						
                       
                        <!-- tab5 -->
						<div>
                            
							<i class="icon fa fa-phone inner-icon" aria-hidden="true"></i>
                    <div id="tab2" class="tab-grid">
		                      <div class="login-form">
						<form action="telbill.jsp" method="post" id="signup">
						<ol>	
                            <li>
                                <div class="agileits-select">
                                <select class="selectpicker show-tick" data-live-search="true">
                                  <option data-tokens="Select Operator">Select Operator</option>
                                  <option data-tokens="Operator1">Operator1</option>
                                  <option data-tokens="Operator2">Operator2</option>
                                  <option data-tokens="Operator3">Operator3</option>
                                  <option data-tokens="Operator4">Operator4</option>
                                  <option data-tokens="Operator5">Operator5</option>
                                  <option data-tokens="Operator6">Operator6</option>
                                  <option data-tokens="Operator7">Operator7</option>
                                </select>
                                </div>
                            </li>
                            <li>
                              <input type="text" id="customer" name="tcus_id" value="Telephone Number(with STD code)" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Telephone Number(with STD code)';}" required="">	
                            </li>
                            <li>
                                <% String tcus_bill = (String)session.getAttribute("tcus_bill");
                               out.println("Bill Amount"+"<p>"+tcus_bill+"</p>");
                            %>
                            </li>
                            <li>
                                <input type="submit" class="submit" value="Get Bill" />
                            </li>
				        </ol>
						</form>	
						 <form action="telpay.jsp" method="post" id="signup">
					    <ol>
					     <li>
                              <input type="text" id="customer" name="tcus_idp" value="Telephone Number" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Customer Account Number';}" required= "required">	
                            </li>
                            <li>
                              <input type="text" id="customer" name="tcus_amount" value="Amount" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Customer Account Number';}" required= "required">	
                            </li>
                            <li>
                                <input type="submit" class="submit" value="Pay" />
                            </li>
                            </ol>
					    </form>	
																							
						</div>	
						</div>
							
						</div>
                        <!-- /tab5 -->
                        
                        <!-- tab8 -->
						<div>
							<i class="icon fa fa-tint inner-icon" aria-hidden="true"></i>
                    <div id="tab2" class="tab-grid">
		                      <div class="login-form">
						<form action="waterbill.jsp" method="post" id="signup">
						<ol>	
                            <li>
                                <div class="agileits-select">
                                <select class="selectpicker show-tick" data-live-search="true">
                                  <option data-tokens="Water Provider">Water Provider</option>
                                  <option data-tokens="Provider1">Provider1</option>
                                  <option data-tokens="Provider2">Provider2</option>
                                  <option data-tokens="Provider3">Provider3</option>
                                  <option data-tokens="Provider4">Provider4</option>
                                  <option data-tokens="Provider5">Provider5</option>
                                  <option data-tokens="Provider6">Provider6</option>
                                  <option data-tokens="Provider7">Provider7</option>
                                </select>
                                </div>
                            </li>
                            <li>
                              <input type="text" id="customer" name ="wcus_id"value="Consumer Number" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Consumer Number';}" required="">	
                            </li>
                             <li>
                                <% String wcus_bill = (String)session.getAttribute("wcus_bill");
                               out.println("Bill Amount"+"<p>"+wcus_bill+"</p>");
                            %>
                            </li>
                            <li>
                                <input type="submit" class="submit" value="Get Bill" />
                            </li>
				        </ol>
						</form>	
						 <form action="waterpay.jsp" method="post" id="signup">
					    <ol>
					     <li>
                              <input type="text" id="customer" name="wcus_idp" value="Telephone Number" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Customer Account Number';}" required= "required">	
                            </li>
                            <li>
                              <input type="text" id="customer" name="wcus_amount" value="Amount" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Customer Account Number';}" required= "required">	
                            </li>
                            <li>
                                <input type="submit" class="submit" value="Pay" />
                            </li>
                            </ol>
					    </form>	
																									
						</div>	
						</div>
						</div>
                        <!-- /tab8 -->
                        
                        <!-- tab9 -->
						<div>
							<i class="icon fa fa-subway inner-icon" aria-hidden="true"></i>
                    <div id="tab2" class="tab-grid">
		                      <div class="login-form">
						<form action="Metropay.jsp" method="post" id="signup">
						<ol>	
                            <li>
                                <div class="agileits-select">
                                <select class="selectpicker show-tick" data-live-search="true">
                                  <option data-tokens="Select Operator">Select Metro</option>
                                  <option data-tokens="Operator1">Delhi</option>
                                  <option data-tokens="Operator2">Mumbai</option>
                                  <option data-tokens="Operator3">Kolkata</option>
                                  <option data-tokens="Operator4">Hyderabad</option>
                                </select>
                                </div>
                            </li>
                            <li>
                              <input type="text" id="customer" value="Enter Metro Number" name= "Metrono"onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Enter Metro Number';}" required="">	
                            </li>
                            <li>
                              <input type="text" id="amount" value="Enter amount" name= "Metroamount"onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Enter Amount';}" required="">	
                            </li>
                            <li>
                                <input type="submit" class="submit" value="Proceed" />
                            </li>
				        </ol>
						</form>	
																							
						</div>	
						</div>
						</div>
                        <!-- /tab9 -->
                 
                        
                        <!-- tab10 -->
				             <div>
							
							<i class="icon fa fa-book inner-icon" aria-hidden="true"></i>
                    <div id="tab2" class="tab-grid">
		                      <div class="login-form">
		                      <%
		                      try{

		          			    //loading drivers for mysql
		          			    Class.forName("com.mysql.jdbc.Driver");

		          			//creating connection with the database
		          			      Connection  con=DriverManager.getConnection
		          			                ("jdbc:mysql://localhost/utility","root","root");
		          			      PreparedStatement ps2 = con.prepareStatement("select * from payment where email=?");
		          			      ps2.setString(1,name);
		          			      ResultSet rs2 = ps2.executeQuery();
		          			     
		          			    out.println("<P ALIGN='center'><TABLE BORDER=1>");
		          			  ResultSetMetaData rsmd = rs2.getMetaData();
		          			  int columnCount = rsmd.getColumnCount();
		          			  // table header
		          			  out.println("<TR>");
		          			  for (int i = 0; i < columnCount-1; i++) {
		          			    out.println("<TH>" + rsmd.getColumnLabel(i + 1) + "</TH>");
		          			    }
		          			  out.println("</TR>");
		          			  // the data
		          			  while (rs2.next()) {
		          			  
		          			   out.println("<TR>");
		          			   for (int i = 0; i < columnCount-1; i++) {
		          			     out.println("<TD>" + rs2.getString(i + 1) + "</TD>");
		          			     }
		          			   out.println("</TR>");
		          			   }
		          			  out.println("</TABLE></P>");
		          		  }
		          		    catch(Exception se)
		          		    {
		          		        se.printStackTrace();
		          		    }
		                      
		                      
		                      %>
						
																							
						</div>	
						</div>
						</div>	
                        <!-- /tab10 -->
                        
                        <!-- tab11 -->
				
                        <!-- /tab11 -->
                        
                        <!-- tab12 -->
						
                        <!-- /tab12 -->
                        
                        <!-- tab13 -->
					
                        <!-- /tab13 -->
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
	</div>
	
	<!--Plug-in Initialisation-->
	<script type="text/javascript">
    $(document).ready(function() {

        //Vertical Tab
        $('#parentVerticalTab').easyResponsiveTabs({
            type: 'vertical', //Types: default, vertical, accordion
            width: 'auto', //auto or any width like 600px
            fit: true, // 100% fit in a container
            closed: 'accordion', // Start closed if in accordion view
            tabidentify: 'hor_1', // The tab groups identifier
            activate: function(event) { // Callback function if tab is switched
                var $tab = $(this);
                var $info = $('#nested-tabInfo2');
                var $name = $('span', $info);
                $name.text($tab.text());
                $info.show();
            }
        });
    });
</script>
	<!-- //Categories -->




	

    

    
	
<!--footer-->

    
<!-- for bootstrap working -->
		<script src="js/bootstrap.js"></script>
<!-- //for bootstrap working --><!-- Responsive-slider -->
    <!-- Banner-slider -->
<script src="js/responsiveslides.min.js"></script>
   <script>
    $(function () {
      $("#slider").responsiveSlides({
      	auto: true,
      	speed: 500,
        namespace: "callbacks",
        pager: true,
      });
    });
  </script>
    <!-- //Banner-slider -->
<!-- //Responsive-slider -->   
<!-- Bootstrap select option script -->
<script src="js/bootstrap-select.js"></script>
<script>
  $(document).ready(function () {
    var mySelect = $('#first-disabled2');

    $('#special').on('click', function () {
      mySelect.find('option:selected').prop('disabled', true);
      mySelect.selectpicker('refresh');
    });

    $('#special2').on('click', function () {
      mySelect.find('option:disabled').prop('disabled', false);
      mySelect.selectpicker('refresh');
    });

    $('#basic2').selectpicker({
      liveSearch: true,
      maxOptions: 1
    });
  });
</script>
<!-- //Bootstrap select option script -->
    
<!-- easy-responsive-tabs -->    
<link rel="stylesheet" type="text/css" href="css/easy-responsive-tabs.css " />
<script src="js/easyResponsiveTabs.js"></script>
<!-- //easy-responsive-tabs --> 
    <!-- here stars scrolling icon -->
			<script type="text/javascript">
				$(document).ready(function() {
					/*
						var defaults = {
						containerID: 'toTop', // fading element id
						containerHoverID: 'toTopHover', // fading element hover id
						scrollSpeed: 1200,
						easingType: 'linear' 
						};
					*/
										
					$().UItoTop({ easingType: 'easeOutQuart' });
										
					});
			</script>
			<!-- start-smoth-scrolling -->
			<script type="text/javascript" src="js/move-top.js"></script>
			<script type="text/javascript" src="js/easing.js"></script>
			<script type="text/javascript">
				jQuery(document).ready(function($) {
					$(".scroll").click(function(event){		
						event.preventDefault();
						$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
					});
				});
			</script>
			
						
			<!-- start-smoth-scrolling -->
		<!-- //here ends scrolling icon -->
</body>
<!-- //body -->
</html>
<!-- //html -->