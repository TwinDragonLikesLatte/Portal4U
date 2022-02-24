<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Portal4U</title>
<%--	<link rel="stylesheet" href="/resources/css/home/reset.css">--%>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="/resources/css/home/styles.css">
   <style>
   
   </style>
</head>
<body>
<contents>
	<header>
		<div class="title">
			<h1>Portal4U</h1>
			<h2>Twin Dragon Team 4</h2>
		</div>
		<nav>
			<a href="/alliance"><span class="glyphicon glyphicon-comment"></span>Alliance Chat</a>
			<c:if test="${not empty loginInfo}">
			<a href="/logout"><span class="glyphicon glyphicon-log-out"></span>Log out</a>
			</c:if>
			<c:if test="${empty loginInfo}">
			<a href="/login"><span class="glyphicon glyphicon-log-in"></span>Log In</a>
			</c:if>
		</nav>
	</header>
	<section>
		<div class="content">
			<div class="left-content">

				<a href="/NFTAction/main" target="_blank">
					<div class="NFTAction preview-box">

					</div>
				</a>

				<a href="/newsletter/subscribe" target="_blank">
					<div class="newsLetter preview-box">

					</div>
				</a>
			</div>
			<a href="/TraditionalLiquor/main.do" target="_blank">
				<div class="TraditionalLiquor preview-box">

				</div>
			</a>
		</div>
	</section>

</contents>
</body>
</html>





