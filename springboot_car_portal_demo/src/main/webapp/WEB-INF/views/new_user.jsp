<%@ page contentType="text/html; charset=US-ASCII"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>  
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>


<link href="/css/bootstrap.min.css" rel="stylesheet" />


</head>


<body>

	<!-- Test My JS -->
	<!-- <input type="button" class="button" onclick="sayHello();" value="Click me!">  -->

	

	<%@ include file="header.jsp"%>


	<!-- First Container -->
	<div class="container-fluid bg-1 text-center">
		<h3 class="margin">Register Here ! </h3>

		<div class="row">

			<div class="col-md-4"></div>

			<div class="col-md-4">


				<c:if test="${register_success != null}">
					<div class="alert alert-success">
						<p>${register_success} Click <a href="login"> Sign In</a> to use our portal...</p>
					</div>
				</c:if>

			<form:form action="save" method="post" modelAttribute="user">
				<div class="form-group">
					<label for="username">Your Full Name:</label>
					<form:input path="name" class="form-control" required="true"/>
				</div>
				
				<div class="form-group">
					<label for="username">Your Login User Name:</label>
					<form:input path="userName" class="form-control" required="true"/>
					
				</div>
				
				
				<div class="form-group">
					<label for="password">Your Password:</label>
					<form:password path="password" class="form-control" required="true"/>
					
				</div>
				
				<input type="submit" value="Register" class="btn btn-primary"/>
					
			</form:form>

			</div>


			<div class="col-md-4"></div>

		</div>

	</div>


	<%@ include file="footer.jsp"%>

</body>
</html>
