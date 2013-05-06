<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html lang="en">
<head>
<meta charset="utf-8">
<title>Naviance Code Challenge s</title>
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
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="brand" href="#">Naviance Code Challenge</a>
				<div class="nav-collapse collapse">
					<ul class="nav">
						<li><a href="/naviance-code-challenge/">Home</a></li>
						<li class="active"><a href="/naviance-code-challenge/rank-and-decile">Rank
								and Decile</a></li>
					</ul>
				</div>
				<!--/.nav-collapse -->
			</div>
		</div>
	</div>
	<div class="container">
		<h1>Rank and Decile Reporter</h1>
		<form id="rankReport" method="post">
			<select id="student" name="student">
				<option value="NONE">-- SELECT STUDENT --</option>
				<c:forEach var="item" items="${studentList}">
					<option value="<c:out value='${item.key}'/>">
						<c:out value="${item.value}" />
					</option>
				</c:forEach>
			</select> <br />
			<button class="btn" type="submit">Generate Rank Report</button>
		</form>
		<div id="rank-report">
			<table class="table">
				<thead>
					<tr>
						<th>Student ID</th>
						<th>Student Name</th>
						<th>GPA</th>
						<th>Percenile Rank</th>
						<th>Decile Rank</th>
				</thead>
				<tbody>
					<tr>
						<td>9912345US</td>
						<td>Optimus Prime</td>
						<td>4.00</td>
						<td>86</td>
						<td>9</td>
					</tr>
				</tbody>
			</table>
		</div>
		<div id="decile-report">
			<table class="table">
				<thead>
					<tr>
						<th>Decile</th>
						<th>Nearest Rank</th>
						<th>Linear Interpolation</th>
				</thead>
				<tbody>
					<tr>
						<td>D1</td>
						<td>2.00</td>
						<td>2.00</td>
					</tr>
					<tr>
						<td>D2</td>
						<td>2.75</td>
						<td>2.75</td>
					</tr>
					<tr>
						<td>D3</td>
						<td>3.00</td>
						<td>3.00</td>
					</tr>
					<tr>
						<td>D4</td>
						<td>3.25</td>
						<td>3.25</td>
					</tr>
					<tr>
						<td>D5</td>
						<td>3.50</td>
						<td>3.50</td>
					</tr>
					<tr>
						<td>D6</td>
						<td>3.50</td>
						<td>3.50</td>
					</tr>
					<tr>
						<td>D7</td>
						<td>3.93</td>
						<td>3.93</td>
					</tr>
					<tr>
						<td>D8</td>
						<td>4.00</td>
						<td>4.00</td>
					</tr>
					<tr>
						<td>D9</td>
						<td>4.00</td>
						<td>4.00</td>
					</tr>
					<tr>
						<td>D10</td>
						<td>4.00</td>
						<td>4.00</td>
					</tr>
				</tbody>
			</table>
		</div>



	</div>
	<!-- /container -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script
		src="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.1/js/bootstrap.min.js"></script>
</body>
</html>
