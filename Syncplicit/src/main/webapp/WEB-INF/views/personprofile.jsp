<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="true"%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<meta charset="utf-8">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script src="resources/js/jquery-1.11.2.min.js" type="text/javascript"></script>

<title>Syncplicit</title>
<!-- Bootstrap Core CSS -->
<link href="resources/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="resources/css/landing-page.css" rel="stylesheet">

<!-- Custom Fonts -->
<link href="resources/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link
	href="http://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic"
	rel="stylesheet" type="text/css">

<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script src="http://code.jquery.com/ui/1.11.4/jquery-ui.js"></script>

<link rel="stylesheet" type="text/css"
	href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css" />

<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.18/jquery-ui.min.js"></script>

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
                        <a href="personhome.htm">Home</a>
                    </li>
                    <li>
                        <a>Profile</a>
                    </li>            
                    <li>
                        <a href="logout.htm">Logout</a>
                    </li>
                    <li>
                        <a href="deleteperson.htm">Delete</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

        <div class="container">
			<div class="row">&nbsp;</div>
			<div class="row">&nbsp;</div>
			<div class="row">&nbsp;</div>
            <div class="row">
            <h1><center>${sessionScope.person.firstName} ${sessionScope.person.lastName}</center></h1>
				<p></p>
				<p></p>
				<p></p>
                <div class="col-lg-12">
                  <div class="panel-group" id="accordion1">
                  
                    <div class="panel panel-default">
                      <div class="panel-heading">
                        <h4 class="panel-title">
                        <a data-toggle="collapse" data-parent="#accordion1" href="#collapsePersonal">
                        Personal Information</a>
                        </h4>
                      </div>
                      <div id="collapsePersonal" class="panel-collapse collapse">
                 
                       <div class="panel-body" style="color:#000000">
                        	
                        	<form:form role="form" action="updateperson.htm" commandName="person" method="post" class="login-form" id="formperson">
                        	<div class="row">                        	
                          	<div class="col-md-12">
                          	<div class="form-group">
                                <h2 class="section-heading">Personal Details</h2>
                          	</div>
                          	</div>
                      		</div>
                            
                            <div class="row">
                            <div class="col-md-6">
                            <div class="form-group">
                                <label for="usr">First Name</label>
                                <form:input path="firstName" required="required" type="text" class="form-control"/>
                            </div>
                            </div>
                            <div class="col-md-6">
                            <div class="form-group">
                                <label for="usr">Last Name</label>
                              <form:input path="lastName" required="required" type="text" class="form-control"/>
                            </div>
                            </div>
                          </div>
                          
                          <div class="row">
                            <div class="col-md-6">
                            <div class="form-group">
                                <label for="usr">Email Address</label>
                                <form:input path="emailId" required="required" type="email" class="form-control"/>
                            </div>
                            </div>
                            <div class="col-md-6">
                            <div class="form-group">
                                <label for="usr">Contact</label>
                              <form:input path="contact" required="required" type="number" class="form-control"/>
                            </div>
                            </div>
                          </div>                          
                          
                          <div class="row">
                            <div class="col-md-6">
                            <div class="form-group">
                                <label for="usr">Street</label>
                                <form:input path="streetAddress" required="required" type="text" class="form-control"/>
                            </div>
                            </div>
                            <div class="col-md-6">
                            <div class="form-group">
                                <label for="usr">City</label>
                              <form:input path="city" required="required" type="text" class="form-control"/>
                            </div>
                            </div>
                          </div>
                          
                          <div class="row">
                            <div class="col-md-6">
                            <div class="form-group">
                                <label for="usr">State</label>
                                <form:input path="state" required="required" type="text" class="form-control"/>
                            </div>
                            </div>
                            <div class="col-md-6">
                            <div class="form-group">
                                <label for="usr">Country</label>
                              <form:input path="country" required="required" type="text" class="form-control"/>
                            </div>
                            </div>
                          </div>                                                                                    
                          
                          <div class="row">
                          <div class="col-md-4">
                          </div>
                          <div class="col-md-4">
                          <div class="form-group">
                               <button type="submit" id="update" required="required" class="btn btn-success form-control">Update</button>
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
                        <h4 class="panel-title">
                        <a data-toggle="collapse" class="proButton" data-parent="#accordion1" href="#collapsePro">Professional Experience</a>
                        </h4>
                      </div>
                      <div id="collapsePro" class="panel-collapse collapse">
                        <div class="panel-body">
                        
                        <table width="100%" border="1" id="proTable">
                          <tbody style="color:#000000">
                            <tr style="text-align:center">
                              <th scope="col">Company Name</th>
                              <th scope="col">Designation</th>
                              <th scope="col">Start Date</th>
                              <th scope="col">End Date</th>                          
                            </tr>
                          </tbody>
                        </table>
                        
                        </div>
                      </div>
                    </div> 
                    
                    <div class="panel panel-default">
                      <div class="panel-heading">
                        <h4 class="panel-title">
                        <a data-toggle="collapse" class="eduButton" data-parent="#accordion1" href="#collapseEdu">Educational Experience</a>
                        </h4>
                      </div>
                      <div id="collapseEdu" class="panel-collapse collapse">
                        <div class="panel-body">
                        
                        <table width="100%" border="1" id="eduTable">
                          <tbody style="color:#000000">
                            <tr style="text-align:center">
                              <th scope="col">Degree</th>
                              <th scope="col">Course</th>
                              <th scope="col">School</th>
                              <th scope="col">Start Date</th>
                              <th scope="col">End Date</th>
                            </tr>
                          </tbody>
                        </table>
                        
                        </div>
                      </div>
                    </div>
                     
<!--                     <div class="panel panel-default">
                      <div class="panel-heading">
                        <h4 class="panel-title"><a data-toggle="collapse" data-parent="#accordion1" href="#collapseTwo3">Skill Experience</a></h4>
                      </div>
                      <div id="collapseTwo3" class="panel-collapse collapse">
                        <div class="panel-body">
                        
                        <table width="100%" border="1">
                          <tbody style="color:#000000">
                            <tr style="text-align:center">
                              <th scope="col">Skill Name</th>
                              <th scope="col">Update</th>
                              <th scope="col">Delete</th>
                            </tr>
                            <tr>
                              <td>&nbsp;</td>
                              <td><input type="submit" class="btn btn-success" value="Update"></td>
                              <td><input type="submit" class="btn btn-danger" value="Delete"></td>
                            </tr>
                          </tbody>
                        </table>
                        
                        </div>
                      </div>
                    </div> -->
                    
                  </div>
                </div>
            </div>

        </div>
        <!-- /.container -->       

	<c:set var="person" value="${person}" scope="session" />
	
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

    <footer>
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <ul class="list-inline">
                        <li>
                            <a href="personhome.htm">Home</a>
                        </li>
                        <li class="footer-menu-divider">&sdot;</li>
                        <li>
                            <a>Profile</a>
                        </li>                                           
                        <li class="footer-menu-divider">&sdot;</li>
                        <li>
                            <a href="logout.htm">Logout</a>
                        </li>
                        <li class="footer-menu-divider">&sdot;</li>
                        <li>
                            <a href="deleteperson.htm">Delete</a>
                        </li>
                    </ul>
                    <p class="copyright text-muted small">Web Development Tools and Methods Project</p>
                </div>
            </div>
        </div>
    </footer>

    <!-- jQuery -->
    <!-- <script src="js/jquery.js"></script> -->
    <script src="resources/js/jquery-1.11.2.min.js" type="text/javascript"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="resources/js/bootstrap.min.js"></script>
    
    <script>
	
  	  function deleteJob(jobId){
    		alert("delete button");
    	 	jQuery.ajax({
 			  type: "GET",
 			  dataType: "html",
 			  url: "deletejob.htm",
 			  data: "jobId="+jobId,
 			  success: function(msg){
 					if(msg === "success"){
 						var row = $(this).parent();
                         row.parentNode.removeChild(row);
 					}else{
 						 alert("Deleting Job failed");
 						}
 			  },
 			  error: function(XMLHttpRequest, textStatus, errorThrown) {
 			     alert("error deleting Job");
 			  }
 			});
    	 
         }
  	 
   	 function updateDetails(userId){
   	 	jQuery.ajax({
			  type: "GET",
			  dataType: "html",
			  url: "update.htm",
			  data: "userId="+userId,
			  success: function(msg){
					if(msg === "success"){
						alert("Updated Successfully");
					}else{
						 alert("Updating details failed");
						}
			  },
			  error: function(XMLHttpRequest, textStatus, errorThrown) {
			     alert("error updating details");
			  }
			});
        }
   	 </script>
   	 
	<script>
	$(".proButton").click(function() {			
            var trHTML = '';
            var jsonGlobal="";
            $.ajax({
                        url : "retrieveprofession.htm",
                        data : {
                            get_param : 'value'
                        },
                        dataType : 'json',
                        success : function(data) {
                            jsonGlobal = data.results;
                            $("#proTable").find("tr:gt(0)").remove();                            
                            $.each(data.results,function(index, element) {
                                                trHTML +='<tr>'
                                                		+'<td>'
                                                        + element.companyName
                                                        +'</td>'
                                                		+'<td>'
                                                        + element.designation
                                                        +'</td>'                                                       
                                                		+'<td>'
                                                        + element.startDate
                                                        +'</td>'                                                        
                                                		+'<td>'
                                                        + element.endDate
                                                        +'</td>'                                                                                                                                                              		
                                                        +'</tr>';                                                                                               
                                            });

                            $('#proTable').append(
                                    trHTML);
                        }
           });
	});
	</script>
	
		<script>
	$(".eduButton").click(function() {			
            var trHTML = '';
            var jsonGlobal="";
            $.ajax({
                        url : "retrieveeducational.htm",
                        data : {
                            get_param : 'value'
                        },
                        dataType : 'json',
                        success : function(data) {
                            jsonGlobal = data.results;
                            $("#eduTable").find("tr:gt(0)").remove();
                            $.each(data.results,function(index, element) {
                                                trHTML +='<tr>'
                                                		+'<td>'
                                                        + element.degreeName
                                                        +'</td>'
                                                		+'<td>'
                                                        + element.courseName
                                                        +'</td>'                                                       
                                                		+'<td>'
                                                        + element.schoolName
                                                        +'</td>'                                                        
                                                		+'<td>'
                                                        + element.startedDate
                                                        +'</td>'
                                                        +'<td>'
                                                        + element.endedDate
                                                        +'</td>'                                                                                                               
                                                        +'</tr>';                                                                                               
                                            });

                            $('#eduTable').append(
                                    trHTML);
                        }
           });
	});
	</script>

</body>

</html>
