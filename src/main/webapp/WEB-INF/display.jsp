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
	<div class="text-center py-4">
	<h1>Here's Your Omikuji!</h1>
	</div>
	<div class="col-3 mx-auto border border-dark border-3 bg-info p-4">
	<p>
	In <c:out value="${number}"/> years, you will live in 
	<c:out value="${city}"/>
	with <c:out value="${name}"/> as your roommate, you will
	 <c:out value="${hobby}"/>.
	The next time you see <c:out value="${thing}"/>,
	 <c:out value="${nice}"/> .
	</p>
	</div>
	<div class="text-center pt-4">
	<a href="/omikuji">Go Back</a>
	</div>
	</div>
</body>
</html>