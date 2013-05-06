<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<html lang="en">
<head>
<meta charset="utf-8">
<title>Naviance Code Challenge</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">

<link rel="icon" href="favicon.ico" type="image/x-icon" />
<link
	href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.1/css/bootstrap-combined.min.css"
	rel="stylesheet">
<style>
body {
	padding-top: 60px;
	/* 60px to make the container go all the way to the bottom of the topbar */
}
</style>

</head>

<body>

	<div class="navbar navbar-inverse navbar-fixed-top">
		<div class="navbar-inner">
			<div class="container">
				<button type="button" class="btn btn-navbar" data-toggle="collapse"
					data-target=".nav-collapse">
					<span class="icon-bar"></span> <span class="icon-bar"></span><span
						class="icon-bar"></span>
				</button>
				<a class="brand" href="#">Naviance Code Challenge</a>
				<div class="nav-collapse collapse">
					<ul class="nav">
						<li class="active"><a href="/naviance-code-challenge/">Home</a></li>
						<li><a href="/naviance-code-challenge/rank-and-decile">Rank
								and Decile</a></li>
					</ul>
				</div>
				<!--/.nav-collapse -->
			</div>
		</div>
	</div>

	<div class="container">

		<h1>Welcome to the Naviance Code Challenge</h1>
		<p>
			This small <a href="http://www.springsource.org/">Spring</a>
			application will serve as the skeleton needed to complete the
			Naviance Java coding challenge.<br />
		</p>

	</div>
	<!-- /container -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script
		src="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.1/js/bootstrap.min.js"></script>
</body>
</html>
