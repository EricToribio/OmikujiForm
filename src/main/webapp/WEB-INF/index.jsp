<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- for Bootstrap CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<!-- YOUR own local CSS -->
<link rel="stylesheet" href="/css/main.css" />
<!-- For any Bootstrap that uses JS or jQuery-->
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="">
		<div class="text-center">
			<h1>Send A Omikuji!</h1>
		</div>
		<div class="col-4 border border-dark border-3 mx-auto p-3 rounded-3">
			<form action="/omikuji/submit/data" method="post">
				<div class="form-group p-2">
					<label class="form-label" for="number">Pick a number
						between 1 & 25</label> <input class="form-control" name="number"
						type="number">
				</div>
				<div class="form-group p-2">
					<label class="form-label" for="city">Enter the name of a
						city.</label> <input class="form-control" name="city" type="text">
				</div>
				<div class="form-group p-2">
					<label class="form-label" for="name">Enter in name of a
						real person.</label> <input class="form-control" name="name" type="text">
				</div>
				<div class="form-group p-2">
					<label class="form-label" for="hobby">Enter in a
						professional endeavor or hobby:</label> <input class="form-control"
						name="hobby" type="text">
				</div>
				<div class="form-group p-2">
					<label class="form-label" for="thing">Enter any type of
						living thing.</label> <input class="form-control" name="thing" type="text">
				</div>
				<div class="form-group p-2">
					<label class="form-label" for="nice">Say something nice to
						someone:</label>
					<textarea class="form-control" name="nice"></textarea>
				</div>
				<div class="p-2">
					<button class="btn btn-success">Submit</button>
				</div>
			</form>
		</div>
	</div>

</body>
</html>