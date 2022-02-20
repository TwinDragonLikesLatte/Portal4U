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
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.1/css/all.css" integrity="sha384-gfdkjb5BdAXd+lj+gudLWI+BXq4IuLW5IT+brZEZsLFm++aCMlF1V92rMkPaX4PP" crossorigin="anonymous">

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
		
		<img src="../resources/images/TraditionalLiquor/main_text.png" id="main-text">

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
		</div>


		<div class="middle-content">
			<div class="middle-container">
				<div class="middle-category"></div>
				<div class="middle-category"></div>
				<div class="middle-category"></div>
				<div class="middle-category"></div>
			</div>
		</div>
		<div class="middle-text">
			<div class="sort">탁주</div>
	        <div class="sort">약/청주</div>
	        <div class="sort">과실주</div>
	        <div class="sort">증류주</div>
		</div>

        <div class="divide">
          <img src="../resources/images/TraditionalLiquor/divide_1.png" alt="">
        </div>

		<!-- 탁주 카테고리 -->
		<div class="product">
			<div class="divide-category">
				<p>탁주 | 맑은 술을 떠내지 않고 그대로 걸러서 만든 술</p>
			</div>
			<c:forEach items="${list}" var="dto">
			<c:if test = "${dto.seq_sort eq '1'}">
			<div class="wrapper">
				<div class="card">
					<div class="front">
						<h1>${dto.name}</h1>
						<p>
							${dto.volume}ml<span>${dto.abv}</span>
						</p>
						<p class="price">${dto.manufacturer}</p>
					</div>
					<div class="right">
						<h2>${dto.name}</h2>
						<ul>
							<li>주종 | ${dto.sort}</li>
							<li>도수 | ${dto.abv}</li>
							<li>용량 | ${dto.volume}ml</li>
							<li>제조 | ${dto.manufacturer}</li>
							<li>소개 | ${dto.introduce}</li>
						</ul>
						<button>Add to cart, yo</button>
					</div>
				</div>
				<div class="img-wrapper">
					<img src='../resources/images/TraditionalLiquor/${dto.img}' alt=''>
				</div>
			</div>
			</c:if>
			</c:forEach>
		</div>
		
		<!-- 약/청주 카테고리 -->
		<div class="product">
			<div class="divide-category">
				<p>약/청주 | 맑은 술</p>
			</div>
			<c:forEach items="${list}" var="dto">
			<c:if test = "${dto.seq_sort eq '2'}">
			<div class="wrapper">
				<div class="card">
					<div class="front">
						<h1>${dto.name}</h1>
						<p>
							${dto.volume}ml<span>${dto.abv}</span>
						</p>
						<p class="price">${dto.manufacturer}</p>
					</div>
					<div class="right">
						<h2>${dto.name}</h2>
						<ul>
							<li>주종 | ${dto.sort}</li>
							<li>도수 | ${dto.abv}</li>
							<li>용량 | ${dto.volume}ml</li>
							<li>제조 | ${dto.manufacturer}</li>
							<li>소개 | ${dto.introduce}</li>
						</ul>
						<button>Add to cart, yo</button>
					</div>
				</div>
				<div class="img-wrapper">
					<img src='../resources/images/TraditionalLiquor/${dto.img}' alt=''>
				</div>
			</div>
			</c:if>
			</c:forEach>
		</div>
		
		<!-- 과실주 카테고리 -->
		<div class="product">
			<div class="divide-category">
				<p>과실주 | 과실 또는 과즙에 당과 물을 첨가하여 발효시킨 술덧을 여과하여 만든 술</p>
			</div>
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
		
		<!-- 증류주 카테고리 -->
		<div class="product">
			<div class="divide-category">
				<p>증류주 | 곡류 등을 발효시켜 증류한 술</p>
			</div>
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

		<div class="map-explain">
			<p><i class="fas fa-map-marker-alt"></i> 찾아오시는 길</p>
		</div>
		<div class="map-content">
			<div class="map-img"></div>
			<div id="map" style="height:400px;"></div>		
		</div>
		
        <footer>
            <div class="footer-content">
              <div class="content-img" id="footer-content"></div>
              <div class="copyright">
                &copy;四組大門
                <br>
                사업장 주소 : 서울시 강남구 막걸리대로&nbsp;|&nbsp;전화번호 : 010-1234-5678
                <br>
                대표 : 이정현&nbsp;|&nbsp;사업자등록번호 : 112-XX-A5732e&nbsp;|&nbsp;통신판매업신고 : 2022-서울강남-0219
              </div>
          </div>
        </footer>
        


    </div>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=8da6077afd2a545f8651709e442c5dcd"></script>
	<script src="/jsp/data/map.js"></script>
	<script>
		
		/* 지도 */
		var container = document.getElementById('map');
		
		var options = { 
				center: new kakao.maps.LatLng(37.499336, 127.033212),
			level: 4
		};
		var map = new kakao.maps.Map(container, options);
		
		var m = new daum.maps.Marker({
			position: new daum.maps.LatLng(37.499336,127.033212)
		});
		
		m.setMap(map);
		

			
	</script>
</body>
</html>





