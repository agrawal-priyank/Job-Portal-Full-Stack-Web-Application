<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %><!DOCTYPE html>
<%@ page session="true"%>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

    <title>Syncplicit</title>

    <!-- Bootstrap Core CSS -->
    <link href="resources/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="resources/css/landing-page.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="resources/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">

</head>

<body>

    <!-- Navigation -->
    <nav class="navbar navbar-default navbar-fixed-top topnav" role="navigation">
        <div class="container topnav">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand topnav" href="#">Syncplicit</a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <a href="employerhome.htm">Home</a>
                    </li>
                    <li>
                        <a>Profile</a>
                    </li>            
                    <li>
                        <a href="logout.htm">Logout</a>
                    </li>
                    <li>
                        <a href="deleteemployer.htm">Delete</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>


    <!-- Header -->

        <div class="container">
		
            <div class="row">&nbsp;</div>
			<div class="row">&nbsp;</div>
			<div class="row">&nbsp;</div>
            <div class="row">
            <h1><center>${sessionScope.employer.employerName}</center></h1>
				<p></p>
				<p></p>
				<p></p>
                  <div class="panel-group" id="accordion1">
                  
                    <div class="panel panel-default">
                      <div class="panel-heading">
                        <h4 class="panel-title"><a data-toggle="collapse" data-parent="#accordion1" href="#collapseOne1">Employer Information</a></h4>
                      </div>
                      <div id="collapseOne1" class="panel-collapse collapse">
                 
                       <div class="panel-body" style="color:#000000">
                        	
                        	<form role="form" action="updateemployer.htm" method="post" class="login-form" id="formemployer">
                        	<div class="row">
                          	<div class="col-md-12">
                          	<div class="form-group">
                                <h2 class="section-heading">Employer Information</h2>
                          	</div>
                          	</div>
                      		</div>
                            
                            <div class="row">
                            <div class="col-md-6">
                            <div class="form-group">
                                <label for="usr">Employer Name</label>
                                <input name="employerName" type="text" class="form-control"
                                value="${sessionScope.employer.employerName}"/>
                            </div>
                            </div>
                            <div class="col-md-6">
                            <div class="form-group">
                                <label for="usr">Street</label>
                                <input name="streetAddress" type="text" class="form-control"
                                value="${sessionScope.employer.streetAddress}"/>
                            </div>
                            </div>
                          </div>
                          
                          <div class="row">
                            <div class="col-md-6">
                            <div class="form-group">
                                <label for="usr">City</label>
                                <input name="city" type="text" class="form-control"
                                value="${sessionScope.employer.city}"/>
                            </div>
                            </div>
                            <div class="col-md-6">
                            <div class="form-group">
                                <label for="usr">State</label>
                                <input name="state" type="text" class="form-control"
                                value="${sessionScope.employer.state}"/>
                            </div>
                            </div>
                          </div>
                          
                          <div class="row">
                            <div class="col-md-6">
                            <div class="form-group">
                                <label for="usr">Country</label>
                                <input name="country" type="text" class="form-control"
                                value="${sessionScope.employer.country}"/>
                            </div>
                            </div>
                            <div class="col-md-6">
                            <div class="form-group">
                                <label for="usr">Website</label>
                                <input name="websiteUrl" type="text" class="form-control"
                                value="${sessionScope.employer.websiteUrl}"/>
                            </div>
                            </div>
                          </div>                                                                                    
                          
                          <div class="row">
                          <div class="col-md-4">
                          </div>
                          <div class="col-md-4">
                          <div class="form-group">
                               <button type="submit" class="btn btn-success form-control">Update</button>
                          </div>
                          </div>
                          <div class="col-md-4">
                          </div>                   
                          </div>
                         </form>                                                                 
                     </div>
                      </div>
                    </div>                    
                    
                  </div>
                </div>
            </div>
        <!-- /.container -->

    <c:set var="employer" value="${employer}" scope="session"/>
     
    <div class="row">&nbsp;</div>
	<div class="row">&nbsp;</div>
	<div class="row">&nbsp;</div>
	<div class="row">&nbsp;</div>
	<div class="row">&nbsp;</div>
	<div class="row">&nbsp;</div>
	<div class="row">&nbsp;</div>
	<div class="row">&nbsp;</div>
	<div class="row">&nbsp;</div>
	<div class="row">&nbsp;</div>
	<div class="row">&nbsp;</div>
	<div class="row">&nbsp;</div>
	<div class="row">&nbsp;</div>
	<div class="row">&nbsp;</div>
	<div class="row">&nbsp;</div>
	<div class="row">&nbsp;</div>

    <!-- Footer -->
    <footer>
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <ul class="list-inline">
                        <li>
                            <a href="employerhome.htm">Home</a>
                        </li>
                        <li class="footer-menu-divider">&sdot;</li>
                        <li>
                            <a>Profile</a>
                        </li>                      
                        <li class="footer-menu-divider">&sdot;</li>
                        <li>
                            <a href="#about">Message</a>
                        </li>                      
                        <li class="footer-menu-divider">&sdot;</li>
                        <li>
                            <a href="logout.htm">Logout</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </footer>

    <script src="resources/js/jquery-1.11.2.min.js" type="text/javascript"></script>
	
    <script src="resources/js/bootstrap.min.js"></script>
</body>

</html>
