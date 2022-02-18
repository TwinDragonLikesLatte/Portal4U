<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>사조막걸리</title>
<%@ include file="/WEB-INF/views/inc/asset.jsp"%>
<link rel="stylesheet"
	href="../resources/css/TraditionalLiquor/reset.css">
<link rel="stylesheet"
	href="../resources/css/TraditionalLiquor/main.css">

</head>
<body>
	<div class="container">
		<img src="../resources/images/TraditionalLiquor/paper-g303aec151_1920.jpg" id="main-paper"> 
		<img src="../resources/images/TraditionalLiquor/branch-g91c73332f_1280.png"	id="branch">

		<div id="main-box"></div>
		<div class="attach-nav"></div>
		<a href="main.html">
			<img src="../resources/images/TraditionalLiquor/title.png" id="title">
		</a>

		<div class="top-nav">
			<a href="#!">레시피</a> <a href="#!">한잔하기</a>
		</div>

		<div class="vertical-text-container">
			<div class="vertical-text">
				<p>소맥장인이만든명품전통주</p>
			</div>
		</div>

		<img src="../resources/images/TraditionalLiquor/alcohols_main.png" id="alcohols_main">

		<!-- 구독버튼 -->
		<div class="subscribe">
			<input type="button" value="구독하기" name="subscribe" class="subscribe-btn">
		</div>

		<!-- 검색창 -->
		<div class="search">
			<input type="text" placeholder="오늘은 뭐마시지?" name="search" autocomplete="off">
			<p class="glyphicon glyphicon-search"></p>
			<!-- !!! 부트스트랩 설치필요 -->
		</div>


		<!-- 중간 카테고리 -->
		<!-- <div class="middle-content">
            <div class="middle-container">
                <div class="middle-category">
                  <div class="sort" id="takju">탁주</div>
                </div>
                <div class="middle-category">
                  <div class="sort">약/청주</div>
                </div>
                <div class="middle-category">
                  <div class="sort">과실주</div>
                </div>
                <div class="middle-category">
                  <div class="sort">증류주</div>
                </div>
            </div>
        </div> -->

		<div class="middle-content">
			<div class="middle-container">
				<div class="middle-category"></div>
				<div class="middle-category"></div>
				<div class="middle-category"></div>
				<div class="middle-category"></div>
			</div>
		</div>

		<!-- <div class="sort" id="takju">탁주</div>
        <div class="sort">약/청주</div>
        <div class="sort">과실주</div>
        <div class="sort">증류주</div> -->



		<div class="divide-line"></div>


		<div class="product">
			<div class="wrapper">
				<div class="card">
					<div class="front">
						<h1>별산 막걸리</h1>
						<p>
							7.7 deck<span>2018</span>
						</p>
						<p class="price">$ 89.00</p>
					</div>
					<div class="right">
						<h2>Signature</h2>
						<ul>
							<li>Width 7.7"</li>
							<li>Length 31.75"</li>
							<li>Wheelbase 14"</li>
							<li>Nose 6.875"</li>
							<li>Tail 6.25"</li>
						</ul>
						<button>Add to cart, yo</button>
					</div>
				</div>
				<div class="img-wrapper">
					<img src='../resources/images/TraditionalLiquor/beoulsan.png' alt=''>
				</div>
			</div>
		</div>

		<footer>
			<div class="content" id="footer-content">
				<p>하단 설명입니다.</p>
			</div>
		</footer>
	</div>

	<script>
		
	</script>
</body>
</html>





