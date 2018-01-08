<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Admin page</title>
</head>
<!-- HEADER -->
	<jsp:include page="header_admin.jsp"/>
<body>
	<h1>Dear <strong>${user}</strong>, Welcome to Admin Page.</h1>
	<a align="right" style="float:right" href="<c:url value="/logout"/>">Logout</a>
	</br>
	
	<h1>
	<table>
	<tr><td>&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
	<td><a href="<c:url value="/admin_doctor"/>"><h1>Doctor's </h1></a></td>
	<td>&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
	<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
	<td><a href="<c:url value="/admin_nurse"/>"><h1>Nurse's</h1></a></td>
	
	<tr><td>&nbsp;</td></tr>
	
	<tr><td>&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
	<td><a href="<c:url value="/admin_guard"/>"><h1>Guard </h1></a></td>
	<td>&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
	<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
	<td><a href="<c:url value="/admin_patients"/>"><h1>Patients</h1></a></td>
	
	<tr><td>&nbsp;</td></tr>
	
	<tr><td>&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
	<td><a href="<c:url value="/admin_drugstore"/>"><h1>Drug Store </h1></a></td>
	
	</table>
	</h1>
	
</body>
<!-- FOOTER -->
	<jsp:include page="footer.jsp"/>
</html>