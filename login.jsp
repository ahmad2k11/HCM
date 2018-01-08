<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Login page</title>
	</head>
<style>
body
{
    background-color: rgb(250,250,250);
    margin: 0;
    padding: 0;
}

.mainbodycontainer
{
  margin: 0 auto;
  overflow: auto;
  background-color: rgb(250,250,250);
  min-width: 999px;
  padding: 80px 0;
        background: url("img/background.jpg") no-repeat center center fixed; 
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;
}

.mainbody
{
  margin: 0px auto;
  width: 999px;
}
</style>
	<!-- HEADER -->
	<jsp:include page="header_home.jsp"/>

	<!-- BODY -->
	<div class='mainbodycontainer'>
	<body>
		<!-- background="img/background.jpg" z-index="-1"  -->
		<!-- <img src="img/background.jpg" height="100%" width="100%" z-index="-1" position="absolute">  -->
		<h1>Welcome to Home Page</h1>
						<c:url var="loginUrl" value="/login" />
					<form action="${loginUrl}" method="post">
							<c:if test="${param.error != null}">
							<center>
									<font size="5" color="red">Invalid username and password.</font>
							</center>		
							</c:if>
							
							<c:if test="${param.logout != null}">
									<p>You have been logged out successfully.</p>
							</c:if>
							
							<table align="center">
							<h1>
							<tr><td>
							UserName:
							</td></tr>
							
							<tr><td>
							<input type="text" id="username" name="ssoId" placeholder="Enter Username" required>
							</td></tr>
							
							<tr><td>
							PassWord:
							</td></tr>
							
							<tr><td>
							<input type="password" class="form-control" id="password" name="password" placeholder="Enter Password" required>
							</td></tr>
							
							<tr><td>
							<input type="hidden" name="${_csrf.parameterName}"  value="${_csrf.token}" />
							</td></tr>
							
							<tr><td>	
							<input type="submit" value="Log in">
							</td></tr>
							</h1>
							</table>
						
						</form>
						
	</body>
	</div>
	
	<!-- FOOTER -->
	<jsp:include page="footer.jsp"/>
	
</html>