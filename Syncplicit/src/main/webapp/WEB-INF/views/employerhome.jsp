<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="true"%>
<!DOCTYPE html>
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

	<!-- jQuery -->
    <!-- <script src="js/jquery.js"></script> -->

    <!-- Bootstrap Core JavaScript -->
    <script src="resources/js/bootstrap.min.js"></script>

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
                        <a>Home</a>
                    </li>
                    <li>
                        <a href="employerprofile.htm">Profile</a>
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
            <h1><center>${employer.employerName}</center></h1>
				<p></p>
				<p></p>
				<p></p>
                <div class="col-lg-12">
                  <div class="panel-group" id="accordion1">
                  
                    <div class="panel panel-default">
                      <div class="panel-heading">
                        <h4 class="panel-title"><a data-toggle="collapse" data-parent="#accordion1" href="#collapseOne1">Add Job</a></h4>
                      </div>
                      <div id="collapseOne1" class="panel-collapse collapse">
                 
                       <div class="panel-body" style="color:#000000">
                        	<div class="row">
                          	<div class="col-md-12">
                          	<div class="form-group">
                                <h2 class="section-heading">Please enter the required information</h2>
                          	</div>
                          	</div>
                      		</div>               
						<form:form role="form" action="addjob.htm" commandName="job"  method="post">                          
                          <div class="row">
                            <div class="col-md-6">
                            <div class="form-group">
                                <label for="usr">Job Title</label>
                                <form:input path="title" required="required" type="text" class="form-control" id="title"/>
                            </div>
                            </div>
                            <div class="col-md-6">
                            <div class="form-group">
                                <label for="usr">Location</label>
                              <form:input path="location" required="required" type="text" class="form-control" id="loc"/>
                            </div>
                            </div>
                          </div>
                          
                           <div class="row">
                            <div class="col-md-12">
                            <div class="form-group">
                                <label for="usr">Responsibilities</label>
                                <form:input path="responsibilities" required="required" type="text" class="form-control" id="res"/>
                            </div>
                            </div>
                          </div>
                          
                          <div class="row">
                            <div class="col-md-12">
                            <div class="form-group">
                                <label for="usr">Qualifications</label>
                                <form:input path="qualifications" required="required" type="text" class="form-control" id="qual"/>
                            </div>
                            </div>
                          </div>                                                          
                          
                          <div class="row">
                          <div class="col-md-4">
                          </div>
                          <div class="col-md-4">
                          <div class="form-group">
                               <input type="submit" class="btn btn-success form-control">
                          </div>
                          </div>
                          <div class="col-md-4">
                          </div>                   
                          </div>
                          
                          </form:form>
                     </div>
                      </div>
                    </div>
                    
                    <div class="panel panel-default">
                      <div class="panel-heading">
                        <h4 class="panel-title"><a data-toggle="collapse" data-parent="#accordion1" href="#collapseTwo1">View Jobs</a></h4>
                      </div>
                      <div id="collapseTwo1" class="panel-collapse collapse">
                        <div class="panel-body">
                        
                        <table width="100%" border="1">
                          <tbody style="color:#000000">
                            <tr style="text-align:center">
                              <th scope="col">Job ID</th>
                              <th scope="col">Job Title</th>
                              <th scope="col">Location</th>
                              <th scope="col">Responsibilities</th>
                              <th scope="col">Qualifications</th>                              
                              <th scope="col">Delete</th>
                            </tr>
                            
                            <c:forEach var="job" items="${employer.jobList}">
                            <tr>
                              <td class="jobId">${job.jobId}</td>	
                              <td>${job.title}</td>
                              <td>${job.location}</td>
                              <td>${job.responsibilities}</td>
                              <td>${job.qualifications}</td>                              
                              <td><input type="submit" class="btn btn-danger" value="Delete"></td>
                            </tr>
                            </c:forEach>
                          </tbody>
                        </table>                       
                        </div>
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
 
    <!-- Footer -->
    <footer>
        <div class="container">
            <div class="row nav-bar">
                <div class="col-lg-12">
                    <ul class="list-inline">
                        <li>
                            <a>Home</a>
                        </li>
                        <li class="footer-menu-divider">&sdot;</li>
                        <li>
                            <a href="employerprofile.htm">Profile</a>
                        </li>                                      
                        <li class="footer-menu-divider">&sdot;</li>
                        <li>
                            <a href="logout.htm">Logout</a>
                        </li>
                        <li class="footer-menu-divider">&sdot;</li>
                        <li>
                        	<a href="deleteemployer.htm">Delete</a>
                    	</li>
                    </ul>                   
                </div>
            </div>
        </div>
    </footer>
    
    <script>
  	 
    function updateJob(jobId){
    		alert("update button");
    	 	jQuery.ajax({
 			  type: "GET",
 			  dataType: "html",
 			  url: "updatejob.htm",
 			  data: "jobId="+jobId,
 			  success: function(msg){
 					if(msg === "success"){
 						var row = document.getElementById(jobId);
                         row.parentNode.removeChild(row);
 					}else{
 						 alert("Updating Job failed");
 						}
 			  },
 			  error: function(XMLHttpRequest, textStatus, errorThrown) {
 			     alert("error updating Job");
 			  }
 			});
    	 
         }
  	        
		jQuery(document).ready(function(){			
			$(".btn-danger").click(function(){			
		   	 	$(this).closest ('tr').remove();		   	 	
		   	 	var jobId = $(this).closest ('tr').children('td.jobId').text();		   	 	
		   	 	   jQuery.ajax({
					  type: "GET",
					  dataType: "html",
					  url: "deletejob.htm",
					  data: "jobId="+jobId,
					  success: function(msg){
							alert("Job Deleted/Please refresh page");																
					  },
					  error: function(XMLHttpRequest, textStatus, errorThrown) {
					     alert("error deleting Job");
					  }
				});
			});
		});
		
	</script>
    </body>

</html>
