<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>   
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>◽◻사조막걸리◻◽</title>
<%@ include file="/WEB-INF/views/inc/asset.jsp"%>
<script src="<%= root %>/resources/js/jquery-ui.js"></script>
<link rel="stylesheet" href="../resources/css/TraditionalLiquor/reset.css">
<link rel="stylesheet" href="../resources/css/TraditionalLiquor/main.css">
<link rel="stylesheet" href="../resources/css/TraditionalLiquor/tl_footer.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.1/css/all.css" integrity="sha384-gfdkjb5BdAXd+lj+gudLWI+BXq4IuLW5IT+brZEZsLFm++aCMlF1V92rMkPaX4PP" crossorigin="anonymous">

</head>
<body>
   
    <div class="modal-close">
	   <div id="modal" class="modal-overlay">
	        <div class="modal-window" id="modal-window">
	            <div class="content">
	                <img src="../resources/images/TraditionalLiquor/warningmodal.png">
	            </div>
	            <div class="btns">
	            	<a href="javascript:;"><input type="button" class="btn_close" value="오늘 하루 열지 않음"></a> 
	            	<input type="button" class="close-area" value="닫기">
	        	</div>
	        </div>
		</div>
   	</div>
	
	
	<div class="container">
	<!-- <div class="modal-overlay"></div> -->

		<img src="../resources/images/TraditionalLiquor/paper-g303aec151_1920.jpg" id="main-paper"> 
		<img src="../resources/images/TraditionalLiquor/branch-g91c73332f_1280.png"	id="branch">

		<div id="main-box"></div>
		<div class="attach-nav"></div>
		<a href="main.do">
			<img src="../resources/images/TraditionalLiquor/title.png" id="title">
		</a>
		
		<img src="../resources/images/TraditionalLiquor/main_text.png" id="main-text">

		<div class="top-nav">
			<a href="list.do">레시피</a> 
			<a href="#!">한잔하기</a>
		</div>

		<div class="vertical-text-container">
			<div class="vertical-text">
				<p>소맥장인이만든명품전통주</p>
			</div>
		</div>

		<img src="../resources/images/TraditionalLiquor/alcohols_main.png" id="alcohols_main">

		<!-- 구독버튼 -->
		<div class="subscribe">
			<a href=""></a>
			<input type="button" value="구독하기" name="subscribe" class="subscribe-btn btn-lg" data-toggle="modal" data-target="#myModal">
		</div>
		
		<!-- Modal -->
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		  <div class="modal-dialog">
		    <div class="modal-content">
		      <div class="modal-header">
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
		        <h4 class="modal-title" id="myModalLabel">사조막걸리 | 구독 신청</h4>
		      </div>
		      <div class="modal-body">
		        <table>
		          <tr>
		            <th>이름</th>
		            <td> <input type="text" class="form-control"></td>
		          </tr>
		          <tr>
		            <th>주소</th>
		            <td> <input type="text" class="form-control"></td>
		          </tr>
		          <tr>
		            <th>전화번호</th>
		            <td> <input type="text" class="form-control"></td>
		          </tr>
		          <tr>
		            <th>입금계좌</th>
		            <td>우리은행 1002-6xx-7xxxxx 이정현</td>
		          </tr>
		        </table>
		      </div>
		      <div class="modal-footer">
		        <input type="button" class="btn btn-default" data-dismiss="modal" value="닫기">
		        <input type="button" class="btn btn-primary" value="저장">
		      </div>
		    </div>
		  </div>
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
						<button>상세보기</button>
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
			<c:if test = "${dto.seq_sort eq '2' || dto.seq_sort eq '3'}">
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
						<button>상세보기</button>
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
				<p>과실주 | 과일로 만든 술</p>
			</div>
			<c:forEach items="${list}" var="dto">
			<c:if test = "${dto.seq_sort eq '4'}">
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
						<button>상세보기</button>
					</div>
				</div>
				<div class="img-wrapper">
					<img src='../resources/images/TraditionalLiquor/${dto.img}' alt=''>
				</div>
			</div>
			</c:if>
			</c:forEach>
		</div>
		
		<!-- 증류주 카테고리 -->
		<div class="product">
			<div class="divide-category">
				<p>증류주 | 양조주를 증류기에 넣고 분별증류를 통해 정제한 술</p>
			</div>
			<c:forEach items="${list}" var="dto">
			<c:if test = "${dto.seq_sort eq '5'}">
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
						<button>상세보기</button>
					</div>
				</div>
				<div class="img-wrapper">
					<img src='../resources/images/TraditionalLiquor/${dto.img}' alt=''>
				</div>
			</div>
			</c:if>
			</c:forEach>
		</div>

		<div class="map-explain">
			<p><i class="fas fa-map-marker-alt"></i> 찾아오시는 길</p>
		</div>
		<div class="map-content">
			<div class="map-img"></div>
			<div id="map" style="height:400px;"></div>		
		</div>
		
		
		<tiles:insertAttribute name="footer"></tiles:insertAttribute> 

    </div>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=8da6077afd2a545f8651709e442c5dcd"></script>
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

		/* 모달창 - 경고 */
		/* x버튼 */
   	    const closeBtn = modal.querySelector(".close-area")
        closeBtn.addEventListener("click", e => {
            modal.style.display = "none"
        });
		
        $('#modal-window').draggable();   
	    
        

        $(document).ready(function () {
            $(".modal-close .btn_close").click(function () {
                setCookieMobile( "todayCookie", "done" , 1);
                $(".modal-close").hide();
            });
        });
         
        function setCookieMobile ( name, value, expiredays ) {
            var todayDate = new Date();
            todayDate.setDate( todayDate.getDate() + expiredays );
            document.cookie = name + "=" + escape( value ) + "; path=/; expires=" + todayDate.toGMTString() + ";"
        }
        function getCookieMobile () {
            var cookiedata = document.cookie;
            //alert(cookiedata);
            if ( cookiedata.indexOf('todayCookie=done') < 0 ){
                 $(".modal-close").show();
            }
            else {
                $(".modal-close").hide();
            }
        }

        getCookieMobile();
		
		
		
		</script>
	</script>
</body>
</html>





