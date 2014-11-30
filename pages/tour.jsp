<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<html>
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
				<h3 class="text-muted" id="trek">Plan my Trek</h3>
				<img src="formats/images/t16.jpg"
					style="width: 300px; float: right;" />
			</div>
			<div class="login">
				<html:form action="/login" styleClass="form-inline" onreset="true">
					<span class="user_login">Login</span>
					<div class="form-group">
						<bean:message key="label.common.email" />
						<html:text property="email" styleClass="form-control"
							styleId="loginEmail" />
					</div>
					<div class="form-group">
						<bean:message key="label.common.password" />
						<html:password property="password" styleClass="form-control"
							styleId="loginPassword" />
					</div>
					<html:submit>
						<bean:message key="label.common.button.submit" />
					</html:submit>
					<html:reset>
						<bean:message key="label.common.button.reset" />
					</html:reset>
				</html:form>
				<font color="red"> <html:errors property="email" /> <html:errors
						property="password" />
				</font>
			</div>
		</div>
		<hr class="mar1">
	</div>
	<div id="color-animate">
		<h3 class="font-design">Upcoming Treks!</h3>
		<p class="position-animate">
			<img class="demo-trkpic" src="formats/images/t18.jpg"
				alt="image is not available"> <span class="demo">PMT:
				Trek to Peb Fort on 26th Oct '14JDSFKJSHDJJJJJJJJJjdskfhaksjdhasdagjshdasdah.</span> <img class="demo-trkpic"
				src="formats/images/t18.jpg" alt="image is not available"> <span
				class="demo">PMT: Trek to Peb Fort on 26th Oct '14.</span> <img
				class="demo-trkpic" src="formats/images/t18.jpg"
				alt="image is not available"> <span class="demo">PMT:
				Trek to Peb Fort on 26th Oct '14.</span> <img class="demo-trkpic"
				src="formats/images/t18.jpg" alt="image is not available"> <span
				class="demo">PMT: Trek to Peb Fort on 26th Oct '14.</span>
		</p>

	</div>


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
						<h3 class="head-font">Let's trek together...get Registered!</h3>
						<br /> <br /> <font color="red"> <html:errors
								property="name" /> <html:errors property="email2" /> <html:errors
								property="password2" /> <html:errors property="mobileno" />
						</font>
						<html:form action="/register" styleId="register_form"
							method="post" onreset="true">
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
								<html:password property="password2" styleClass="form-control" />
							</div>
							<div class="form-group">
								<bean:message key="label.common.mobileno" />
								<html:text property="mobileno" styleClass="form-control" />
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
		
		$(document).ready(function() {
			if ($('#loginEmail').val() == "invalid") {
				alert("You are not a existing user.Please login first.");
				$('#loginEmail').val() == "";
			}
			if ($('#loginPassword').val() == "incorrect") {
				alert("You have entered an incorrect password");
				$('#loginPassword').val() == "";
			}
		});
	</script>
	<script type="text/javascript" src="formats/js/customized/code.js"></script>

	
</body>
</html>