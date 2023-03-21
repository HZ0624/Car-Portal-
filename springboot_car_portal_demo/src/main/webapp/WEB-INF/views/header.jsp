<nav class="navbar navbar-expand-lg navbar-light bg-light">
	<div class="container-fluid">
		<a class="navbar-brand"> <img
			src="/images/car.png" width="120px" />
		</a>
		<a class="navbar-brand" href="/"><span class="navbar-brand mt-1 h1">Hi<span class="text-primary">-Fi</span>Car</span></a>
	  <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarColor03" aria-controls="navbarColor03" aria-expanded="false" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	  </button>
	  <div class="collapse navbar-collapse" id="navbarColor03">
		<ul class="navbar-nav me-auto">
		<sec:authorize access="!isAuthenticated()">
		  <li class="nav-item">
			<a class="nav-link" href="login">Login</a>
		  </li>
		  <li class="nav-item">
			<a class="nav-link" href="new">Register</a>
		  </li>
		  <li class="nav-item">
			<a class="nav-link" href="about">About Us</a>
		  </li>
		  <li class="nav-item">
			<a class="nav-link" href="contact">Contact Us</a>
		  </li>
		  </sec:authorize>
		
		<sec:authorize access="isAuthenticated()">
		
		<sec:authorize access="hasRole('Users')">
		  <li class="nav-item">
			<a class="nav-link" href="cars">Used Cars</a>
		  </li>
		  <li class="nav-item">
			<a class="nav-link" href="new_car">Sell Your Car</a>
		  </li>
		  </sec:authorize>
		  
		 <sec:authorize access="hasRole('Administrator')">
		  <li class="nav-item">
			<a class="nav-link" href="cars">Car Management</a>
		  </li>
		  <li class="nav-item">
			<a class="nav-link" href="users">User Management</a>
		  </li>
		  </sec:authorize>
					  <li>
					  <form action="logout" method="post" style="padding:7px;">
						  <input type="hidden" name="${_csrf.parameterName}"
							  value="${_csrf.token}" />
							  <input type="submit"
							  name="Logout" value="Logout" class="btn btn-primary"></input>
					  </form>
					  </li>
		  </sec:authorize>
		</ul>
	  </div>
	</div>
  </nav>