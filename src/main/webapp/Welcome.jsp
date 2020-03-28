<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Welcome</title>

	<!-- Bootstrap CSS -->
	<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
		<!-- Custom styles for this template -->
    <link href="https://getbootstrap.com/docs/4.4/examples/cover/cover.css" rel="stylesheet">
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="js/Welcome.js"></script>
	
	<style>
	.bd-placeholder-img {
		font-size: 1.125rem;
		text-anchor: middle;
		-webkit-user-select: none;
		-moz-user-select: none;
		-ms-user-select: none;
		user-select: none;
	}
	
	@media ( min-width : 768px) {
		.bd-placeholder-img-lg {
			font-size: 3.5rem;
		}
	}
	</style>
	
	
</head>
<body class="text-center">

	<div class="cover-container d-flex w-100 h-100 p-3 mx-auto flex-column">
		<header class="masthead mb-auto">
			<div class="inner">
				<h3 class="masthead-brand">Scott Zhao</h3>
				<nav class="nav nav-masthead justify-content-center">
					<a class="nav-link active"  style="border-bottom:.25rem solid #fff;"  href="/Welcome.html">Welcome</a> 
					<a class="nav-link" href="/archive/index.html">Archive</a> 
					<a class="nav-link" href="/About.html">About</a>
				</nav>
			</div>
		</header>

		<main role="main" class="inner cover">
			<h1 class="cover-heading" id="pageTitle">Welcome!</h1>
			
			<!--  
			<p class="lead">
				<a href="#" class="btn btn-lg btn-secondary">View More</a>
			</p>
			-->
				
			<br>
			<div id="login" style="display: block;">
				<form action="login" method="post">
					<div class="form-group">
						<label for="emailTextBox">Email address</label> 
							<!--  
							<input type="email" class="form-control" id="emailTextBox" name="eid" onblur="validateLogin()"> 
							-->	
							<input type="email" class="form-control" id="emailTextBox" name="userid"> 
							<small id="emailHelp" class="form-text text-danger" style="display:none;"></small>
					</div>
					<div class="form-group">
						<label for="passwordTextBox">Password</label> 
						<!--  
						<input type="password" class="form-control" id="passwordTextBox" name="pwd" onblur="validatePassword()">
						-->	
						<input type="password" class="form-control" id="passwordTextBox" name="pwd">
						<small id="passwordHelp" class="form-text text-danger" style="display:none;">Please do not leave password blank!</small>
					</div>
					<div class="form-group form-check">
						<input type="checkbox" class="form-check-input" id="exampleCheck1">
						<label class="form-check-label" for="exampleCheck1">Remember Password</label>
					</div>
					<button type="submit" class="btn btn-primary" style="margin:20px;">Submit</button>
					<!-- <button type="button" class="btn btn-success" style="margin:20px;" id="btnRegister">Register</button> -->
					<a href="/account/register" class="btn btn-success" style="margin:20px;">Login</a>
				</form>
			</div>		
			
		</main>

		<footer class="mastfoot mt-auto">
			<div class="inner">
				<p>
					Cover template by Scott Zhao</a>.
				</p>
			</div>
		</footer>
	</div>



	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<!-- 
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
		integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
		crossorigin="anonymous"></script>
	-->
		
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
		integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
		integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
		crossorigin="anonymous"></script>

</body>
</html>