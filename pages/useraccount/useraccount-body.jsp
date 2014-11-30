<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ page import="com.compro.entity.User"%>
<%
	User u = (User) session.getAttribute("loginsession");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<div class="container">
	<div style="margin-top: 50px;">
		<nav id="navbar">
		<ul class="nav nav-justified nav-tabs" id="myTab" role="tablist">
			<li class="active"><a href="#home" role="tab" data-toggle="tab">Home</a></li>
			<li><a href="#create_trek" role="tab" data-toggle="tab"
				class="options">Create/Join a Trek</a></li>
			<li><a href="#blog" role="tab" data-toggle="tab" class="options">Album</a></li>
			<li><a href="#Contact" role="tab" data-toggle="tab"
				class="options">Contact Us</a></li>
		</ul>
		</nav>
	</div>
	<form action="logout.do" method="get">
		<button type="submit" class="btn btn-default"
			style="background-color: rgb(227, 244, 11); margin-left: 77%;">Log
			Out</button>
	</form>
</div>
<div class="tab-content">
	<div id="home" class="tab-pane fade in active">
		<div class="container">
			<div class="image">
				<img src="formats/images/t23.jpg" class="sky" />
				<h2>
					<span>Welcome,<%=u.getName()%></span>
					<div>
						<span id="dtText"></span>
					</div>
				</h2>
				<div id="accordion" class="panel-group">
					<div class="panel panel-default">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" data-parent="#accordion"
									href="#collapseOne"><p class="option">Your upcoming
										Treks.</p></a>
							</h4>
						</div>
						<div id="collapseOne" class="panel-collapse collapse">
							<div class="panel-body">
								<ul>
									<li>Nanda Devi</li>
									<li>Nainital</li>
								</ul>
							</div>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" data-parent="#accordion"
									href="#collapseTwo"><p class="option">Treks you have
										attended in the past.</p></a>
							</h4>
						</div>
						<div id="collapseTwo" class="panel-collapse collapse">
							<div class="panel-body">
								<p>
									Twitter Bootstrap is a powerful front-end framework for faster
									and easier web development. It is a collection of CSS and HTML
									conventions. <a
										href="http://www.tutorialrepublic.com/twitter-bootstrap-tutorial/"
										target="_blank">Learn more.</a>
								</p>
							</div>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" data-parent="#accordion"
									href="#collapseThree"><p class="option">What's New!</p></a>
							</h4>
						</div>
						<div id="collapseThree" class="panel-collapse collapse">
							<div class="panel-body">
								<p>
									CSS stands for Cascading Style Sheet. CSS allows you to specify
									various style properties for a given HTML element such as
									colors, backgrounds, fonts etc. <a
										href="http://www.tutorialrepublic.com/css-tutorial/"
										target="_blank">Learn more.</a>
								</p>
							</div>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" data-parent="#accordion"
									href="#collapseFour"><p class="option">Trek Rules.</p></a>
							</h4>
						</div>
						<div id="collapseFour" class="panel-collapse collapse">
							<div class="panel-body">
								<p>
									CSS stands for Cascading Style Sheet. CSS allows you to specify
									various style properties for a given HTML element such as
									colors, backgrounds, fonts etc. <a
										href="http://www.tutorialrepublic.com/css-tutorial/"
										target="_blank">Learn more.</a>
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div id="create_trek" class="tab-pane fade">
		<div class="container">
			<div class="row">
				<div class="col-md-10">
					<h3 class="upTrek">Upcoming Treks..</h3>
				</div>
			</div>
			<button class="btn btn-primary btn-lg positionLogin"
				data-toggle="modal" data-target="#myModal" class="newtrek" style="margin-left:67%;">
				Create New Trek</button>
			<div class="row">
				<div class="col-md-12">
					<div class="row">
						<div class="col-md-4">
							<img class="trkpic" src="formats/images/t17.jpg"
								alt="image is not available">
						</div>
						<div class="col-md-8">
							<h3 class="wide">PMT: Trek to Rajmachi on 29th - 30th Nov '14.</h3>
							<span class="glyphicon glyphicon-user"></span> <span
								class="glyphicon glyphicon-comment" style="padding-left: 10px;">Comments</span>
								<form action="join.do" method="get">

								<input type="hidden" name="trekname" value="Rajmanchi" /> <input
									type="hidden" name="trek_id" value="1" />
								<button type="submit" styleClass="btn btn-sm">Join</button>
							</form>
							<hr class="wide">
							<p class="descp">Hey Mates, Dont miss the fun as Trek Mates
								India invite you for An overnight Trek to Rajmachi and return
								Via Karjat Route on 29th - 30th Nov '14. Little info about the
								fort Type:...</p>
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
							<h3 class="wide">PMT: Trek to Peb Fort on 26th Oct '14.</h3>
							<span class="glyphicon glyphicon-user"></span> <span
								class="glyphicon glyphicon-comment" style="padding-left: 10px;">Comments</span>
							<form action="join.do" method="get">

								<input type="hidden" name="trekname" value="Peb Fort" /> <input
									type="hidden" name="trek_id" value="2" />
								<button type="submit" styleClass="btn btn-sm">Join</button>
							</form>
							<hr class="wide">
							<p class="descp">We at Trek Mates India have arranged a Trek
								to Vikatgad (Peb) Fort on 26th Oct 2014, Sunday. Trek Details
								:Type : Hill FortHeight : 2100 Feet above MSL (Approx) Grade :
								MediumDistrict : RaigadRegion : KarjatBase Village :
								NeralSome...</p>
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
							<h3 class="wide">PMT: Scuba Diving Special Visit to Netrani Island,
								Karnataka with Trek Mates India on 24th January to 26th January
								2015.</h3>
							<span class="glyphicon glyphicon-user"></span> <span
								class="glyphicon glyphicon-comment" style="padding-left: 10px;">Comments</span>
							<form action="join.do" method="get">

								<input type="hidden" name="trekname" value="Netrani island" />
								<input type="hidden" name="trek_id" value="3" />
								<button type="submit" styleClass="btn btn-sm">Join</button>
							</form>
							<hr class="wide">
							<p class="descp">We at Trek Mates India Invite you for Scuba
								Diving Special Visit to Netrani Island, Karnataka on 24th
								January to 26th January 2015. Did you ever wanted to swim like
								a...</p>
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
							<h3 class="wide">PMT:Trek to Dudhsagar Waterfall Top through Jungle Route
								and Camping near the Waterfall on 17th and 18th January 2015</h3>
							<span class="glyphicon glyphicon-user"></span> <span
								class="glyphicon glyphicon-comment" style="padding-left: 10px;">Comments</span>

							<form action="join.do" method="get">

								<input type="hidden" name="trekname" value="Dudhsagar waterfall" />
								<input type="hidden" name="trek_id" value="4" />
								<button type="submit" styleClass="btn btn-sm">Join</button>
							</form>
							<hr class="wide">
							<p class="descp">Visit the Legendary Waterfall of India with
								Trek Mates India – Trek to Dudhsagar Waterfall Top through
								Jungle Route and Camping near the Waterfall on 17th and 18th
								January 2015. (Leaving...</p>
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
	<script>
		$('#myTab a').click(function(e) {
			e.preventDefault();
			$(this).tab('show');
		});
		$('#myModal').appendTo("body");
		</script>
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
					<html:form action="/createtrek" styleClass="form-horizontal"
						onreset="true">
						<div class="form-group">
							<div class="col-sm-2">
								<bean:message key="label.trek.trekname" />
							</div>
							<div class="col-sm-8">
								<font color="red"> <html:errors property="trekname" /></font>
								<html:text property="trekname" styleClass="form-control"
									styleId="trek_heading" />
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-2">
								<bean:message key="label.trek.description" />
							</div>
							<div class="col-sm-10">
								<html:textarea property="description" rows="10" cols="32" />
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-2">
								<bean:message key="label.trek.startdate" />
							</div>
							<div class="col-sm-8">
								<font color="red"> <html:errors property="startdate" /></font>
								<html:text property="startdate" styleClass="form-control" />
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-2">
								<bean:message key="label.trek.enddate" />
							</div>
							<div class="col-sm-8">
								<font color="red"> <html:errors property="enddate" /></font>
								<html:text property="enddate" styleClass="form-control" />
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-2">
								<bean:message key="label.trek.meetup" />
							</div>
							<div class="col-sm-8">
								<font color="red"> <html:errors property="meetup" /></font>
								<html:text property="meetup" styleClass="form-control"
									styleId="meetup_point" />
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-2">
								<bean:message key="label.trek.category" />
							</div>
							<div class="col-sm-8">
								<font color="red"> <html:errors property="category" /></font>
								<html:text property="category" styleClass="form-control"
									styleId="meetup_point" />
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-2">
								<bean:message key="label.trek.uploadfile" />
							</div>
							<div class="col-sm-8">
								<span class="btn btn-default btn-file"> <input
									type="file">
								</span>
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-10">
								<html:submit styleClass="btn btn-default">
									<bean:message key="label.trek.button.Post" />
								</html:submit>
							</div>
						</div>
					</html:form>
				</div>
				<div class="modal-footer">
					<html:reset>
						<bean:message key="label.trek.button.reset" />
					</html:reset>
					<button type="button" class="btn btn-primary">Save changes</button>
				</div>
			</div>
		</div>
	</div>