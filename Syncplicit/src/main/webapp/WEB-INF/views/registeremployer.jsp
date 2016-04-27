 <!DOCTYPE html>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Syncplicit</title>

        <!-- CSS -->
        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
        <link rel="stylesheet" href="resources/assets/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="resources/assets/font-awesome/css/font-awesome.min.css">
		<link rel="stylesheet" href="resources/assets/css/form-elements.css">
        <link rel="stylesheet" href="resources/assets/css/style.css">

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->

        <!-- Favicon and touch icons -->
        <link rel="shortcut icon" href="resources/assets/ico/favicon.png">
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="resources/assets/ico/apple-touch-icon-144-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="resources/assets/ico/apple-touch-icon-114-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="resources/assets/ico/apple-touch-icon-72-precomposed.png">
        <link rel="apple-touch-icon-precomposed" href="resources/assets/ico/apple-touch-icon-57-precomposed.png">

    </head>

    <body>

        <!-- Top content -->
        <div class="top-content">
        	
            <div class="inner-bg">
                <div class="container">
                	
                    <div class="row">
                        <div class="col-sm-4">
                        </div>
                        <div class="col-sm-4 text">
                        <h1><strong>SyncPlicit</strong></h1>
                        </div>
                        <div class="col-sm-4">
                        </div>
                    </div>
                    
                    <div class="row">
                    	
                        <div class="col-sm-2">
                    	</div>
                        
                        <div class="col-sm-8">
                        	<div class="form-box">
	                        	<div class="form-top">
	                        		<div class="form-top-left">
	                        			<h3>Employer Registration</h3>
                                  		<p>Please enter required information accordingly</p>
                                      
	                        		</div>
	                        		<div class="form-top-right">
	                        			<i class="fa fa-lock"></i>
	                        		</div>
	                            </div>
	                            <div class="form-bottom">                                    			  
                                                                       
                                    <form:form role="form" action="addemployer.htm" commandName="employer"  method="post" class="login-form" id="formemployer">
                                        <div class="row form-group">
                                            <div class="col-sm-6">
				                    		<label class="sr-only" for="form-username">Email Address</label>
				                        	<form:input path="userName" placeholder="Username" class="form-username form-control" id="form-username1"/>
                                            </div>
                                           
                                            <div class="col-sm-6">
				                    		<label class="sr-only" for="form-password">Password</label>
				                        	<form:input path="password" placeholder="Password" class="form-username form-control" id="form-password1"/>
                                            </div>
				                        </div>				                         
                                        
                                        <div class="row form-group" id="employer">
                                            <div class="col-sm-6">
				                    		<label class="sr-only" for="form-employer">Employer Name</label>
				                        	<form:input path="employerName" placeholder="Employer Name" class="form-username form-control" id="form-employer"/>
                                            </div>
                                            <div class="col-sm-6">
				                    		<label class="sr-only" for="form-website">Website URL</label>
				                        	<form:input path="websiteUrl" placeholder="Website Url" class="form-username form-control" id="form-website"/>
                                            </div>                                           
				                        </div>                                      
                                        
                                        <div class="row form-group">
                                        	<div class="col-sm-6">
				                    		<label class="sr-only" for="form-street">Street</label>
				                        	<form:input path="streetAddress" placeholder="Street Address" class="form-username form-control" id="form-street1"/>
                                            </div>
                                            <div class="col-sm-6">
				                    		<label class="sr-only" for="form-city">City</label>
				                        	<form:input path="city" placeholder="City" class="form-username form-control" id="form-city1"/>
                                            </div>                                            
				                        </div>                                      
                                          
                                        <div class="row form-group">
                                        	<div class="col-sm-6">
				                    		<label class="sr-only" for="form-state">State</label>
				                        	<form:input path="state" placeholder="State" class="form-username form-control" id="form-state1"/>
                                            </div>
                                            <div class="col-sm-6">
				                    		<label class="sr-only" for="form-country">Country</label>
				                        	<form:input path="country" placeholder="Country" class="form-username form-control" id="form-country1"/>
                                            </div>
				                        </div>
                                        
                                        <div class="row form-group">
                                        </div>
                                        
				                        <button type="submit" class="btn">Register</button>
				                    </form:form>
                                    
			                    </div>
		                    </div>	                        
                        </div>                          	

                    	<div class="col-sm-2">
                     	</div>  
                    
                </div>
            </div>
          </div>
            
        </div>

        <!-- Footer -->
        <footer>
        	<div class="container">
        		<div class="row">
                     	<div class="col-sm-4">
                        </div>
                        <div class="col-sm-4 text">
                        <div class="footer-border"></div>
        				<p>Web Development Tools and Methods <strong>Project</strong> <i class="fa fa-smile-o"></i></p>
                        </div>
                        <div class="col-sm-4">
                        </div>
                 </div>        			        		        			
        	</div>
        </footer>
        

        <!-- Javascript -->
        <script   src="https://code.jquery.com/jquery-2.2.3.min.js" integrity="sha256-a23g1Nt4dtEYOj7bR+vTu7+T8VP13humZFBJNIYoEJo=" crossorigin="anonymous"></script>
        <script src="resources/assets/js/jquery-1.11.1.min.js"></script>
        <script src="resources/assets/bootstrap/js/bootstrap.min.js"></script>
        <script src="resources/assets/js/jquery.backstretch.min.js"></script>
        <script src="resources/assets/js/scripts.js"></script>
        
        <!--[if lt IE 10]>
            <script src="assets/js/placeholder.js"></script>
        <![endif]-->

<!--         <script>
			$(document).ready(function() {
     		$("#formperson").hide();
			$("#formemployer").hide();

    		
			$("#radioperson").click(function () {
   	     	$("#formperson").show();
			$("#formemployer").hide();
    		});
    		
			$("#radioemployer").click(function () {
        	$("#formemployer").show();
			$("#formperson").hide();
    		});
			
		    });		    			
        </script> -->

    </body>

</html>