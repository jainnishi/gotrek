<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- <html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

</body>
</html>  -->

<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>
 
<tiles:insert definition="useraccount-template" >
	<tiles:put name="body" value="/pages/useraccount/useraccount-body.jsp" />
</tiles:insert>