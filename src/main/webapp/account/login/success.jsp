<!DOCTYPE html>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ page import="javax.servlet.http.Cookie"%>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author"
	content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Jekyll v3.8.5">
<title>Control Panel � <s:property value="userid" /></title>

<link rel="canonical"
	href="https://getbootstrap.com/docs/4.3/examples/navbars/">

<!-- Bootstrap core CSS -->
<link
	href="https://getbootstrap.com/docs/4.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">


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
<!-- Custom styles for this template -->
<link href="navbar.css" rel="stylesheet">
</head>
<body>

	<nav class="navbar navbar-expand-md navbar-dark bg-dark">
		<a class="navbar-brand" href="#">Scott Zhao</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarsExample04" aria-controls="navbarsExample04"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarsExample04">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link" href="/">Home
						<span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item"><a class="nav-link" href="#">Link</a></li>
				<li class="nav-item"><a class="nav-link" href="/account/delCookie" action="delCookie">Logout</a></li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#" id="dropdown04"
					data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Dropdown</a>
					<div class="dropdown-menu" aria-labelledby="dropdown04">
						<a class="dropdown-item" href="#">Action</a> <a
							class="dropdown-item" href="#">Another action</a> <a
							class="dropdown-item" href="#">Something else here</a>
					</div></li>
			</ul>

		</div>
	</nav>
	<% 
		Cookie[] cookies = request.getCookies();
		String result = null;
		for (Cookie cookie : cookies) {
			System.out.println("cookie: "+cookie.getName()+"="+cookie.getValue());
			if (cookie.getName().equals("userid")) {
				result = cookie.getValue();
				break;
			}
		}

	%>

	<main role="main">
		<div class="jumbotron">
			<div class="col-sm-8 mx-auto">
				<h1>
					WELCOME - This is control Panel
					<s:property value="userid" />
				</h1>
				<p>This example is a quick exercise to illustrate how the navbar
					and its contents work.</p>
				<p>At the smallest breakpoint, the collapse plugin is used to
					hide the links and show a menu button to toggle the collapsed
					content.</p>
				<p>
					<a class="btn btn-primary" href="/account/update/Update.html"
						role="button">Update</a>
				</p>
				<p>
					<a class="btn btn-danger" href="/account/destroy/Destroy.html"
						role="button">Destroy</a>
				</p>
			</div>
		</div>
	</main>
	</div>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script>
		window.jQuery
				|| document
						.write('<script src="https://getbootstrap.com/docs/4.3/assets/js/vendor/jquery-slim.min.js"><\/script>')
	</script>
	<script src="/docs/4.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-xrRywqdh3PHs8keKZN+8zzc5TX0GRTLCcmivcbNJWm2rs5C8PRhcEn3czEjhAO9o"
		crossorigin="anonymous"></script>
</body>
</html>
