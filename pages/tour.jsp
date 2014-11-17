<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>Plan my Trek</title>
<link href="formats/css/bootstrap.css" rel="stylesheet" media="screen">
<link href="formats/css/customized/travel.css" rel="stylesheet"
	type="text/css">
<link href="formats/css/social-buttons-3.css" rel="stylesheet"
	type="text/css">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
<!-- Optional theme -->
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap-theme.min.css">
</head>
<body>
	<div class="container">
		<div class="masthead">
			<div class="heading" style="height: 88px;">
				<h3 class="text-muted">Plan my Trek</h3>
				<img src="formats/images/t16.jpg"
					style="width: 300px; float: right;" />


			</div>

			<div class="login">

				<html:form action="/login" styleClass="form-inline" onreset="true">

					<span class="user_login">Login</span>
					<div class="form-group">
						<bean:message key="label.common.email" />
						<html:text property="email" styleClass="form-control"
							styleId="exampleInputEmail2" />
					</div>
					<div class="form-group">
						<bean:message key="label.common.password" />
						<html:text property="password" styleClass="form-control"
							styleId="exampleInputPassword2"/>
					</div>
					<html:submit>
						<bean:message key="label.common.button.submit" />
					</html:submit>
					<html:reset>
						<bean:message key="label.common.button.reset" />
					</html:reset>
					
				</html:form>
				<font color="red"> <html:errors />
				</font>
				
			</div>
			<div style="margin-top: 50px;">
				<nav id="navbar">
				<ul class="nav nav-justified nav-tabs" id="myTab" role="tablist">
					<li class="active"><a href="#home" role="tab"
						data-toggle="tab">Home</a></li>
					<li><a href="#create_trek" role="tab" data-toggle="tab"
						class="options">Create/Join a Trek</a></li>
					<li><a href="#blog" role="tab" data-toggle="tab"
						class="options">Blog</a></li>
					<li><a href="#gallery" role="tab" data-toggle="tab"
						class="options">Gallery</a></li>
					<li><a href="#Contact" role="tab" data-toggle="tab"
						class="options">Contact Us</a></li>
				</ul>
				</nav>
			</div>
		</div>
	</div>
	<div class="tab-content">
		<div id="home" class="tab-pane fade in active">
			<div class="container">
				<div class="row">
					<div class="col-md-8">
						<img id="img1" style="height: 532px;" src="formats/images/t4.jpg">
						<p class="text">There can be no more compelling way to connect
							with a foreign land than to walk on the foreign soil,sand and
							rock that comprises its landscape. Nor can there be any better
							way to meet the local people than to walk in their footsteps and
							among them,in their own terms,instead of being tied to
							roads,train-tracks and cityscapes.</p>
					</div>
					<div class="col-md-4 register">
						<h3>Let's trek together...get Registered!</h3>
						<br /> <br /> <font color="red"> <html:errors />
						</font>
						<html:form action="/newuser" styleId="register_form" method="post" onreset="true">
							<div class="form-group" id="Name1">
								<bean:message key="label.common.name" />
								<html:text property="name" styleClass="form-control" />
							</div>
							<div class="form-group" id="Email1">
								<bean:message key="label.common.email2" />
								<html:text property="email2" styleClass="form-control" />
							</div>
							<div class="form-group" id="Password1">
								<bean:message key="label.common.password2" />
								<html:text property="password2" styleClass="form-control" />
							</div>
							<div class="form-group" id="Password1">
								<bean:message key="label.common.repassword" />
								<html:text property="repassword" styleClass="form-control"/>
							</div>
							<div class="checkbox">
								<label><input type="checkbox"> Remember me</label>
							</div>
							<html:submit styleClass="btn btn-primary submitBtn">
								<bean:message key="label.common.button.register" />
							</html:submit>
							<html:reset styleClass="submitBtn">
								<bean:message key="label.common.button.reset" />
							</html:reset>
						</html:form>
					</div>
				</div>
			</div>
		</div>
		<div id="create_trek" class="tab-pane fade">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<h3 class="upTrek">Upcoming Treks..</h3>
					</div>
				</div>
				<button class="btn btn-primary btn-lg positionLogin"
					data-toggle="modal" data-target="#myModal" class="newtrek">
					Create New Trek</button>
				<div class="row">
					<div class="col-md-12">
						<div class="row">
							<div class="col-md-4">
								<img class="trkpic" src="formats/images/t17.jpg"
									alt="image is not available">
							</div>
							<div class="col-md-8">
								<h2>PMT: Trek to Rajmachi on 29th - 30th Nov '14.</h2>
								<span class="glyphicon glyphicon-user"></span> <span
									class="glyphicon glyphicon-comment" style="padding-left: 10px;">Comments</span>
								<span class="glyphicon glyphicon-plus"
									style="padding-left: 10px;"><a href="#">Join</a></span>
								<hr>
								<p class="descp">Hey Mates, Dont miss the fun as Trek Mates
									India invite you for An overnight Trek to Rajmachi and return
									Via Karjat Route on 29th - 30th Nov '14. Little info about the
									fort Type:...</p>
								<a href="#" target="_blank" id="code" type="submit"
									class="btn btn-sm">Read More</a>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<div class="row">
							<div class="col-md-4">
								<img class="trkpic" src="formats/images/t18.jpg"
									alt="image is not available">
							</div>
							<div class="col-md-8">
								<h2>PMT: Trek to Peb Fort on 26th Oct '14.</h2>
								<span class="glyphicon glyphicon-user"></span> <span
									class="glyphicon glyphicon-comment" style="padding-left: 10px;">Comments</span>
								<span class="glyphicon glyphicon-plus"
									style="padding-left: 10px;"><a href="#">Join</a></span>
								<hr>
								<p class="descp">We at Trek Mates India have arranged a Trek
									to Vikatgad (Peb) Fort on 26th Oct 2014, Sunday. Trek Details
									:Type : Hill FortHeight : 2100 Feet above MSL (Approx) Grade :
									MediumDistrict : RaigadRegion : KarjatBase Village :
									NeralSome...</p>
								<a href="#" target="_blank" id="code" type="submit"
									class="btn btn-sm">Read More</a>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<div class="row">
							<div class="col-md-4">
								<img class="trkpic" src="formats/images/t19.jpg"
									alt="image is not available">
							</div>
							<div class="col-md-8">
								<h2>PMT: Scuba Diving Special Visit to Netrani Island,
									Karnataka with Trek Mates India on 24th January to 26th January
									2015.</h2>
								<span class="glyphicon glyphicon-user"></span> <span
									class="glyphicon glyphicon-comment" style="padding-left: 10px;">Comments</span>
								<span class="glyphicon glyphicon-plus"
									style="padding-left: 10px;"><a href="#">Join</a></span>
								<hr>
								<p class="descp">We at Trek Mates India Invite you for Scuba
									Diving Special Visit to Netrani Island, Karnataka on 24th
									January to 26th January 2015. Did you ever wanted to swim like
									a...</p>
								<a href="#" target="_blank" id="code" type="submit"
									class="btn btn-sm">Read More</a>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<div class="row">
							<div class="col-md-4">
								<img class="trkpic" src="formats/images/t20.jpg"
									alt="image is not available">
							</div>
							<div class="col-md-8">
								<h2>PMT:Trek to Dudhsagar Waterfall Top through Jungle
									Route and Camping near the Waterfall on 17th and 18th January
									2015</h2>
								<span class="glyphicon glyphicon-user"></span> <span
									class="glyphicon glyphicon-comment" style="padding-left: 10px;">Comments</span>
								<span class="glyphicon glyphicon-plus"
									style="padding-left: 10px;"><a href="#">Join</a></span>
								<hr>
								<p class="descp">Visit the Legendary Waterfall of India with
									Trek Mates India – Trek to Dudhsagar Waterfall Top through
									Jungle Route and Camping near the Waterfall on 17th and 18th
									January 2015. (Leaving...</p>
								<a href="#" target="_blank" id="code" type="submit"
									class="btn btn-sm">Read More</a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="text-center">
				<div class="pagination-centered" style="align: centre;">
					<ul class="pagination">
						<li class="active"><a href="#">&laquo;</a></li>
						<li><a href="#">1</a></li>
						<li><a href="#">2</a></li>
						<li><a href="#">3</a></li>
						<li><a href="#">4</a></li>
						<li><a href="#">5</a></li>
						<li><a href="#">&raquo;</a></li>
					</ul>
				</div>
			</div>
		</div>
		<div class="tab-pane fade" id="blog">
			<p>nishi</p>
		</div>
		<div class="tab-pane fade" id="gallery">
			<p>jain</p>
		</div>
		<div class="tab-pane fade" id="Contact">
			<div class="container">
				<div class="contact">
					<div class="row">
						<div class="col-md-2"></div>
						<div class="col-md-8">
							<h3>Contact Us..</h3>
							<img src="formats/images/t21.jpg" style="align: middle;" />
						</div>
					</div>
					<div class="row">
						<div class="col-md-2"></div>
						<div class="col-md-8">
							<h3>Plan My Tek Private Limited</h3>
							<p>106, First Floor, A-Wing, Rajdarshan Building, Above ICICI
								Bank ATM, Dada Patil Marg, Near Thane Station, Thane (W) 400602.</p>
							<p>Office Numbers: +91 8422 999 006 / 003 / 008</p>
							<p>Email id - planmytrek@gmail.com</p>
							<p>Contact Person: Amit Patil : +91 8655 588 508, Vikrant
								Singh: +91 9987 761 562</p>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="footer">
			<div class="container">
				<hr>
				<div class="row">
					<div class="col-md-12">
						<p class="social">Connect with us on Social Media</p>
					</div>
				</div>
				<div class="row">
					<div class="col-md-3">
						<button class="btn btn-linkedin social_btn">
							<i class="fa fa-linkedin"></i> | Connect with LinkedIn
						</button>
						<br>
						<button class="btn btn-twitter social_btn">
							<i class="fa fa-twitter"></i> | Connect with Twitter
						</button>
						<button class="btn btn-youtube social_btn">
							<i class="fa fa-youtube"></i> | Connect with YouTube
						</button>
					</div>
					<div class="col-md-3">
						<button class="btn btn-facebook social_btn">
							<i class="fa fa-facebook"></i> | Connect with Facebook
						</button>
						<br>
						<button class="btn btn-google-plus social_btn">
							<i class="fa fa-google-plus"></i> | Connect with Google Plus
						</button>
						<br>
						<button class="btn btn-instagram social_btn">
							<i class="fa fa-camera-retro"></i> | Connect with Instagram
						</button>
					</div>
				</div>
				<p class="text-muted footerNote">
					Copyright <span class="glyphicon glyphicon-copyright-mark">2014
						PlanMyTrek</span>
				</p>
			</div>
		</div>
	</div>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
	<!-- <script src="formats/js/bootstrap.js"></script> -->
	<!-- Latest compiled and minified JavaScript -->
	<script
		src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
	<!-- <script src="formats/js/jquery-2.1.1.js"></script> -->
	<script>
		$('#myTab a').click(function(e) {
			e.preventDefault();
			$(this).tab('show');
		});
		$('#myModal').appendTo("body");
	</script>
	<script type="text/javascript" src="formats/js/customized/code.js"></script>
	<!-- Modal -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">
						<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">Create New Trek</h4>
				</div>
				<div class="modal-body">
					<form class="form-horizontal" role="form">
						<div class="form-group">
							<label for="trek_heading" class="col-sm-2 control-label">Tag
								Heading</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="trek_heading"
									placeholder="Trek heading">
							</div>
						</div>
						<div class="form-group">
							<label for="trek_description" class="col-sm-2 control-label">Tag
								Description</label>
							<div class="col-sm-10">
								<textarea rows="10" style="overflow: scroll; width: 350px;"></textarea>
							</div>
						</div>
						<div class="form-group">
							<label for="upload_file" class="col-sm-2 control-label">Upload
								File</label>
							<div class="col-sm-10">
								<span class="btn btn-default btn-file"> <input
									type="file">
								</span>
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-10">
								<button type="submit" class="btn btn-default">Post</button>
							</div>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					<button type="button" class="btn btn-primary">Save changes</button>
				</div>
			</div>
		</div>
	</div>
</body>
</html>