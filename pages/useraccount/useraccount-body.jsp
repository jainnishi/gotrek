<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ page import="com.compro.entity.User" %>
	<% User u = (User)session.getAttribute("loginsession"); %>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<div class="container">
<div class="image">

	<img src="formats/images/t23.jpg" class="sky" />
	<h2>
		<span>Welcome,<%= u.getName() %></span>
		<div><span id="dtText"></span>
		</div>
	</h2>



	<div id="accordion" class="panel-group">
		<div class="panel panel-default">
			<div class="panel-heading">
				<h4 class="panel-title">
					<a data-toggle="collapse" data-parent="#accordion"
						href="#collapseOne"><p class="option">Your upcoming Treks.</p></a>
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
						Twitter Bootstrap is a powerful front-end framework for faster and
						easier web development. It is a collection of CSS and HTML
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
						various style properties for a given HTML element such as colors,
						backgrounds, fonts etc. <a
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
						various style properties for a given HTML element such as colors,
						backgrounds, fonts etc. <a
							href="http://www.tutorialrepublic.com/css-tutorial/"
							target="_blank">Learn more.</a>
					</p>
				</div>
			</div>
		</div>
	</div>
</div>

