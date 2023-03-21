<%@ page contentType="text/html; charset=US-ASCII"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>

<link href="css/bootstrap.min.css" rel="stylesheet" />



</head>

<style>
	body {
		background-image: url("https://cdn.luxe.digital/media/20230105073805/fastest-cars-world-2023-list-ranking-luxe-digital.jpg");
		background-size: 1800px ;
	}
</style>
<body>


	
	<!-- Test My JS -->
	<!-- <input type="button" class="button" onclick="sayHello();" value="Click me!">  -->

	<%@ include file="header.jsp"%>


	<!-- First Container -->
	<div class="container-fluid bg-1 text-center">
		<h3 class="margin" style="color:black">Sell your car in a click!</h3>

		<div class="row">

			<div class="col-md-4"></div>

			<div class="col-md-4">


				<c:if test="${error_string != null}">

					<div class="alert alert-danger">
						${error_string}
					</div>

				</c:if>

				<c:url var="post_url" value="/login" />
				<form action="${post_url}" method="post">
					<input type="hidden" name="${_csrf.parameterName}"
						value="${_csrf.token}" />

					<div class="form-group">
				

						<label for="username">User Name:</label> <input type="text"
							name="username" id="username" value="" class="form-control"></input>
					</div>
					<br>
					<br>
					<div class="form-group">
						<label for="password">Password:</label> <input type="password"
							name="password" id="password" value="" class="form-control"></input>
					</div>
					<br>
					<br>
					<input type="submit" name="Login" value="Login"
						class="btn btn-primary"></input>
				</form>
			</div>


			<div class="col-md-4"></div>

		</div>

	</div>


	<%@ include file="footer.jsp"%>

</body>
</html>
