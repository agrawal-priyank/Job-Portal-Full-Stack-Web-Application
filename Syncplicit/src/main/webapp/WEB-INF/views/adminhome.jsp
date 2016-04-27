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
<title>Syncplicit</title>

<!-- CSS -->
<link rel="stylesheet"
	href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
<link rel="stylesheet"
	href="resources/assets/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="resources/assets/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet" href="resources/assets/css/form-elements.css">
<link rel="stylesheet" href="resources/assets/css/style.css">

<link rel="apple-touch-icon-precomposed"
	href="resources/assets/ico/apple-touch-icon-57-precomposed.png">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script src="resources/js/jquery-1.11.2.min.js" type="text/javascript"></script>

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
	<style>
	#myModal1{
	}
	</style>
</head>

<body>

	<!-- Top content -->

			<div class="container">

				<div class="row">
					<div class="col-sm-4"></div>
					<div class="col-sm-4 text">
						<h1>
							<strong style="color: #FFFFFF;" >SyncPlicit</strong>
						</h1>
					</div>
					<div class="col-sm-4"></div>
				</div>

				<div class="row">
					<div class="col-sm-3">
						<div class="form-box">
							<div class="form-top">
								<div class="form-top-left">
									<h3>${credential.userName}</h3>
									<p>Administrator</p>
								</div>
								<div class="form-top-right">
									<i class="fa fa-male"></i>
								</div>
							</div>
							<div class="form-bottom">
								<form role="form" action="" method="post" class="login-form">
									<div class="row form-group">
										<form action="logout.htm" method="GET">
										<button type="submit" class="btn">Logout</button>
										</form>
									</div>
									<div class="row form-group"></div>
									<div class="row form-group"></div>
								</form>
							</div>
						</div>
					</div>

					<div class="col-sm-3">
						<div class="form-box">
							<div class="form-top">
								<div class="form-top-left">
									<h3>Skills</h3>
									<p>Ex: Java</p>
								</div>
								<div class="form-top-right">
									<i class="fa fa-lock"></i>
								</div>
							</div>
							<div class="form-bottom">

								<form role="form" action="addskill.htm" method="post" class="login-form">
									<button type="submit" class="btn btn-primary"
										data-toggle="modal" data-target="#myModal">Add Skills
									</button>

									<!-- Modal -->
									<div class="modal fade" id="myModal" tabindex="-1"
										role="dialog" aria-labelledby="myModalLabel">
										<div class="modal-dialog" role="document">
											<div class="modal-content">
												<div class="modal-header">
													<button type="button" class="close" data-dismiss="modal"
														aria-label="Close">
														<span aria-hidden="true">&times;</span>
													</button>
													<h4 class="modal-title" id="myModalLabel">Skills</h4>
												</div>

												<form:form role="form" action="addskill.htm"
													commandName="skill" method="post">
													<div class="modal-body">

														<div class="row">
															<div class="col-md-12">
																<div class="form-group">
																	<h2 class="section-heading">Please enter the
																		required information</h2>
																</div>
															</div>
														</div>

														<div class="row">
															<div class="col-md-3"></div>
															<div class="col-md-6">
																<div class="form-group">
																	<label for="usr">Skill Name</label>
																	<form:input path="skillName" type="text"
																		class="form-control" id="" />
																</div>
															</div>
															<div class="col-md-3"></div>
														</div>

													</div>
													<div class="modal-footer">
														<button type="button" class="btn-group-lg btn-warning"
															data-dismiss="modal">Close</button>
														<button type="submit" class="btn-group-lg btn-success">Submit</button>
													</div>
												</form:form>
											</div>
										</div>
									</div>																							
								</form>
								<div class="row form-group"></div>
								<div class="row form-group"></div>
								<div class="row form-group"></div>
							</div>
						</div>
					</div>

					<div class="col-sm-3">
						<div class="form-box">
							<div class="form-top">
								<div class="form-top-left">
									<h3>Total Persons</h3>
									<p>Count</p>
								</div>
								<div class="form-top-right">
									<i class="fa fa-male"></i>
								</div>
							</div>
							<div class="form-bottom">								
									<button type="submit" class="btn btn-primary"
										data-toggle="modal" id="personlist" data-target="#myModal1">Person List
									</button>

									<!-- Modal -->
									<div class="modal fade" id="myModal1" tabindex="-1"
										role="dialog" aria-labelledby="myModalLabel">
										<div class="modal-dialog" role="document">
											<div class="modal-content">
												<div class="modal-header">
													<button type="button" class="close" data-dismiss="modal"
														aria-label="Close">
														<span aria-hidden="true">&times;</span>
													</button>
													<h4 class="modal-title" id="myModalLabel">Person</h4>
												</div>

													<div class="modal-body">													
														<div class="row">
															
															<div class="col-md-12">
																<div class="form-group">
																<table width="100%" border="1" id="personTable">
                          										<tbody style="color:#000000">
									                            <tr style="text-align:center">
									                              <th scope="col">Person</th>
									                              <th scope="col">Email Address</th>
									                              <th scope="col">Contact</th>
									                              <th scope="col">Street</th>
									                              <th scope="col">City</th>
									                              <th scope="col">State</th>
									                              <th scope="col">Country</th>
									                            </tr>
									                          	</tbody>
									                        	</table>
																	
																</div>
															</div>															
														</div>

													</div>
													<div class="modal-footer">
														<button type="button" class="btn-group-lg btn-warning"
															data-dismiss="modal">Close</button>														
													</div>											
											</div>
										</div>
									</div>																							
								<div class="row form-group"></div>
								<div class="row form-group"></div>
								<div class="row form-group"></div>
							</div>
						</div>
					</div>

					<div class="col-sm-3">
						<div class="form-box">
							<div class="form-top">
								<div class="form-top-left">
									<h3>Total Employers</h3>
									<p>Count</p>
								</div>
								<div class="form-top-right">
									<i class="fa fa-male"></i>
								</div>
							</div>
								<div class="form-bottom">								
									<button type="submit" class="btn btn-primary"
										data-toggle="modal" id="employerlist" data-target="#myModal2">Employer List
									</button>

									<!-- Modal -->
									<div class="modal fade" id="myModal2" tabindex="-1"
										role="dialog" aria-labelledby="myModalLabel">
										<div class="modal-dialog" role="document">
											<div class="modal-content">
												<div class="modal-header">
													<button type="button" class="close" data-dismiss="modal"
														aria-label="Close">
														<span aria-hidden="true">&times;</span>
													</button>
													<h4 class="modal-title" id="myModalLabel">Employers</h4>
												</div>

													<div class="modal-body">

														<div class="row">
															
															<div class="col-md-12">
																<!-- //<div class="form-group"> -->
																<table width="100%" border="1" id="empTable">
                          										<tbody style="color:#000000">
									                            <tr style="text-align:center">
									                              <th scope="col">Employer</th>
									                              <th scope="col">Website</th>
									                              <th scope="col">Street</th>
									                              <th scope="col">City</th>
									                              <th scope="col">State</th>
									                              <th scope="col">Country</th>									                              
									                            </tr>
									                          	</tbody>
									                        	</table>																																
															</div>														
														</div>
													</div>
													<div class="modal-footer">
														<button type="button" class="btn-group-lg btn-warning"
															data-dismiss="modal">Close</button>														
													</div>											
											</div>
										</div>
									</div>																							
								<div class="row form-group"></div>
								<div class="row form-group"></div>
								<div class="row form-group"></div>
							</div>

						</div>
					</div>					

				</div>
		</div>

	<!-- Footer -->
	<div class="row">&nbsp;</div>
	<footer>
		<div class="container">
			<div class="row">
				<div class="col-sm-4"></div>
				<div class="col-sm-4 text">
					<div class="footer-border"></div>
					<p>
						Web Development Tools and Methods <strong>Project</strong> <i
							class="fa fa-smile-o"></i>
					</p>
				</div>
				<div class="col-sm-4"></div>
			</div>
		</div>
	</footer>

	<!-- Javascript -->
	<script src="resources/assets/js/jquery-1.11.1.min.js"></script>
	<script src="resources/assets/bootstrap/js/bootstrap.min.js"></script>
	<script src="resources/assets/js/jquery.backstretch.min.js"></script>
	<script src="resources/assets/js/scripts.js"></script>
		
	<!-- You can add more layouts if you want -->
	<script type="text/javascript" src="resources/assets/js/noty/themes/default.js"></script>
    <!-- <script type="text/javascript" src="assets/js/dash-noty.js"></script> This is a Noty bubble when you init the theme-->
	<script type="text/javascript" src="http://code.highcharts.com/highcharts.js"></script>
	<script src="resources/assets/js/jquery.flexslider.js" type="text/javascript"></script>

    <script type="text/javascript" src="resources/assets/js/admin.js"></script>

</body>
	<script>
	$("#employerlist").click(function() {
			alert("Hi");
            var trHTML = '';
            var jsonGlobal="";
            $.ajax({
                        url : "retrieveemployer.htm",
                        data : {
                            get_param : 'value'
                        },
                        dataType : 'json',
                        success : function(data) {
                            jsonGlobal = data.results;
                            alert("Hey"+jsonGlobal);
                            alert("There"+data.results);
                            $.each(data.results,function(index, element) {
                                                trHTML +='<tr>'
                                                		+'<td>'
                                                        + element.employerName
                                                        +'</td>'
                                                		+'<td>'
                                                        + element.websiteUrl
                                                        +'</td>'                                                       
                                                		+'<td>'
                                                        + element.streetAddress
                                                        +'</td>'                                                        
                                                		+'<td>'
                                                        + element.city
                                                        +'</td>'
                                                        +'<td>'
                                                        + element.state
                                                        +'</td>'
                                                        +'<td>'
                                                        + element.country
                                                        +'</td>'                                                                                                               
                                                        +'</tr>';                                                                                               
                                            });
                            $('#empTable').append(
                                    trHTML);
                        }
           });
	});
	</script>
	
	<script>
	$("#personlist").click(function() {
			alert("Hi");
            var trHTML = '';
            var jsonGlobal="";
            $.ajax({
                        url : "retrieveperson.htm",                        
                        data : {
                            get_param : 'value'
                        },
                        dataType : 'json',
                        success : function(data) {
                            jsonGlobal = data.results;
                            alert("Hey"+jsonGlobal);
                            alert("There"+data.results);
                            $.each(data.results,function(index, element) {
                                                trHTML +='<tr>'
                                                		+'<td>'
                                                        + element.personName
                                                        +'</td>'
                                                		+'<td>'
                                                        + element.emailId
                                                        +'</td>'                                                       
                                                		+'<td>'
                                                        + element.contact
                                                        +'</td>'                                                        
                                                		+'<td>'
                                                        + element.streetAddress
                                                        +'</td>'
                                                        +'<td>'
                                                        + element.city
                                                        +'</td>'
                                                        +'<td>'
                                                        + element.state
                                                        +'</td>'
                                                        +'<td>'
                                                        + element.country
                                                        +'</td>'                                                                                                              
                                                        +'</tr>';                                                                                               
                                            });

                            $('#personTable').append(
                                    trHTML);
                        }
           });
	});
	</script>

</html>