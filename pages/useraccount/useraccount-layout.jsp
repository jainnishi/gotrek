<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Your Mate Account</title>
<link href="formats/css/bootstrap.css" rel="stylesheet" media="screen">
<link href="formats/css/customized/accountformat.css" rel="stylesheet"
	type="text/css">
<link href="formats/css/social-buttons-3.css" rel="stylesheet"
	type="text/css">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
</head>
<body class="sections">

	<tiles:insert attribute="header" />

	<tiles:insert attribute="body" />

	<tiles:insert attribute="footer" />
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
	<script src="formats/js/bootstrap.js"></script>
	<script src="formats/js/jquery-2.1.1.js"></script>
	<script>
	var today = new Date();
    var dd = today.getDate();
    var mm = today.getMonth()+1; //January is 0!

    var yyyy = today.getFullYear();
    if(dd<10){
        dd='0'+dd
    } 
    if(mm<10){
        mm='0'+mm
    } 
    var today = dd+'/'+mm+'/'+yyyy;
 	document.getElementById('dtText').innerHTML = today;
	</script>



</body>
</html>