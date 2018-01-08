<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
					<!-- HEADER -->
					<jsp:include page="header_admin.jsp"/>

<body>
<h1>Manage Records</h1>
</br>
<table>
<tr><td><h2>Doctors</h2></td></tr>
<tr><td><a href='<c:url value="/admin_doctorAdd"/>'><h3>Add </h3></a></td> 
	<td>&nbsp;</td> 
	<td><a href='<c:url value="/admin_doctorUpdate"/>'><h3>Update </h3></a></td> 
	<td>&nbsp;</td> 
	<td><a href='<c:url value="/admin_doctorViewAll"/>'><h3>View All </h3></a></td> 
	<td>&nbsp;&nbsp;&nbsp;</td> 
	<td><a href='<c:url value="/admin_doctorSearchById"/>'><h3>Search By Id </h3></a></td>  
	<td>&nbsp;&nbsp;&nbsp;</td>  
	<td><a href='<c:url value="/admin_doctorDelete"/>'><h3>Delete </h3></a></td>
</tr>
</table>
</body>
					<!-- FOOTER -->
					<jsp:include page="footer.jsp"/>
</html>