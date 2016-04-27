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
<script src="/resources/js/jquery-1.11.2.min.js" type="text/javascript"></script>

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
	<nav class="navbar navbar-default navbar-fixed-top topnav"
		role="navigation">
		<div class="container topnav">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand topnav" href="#">Syncplicit</a>
			</div>
			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav navbar-right">
					<li><a>Home</a></li>
					<li><a href="personprofile.htm">Profile</a></li>					
					<li><a href="logout.htm">Logout</a></li>
					<li><a href="deleteperson.htm">Delete</a></li>
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
			<h1>
				<center>${person.firstName} ${person.lastName}</center>
			</h1>
			<p></p>
			<p></p>
			<p></p>
			<div class="col-lg-12">
				<div class="panel-group" id="accordion1">

					<div class="panel panel-default">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" data-parent="#accordion1"
									href="#collapseOne1">Professional Experience</a>
							</h4>
						</div>
						<div id="collapseOne1" class="panel-collapse collapse">

							<div class="panel-body" style="color: #000000">

									<form:form role="form" action="addpro.htm"
										commandName="professional" method="post">
										<div class="row">
										<div class="col-md-12">
											<div class="form-group">
												<h2 class="section-heading">Please enter the required
													information</h2>
											</div>
										</div>
										</div>

										<div class="row">
											<div class="col-md-6">
												<div class="form-group">
													<label for="usr">Company</label>
													<form:input path="companyName" required="required" type="text"
														class="form-control" id="companyName" />
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label for="usr">Designation</label>
													<form:input path="designation" required="required" type="text"
														class="form-control" id="designation" />
												</div>
											</div>
										</div>

										<div class="row">
											<div class="col-md-2"></div>
											<div class="col-md-4">
												<div class="form-group">
													<label for="usr">Start Date</label>
													<form:input path="startDate" required="required" type="date"
														class="form-control" id="startDate" />
												</div>
											</div>
											<div class="col-md-4">
												<div class="form-group">
													<label for="usr">End Date</label>
													<form:input path="endDate" required="required" type="date" class="form-control"
														id="endDate" />
												</div>
											</div>
											<div class="col-md-2"></div>
										</div>

										<div class="row">
											<div class="col-md-4"></div>
											<div class="col-md-4">
												<div class="form-group">
													<input type="submit" required="required" class="btn btn-success form-control">
												</div>
											</div>
											<div class="col-md-4"></div>
										</div>

									</form:form>
							</div>
						</div>
					</div>

					<div class="panel panel-default">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" data-parent="#accordion1"
									href="#collapseOne2">Educational Experience</a>
							</h4>
						</div>
						<div id="collapseOne2" class="panel-collapse collapse">

							<div class="panel-body" style="color: #000000">
								<form:form role="form" action="addpersonedu.htm"
									commandName="educational" method="post">
									<div class="row">
										<div class="col-md-12">
											<div class="form-group">
												<h2 class="section-heading">Please enter the required
													information</h2>
											</div>
										</div>
									</div>

									<div class="row">
										<div class="col-md-6">
											<div class="form-group">
												<label for="usr">Degree</label>
												<form:input required="required" path="degreeName" id="degree"
													type="text" class="form-control" />
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<label for="usr">Course</label>
												<form:input path="courseName" required="required" type="text"
													class="form-control" id="loc" />
											</div>
										</div>
									</div>

									<div class="row">
										<div class="col-md-6">
											<div class="form-group">
												<label for="usr">School</label>
												<form:input path="schoolName" required="required" type="text"
													class="form-control" id="" />
											</div>
										</div>
										<div class="col-md-3">
											<div class="form-group">
												<label for="usr">Start Date</label>
												<form:input path="startedDate" required="required" type="date"
													class="form-control" id="" />
											</div>
										</div>
										<div class="col-md-3">
											<div class="form-group">
												<label for="usr">End Date</label>
												<form:input path="endedDate" required="required" type="date"
													class="form-control" id="" />
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-4"></div>
										<div class="col-md-4">
											<div class="form-group">
												<input type="submit" class="btn btn-success form-control">
											</div>
										</div>
										<div class="col-md-4"></div>
									</div>

								</form:form>
							</div>
						</div>
					</div>

					<div class="panel panel-default">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" data-parent="#accordion1"
									href="#collapseOne3">Skill Experience</a>
							</h4>
						</div>
						<div id="collapseOne3" class="panel-collapse collapse">

							<div class="panel-body" style="color: #000000">
								<div class="row">
									<div class="col-md-12">
										<div class="form-group">
											<h2 class="section-heading">Please enter the required
												information</h2>
										</div>
									</div>
								</div>
							<%-- 	<form:form role="form" action="addpersonskill.htm"
							commandName="personSkill" method="post"> --%>
									<div class="row">
										<div class="col-md-3"></div>
										<div class="col-md-6">
											<div class="form-group">
												<label for="usr">Skill</label>
												<input type="text" required="required" class="form-control" id="tags" />									
												<%-- <form:input path="pk.skill.skillName" type="text" class="form-control"
													id="tags" /> --%>
											</div>
										</div>
										<div class="col-md-3" id="success"></div>
									</div>										

									<div class="row">
										<div class="col-md-4"></div>
										<div class="col-md-4">
											<div class="form-group">
												<input type="submit" id="submitskill" class="btn btn-success form-control">
											</div>
										</div>
										<div class="col-md-4"></div>
									</div>

							<%-- 	</form:form> --%>
							</div>
						</div>
					</div>

					<div class="panel panel-default">
						<div class="panel-heading">
								<a data-toggle="collapse" class="jobButton" data-parent="#accordion1"
									href="#collapseTwo1">View Jobs</a>
							</h4>
						</div>
						<div id="collapseTwo1" class="panel-collapse collapse">
							<div class="panel-body">
								<table width="100%" border="1" id="jobTable">
									<tbody style="color: #000000">
										<tr style="text-align: center">
											<th scope="col">Job ID</th>
											<th scope="col">Job Title</th>
											<th scope="col">Responsibilities</th>
											<th scope="col">Qualifications</th>
											<th scope="col">Location</th>
											<th scope="col">Employer</th>									
											<th scope="col">Apply</th>
										</tr>
 									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!--end-->

		</div>

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

	<!-- Footer -->
	<footer>
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<ul class="list-inline">
						<li><a>Home</a></li>
						<li class="footer-menu-divider">&sdot;</li>
						<li><a href="personprofile.htm">Profile</a></li>
						<li class="footer-menu-divider">&sdot;</li>
						<li><a href="logout.htm">Logout</a></li>
						<li><a href="deleteperson.htm">Delete</a></li>
					</ul>
					<p class="copyright text-muted small">Web Development Tools and
						Methods Project</p>
				</div>
			</div>
		</div>
	</footer>

</body>

<script type="text/javascript">
	var text;
	var availableTags = [];
	$("#collapseOne3").click(function() {
		$.ajax({
			url : "retrieveskill.htm",
			data : {
				get_param : 'value'
			},
			datatype : 'json',
			success : function(data) {
				var jsondata = jQuery.parseJSON(data);
				//debugger				
				$.each(jsondata.results, function(index, element) {					
					availableTags.push(element.skillName);
				});				
				$("#tags").autocomplete({
					source : availableTags
				});
			}
		});

		$("#tags").autocomplete({
			source : availableTags.results
		});
	});
</script>

<script>
$(document).on("click", "#submitskill", function() {
    var skill = $('#tags').val();
    jQuery.ajax({
          type: "GET",
          dataType: "html",
          url: "addpersonskill.htm?skill="+skill,
          data: "skill"+skill,
          success: function(msg){
                    $("#success").html(msg);
          },
          error: function(XMLHttpRequest, textStatus, errorThrown) {
             //alert("error adding skill");
          }
        });
});
</script>

<script>
			jQuery(document).ready(function(){
				alert("hi");
			//}
				/**VIEW **/
				$(".jobButton").click(function() {
		            var trHTML = '';
		            var jsonGlobal="";
		            $.ajax({
		                        url : "retrievejob.htm",
		                        data : {
		                            get_param : 'value'
		                        },
		                        dataType : 'json',
		                        success : function(data) {
		                            jsonGlobal = data.results;         
		                            $("#jobTable").find("tr:gt(0)").remove();
		                            $.each(data.results,function(index, element) {
		                                                trHTML +='<tr>'
		                                                		+'<td class="jobId">'
		                                                        + element.jobId
		                                                        +'</td>'
		                                                		+'<td>'
		                                                        + element.title
		                                                        +'</td>'                                                       
		                                                		+'<td>'
		                                                        + element.responsibilities
		                                                        +'</td>'                                                        
		                                                		+'<td>'
		                                                        + element.qualifications
		                                                        +'</td>'                                                        
		                                                		+'<td>'
		                                                        + element.location
		                                                        +'</td>'                                                       
		                                                		+'<td>'
		                                                        + element.employerName
		                                                        +'</td>'                                                        
		                                                        +'<td><input type="button" class="btn btn-primary mybtn " value="Apply"></td>'                                                                                                              
		                                                        +'</tr>';
		                                            });

		                            $('#jobTable').append(
		                                    trHTML);
		                        }
		           });
		});
				/**APPLY **/
				//$(".btn-primary").on( "click", function( event ) {
				$(".mybtn").click(function(){
					alert("hello");
					/* var jobId = $(this).closest ('tr').children('td.jobId').text();
					alert("JobId"+jobId);
			   	 	$(this).closest ('tr').remove();		   	 	
			   	 	
			   	 	alert("JobId"+jobId);
			   	 	   jQuery.ajax({
						  type: "GET",
						  dataType: "html",
						  url: "applyjob.htm",
						  data: "jobId="+jobId,
						  success: function(msg){
								alert("Application sent");																
						  },
						  error: function(XMLHttpRequest, textStatus, errorThrown) {
						     alert("error applying");
						  }
					}); */
				});
				

				
				
				});
</script>

</html>
