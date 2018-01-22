<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List"%>

<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<!-- Custom Theme Style -->
<link href="${pageContext.request.contextPath}/css/custom.min.css"
	rel="stylesheet">
</head>

<body>

<div class="nav-md">
<div class="clearfix" style="min-height: 930px;">

			<div class="right_col" role="main" id="mainCont">
			<div class="clearfix"></div>
			<div class="x_panel">
			<div class="x_title">
			
			<h1 align="center">hiiii welcome to the maven project </h1>
			
		<div class="clearfix"></div>
			</div>
			
				<div class="x_content">
			<form action="">		
			<h1>Registered Name</h1>	
			<c:forEach items="${data}" var="vml">
			<c:out value="${vml.fname}"></c:out>
			</c:forEach>
			<br><br><br>
			<a href="pdfgen.html"><input type="button" value="Pdf Generation"></a>
			</form>
			
			</div>
			</div>
			</div>
			</div>
</div>

<!-- <div >
<h1>hiiii welcome to the maven project </h1>

</div>
<h1>hiiii welcome to the maven project </h1>
</body> -->
</html>