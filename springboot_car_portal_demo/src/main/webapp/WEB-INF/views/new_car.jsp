<%@ page contentType="text/html; charset=US-ASCII"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>

	<link href="css/bootstrap.min.css" rel="stylesheet" />


</head>

<body>

	<!-- Test My JS -->
	<!-- <input type="button" class="button" onclick="sayHello();" value="Click me!">  -->

	<%@ include file="header.jsp"%>


	<!-- First Container -->
	<div class="container-fluid bg-1 text-center">
		<h3 class="margin">Post A Car For Sale !</h3>

		<div class="row">

			<div class="col-md-4"></div>

			<div class="col-md-4">


				<!--
            It is standard practice to have all action & href urls wrapped with c:url tag.
            This tag adds jsessionid to the action/href url, in case cookies are disabled by the user.
       			 -->

				
				<form:form method="POST" action="/cars" modelAttribute="car">

					<input type="hidden" value="${_csrf.token}"/>
						
					<form:hidden path="id" />
					
					<div class="form-group">
					<form:label path="make">Car Make:</form:label>
					<form:input path="make" />
					</div>
					<br>

					<div class="form-group">
						<label for="model">Car Model:</label> 
						<form:input path="model"/>
					</div>
					<br>
					<div class="form-group">
						<label for="registeration"> registeration:</label>
						<form:input path="registeration"/>
					
					<br>
					</div>
					<br>
					<div class="form-group">
						<label for="price">Car Price:</label> 
						<form:input path="price"/>
					</div>
					<br>
					<input type="submit" name="Add" value="Save" /> <input
						type="button" value="Cancel" onclick="cancel()" />

					<script>
						function cancel() {
							window.location.href = "cars"
						}
					</script>
				</form:form>

			</div>


			<div class="col-md-4"></div>

		</div>

	</div>


	<%@ include file="footer.jsp"%>

</body>
</html>
