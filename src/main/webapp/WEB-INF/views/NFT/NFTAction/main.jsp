<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%> 
<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>New Future Things.</title>
   <link rel="stylesheet" href="../resources/css/NFTAction/reset.css">
   <link rel="stylesheet" href="../resources/css/NFTAction/styles.css">
   <link rel="stylesheet" href="../resources/css/NFTAction/admin.css">
   <!-- <link rel="stylesheet" href="/resources/css/NFTAction/board.css"> -->
   
   <tiles:insertAttribute name="asset"></tiles:insertAttribute>
   
   
   <style>
   
   </style>
</head>
<body>
   <section>
    <tiles:insertAttribute name="logo"></tiles:insertAttribute>

   	<div class="NFT_ad_tap">
      <h2 class="ad_title">곧 다가올 경매에 집중하세요</h2>
      <img class="banner1 bannerOn" src="../resources/images/NFTAction/ad.png" alt="ad-banner" />
      <img class="banner2 bannerOff" src="../resources/images/NFTAction/back.png" alt="ad-banner" />
      <img class="banner3 bannerOff" src="../resources/images/NFTAction/beach.png" alt="ad-banner" />

	</div>
	<div class="NFT_ad_button">
      <div class="ad_button" id="first"></div>
      <div class="ad_button" id="second"></div>
      <div class="ad_button" id="third"></div>
	</div>
	<hr />

	<tiles:insertAttribute name="action_title"></tiles:insertAttribute>
    
	<tiles:insertAttribute name="action_content"></tiles:insertAttribute>
    
    <tiles:insertAttribute name="action_desc"></tiles:insertAttribute>
    
    <tiles:insertAttribute name="in_action"></tiles:insertAttribute>
    
    <div class="NFT_board">
    <h3>자주하는 질문</h3>
    <tiles:insertAttribute name="board"></tiles:insertAttribute>
    <a href="/portal4u/NFTBoard/board" class="move">게시판보기</a>
	</div>
    <button class="to_top">△</button>
    <button class="to_bottom">▽</button>
  </section>
</body>


<script>
  // 화살표 함수 정의 => 현재 화면에서 전체화면의 좌표 0,0 으로 이동한다.
  const scrollMove = (e) => {
    window.scrollTo(0, 0);
  }
  // 화살표 함수 정의 => 현재 화면에서 전체화면의 좌표 0,9999 으로 이동한다.
  const scrollMoveDown = (e) => {
    window.scrollTo(0, 9999);
  }
  // to_top 클래스에 클릭 이벤트를 설정하고 스크롤 이벤트 적용
  const to_top = document.querySelector('.to_top');
  to_top.addEventListener('click', scrollMove);
  // to_bottom 클래스에 클릭 이벤트를 설정하고 스크롤 이벤트 적용
  const to_bottom = document.querySelector('.to_bottom');
  to_bottom.addEventListener('click', scrollMoveDown);


  const $banner1 = document.querySelector('.banner1');
  const $banner2 = document.querySelector('.banner2');
  const $banner3 = document.querySelector('.banner3');
  const $ad_title = document.querySelector('.ad_title');

  const firstBtn = document.querySelector('#first');
  firstBtn.addEventListener('click', () => {
    $banner1.classList.remove('bannerOff');
    $banner1.classList.add('bannerOn');
    $banner2.classList.remove('bannerOn');
    $banner2.classList.add('bannerOff');
    $banner3.classList.remove('bannerOn');
    $banner3.classList.add('bannerOff');
    $ad_title.classList.add('ad_title');
    $ad_title.classList.remove('ad_title_black');
  });

  const secondBtn = document.querySelector('#second');
  secondBtn.addEventListener('click', () => {
    $banner1.classList.remove('bannerOn');
    $banner1.classList.add('bannerOff');
    $banner2.classList.remove('bannerOff');
    $banner2.classList.add('bannerOn');
    $banner3.classList.remove('bannerOn');
    $banner3.classList.add('bannerOff');
    $ad_title.classList.add('ad_title');
    $ad_title.classList.remove('ad_title_black');
  });

  const thirdBtn = document.querySelector('#third');
  thirdBtn.addEventListener('click', () => {
    $banner1.classList.remove('bannerOn');
    $banner1.classList.add('bannerOff');
    $banner2.classList.remove('bannerOn');
    $banner2.classList.add('bannerOff');
    $banner3.classList.remove('bannerOff');
    $banner3.classList.add('bannerOn');
    $ad_title.classList.remove('ad_title');
    $ad_title.classList.add('ad_title_black');
  });


  // 상세보기 버튼 토글
  $(document).ready(function () {
    $('[data-toggle="tooltip"]').tooltip();
  });
  
//모달창 팝업 클릭 이벤트
  const $card_item = document.querySelector('.card_item')
const $modal = document.querySelector('.modal');
const $body = document.querySelector('body');


$card_item.addEventListener('click', () => {
$modal.classList.remove('modal');
$modal.classList.add('popup');
$body.classList.add('body_scroll');
});


(function () {
document.addEventListener('keydown', function (e) {
  const keyCode = e.keyCode;

  if (keyCode == 27) { // Esc key
    $modal.classList.add('modal');
    $modal.classList.remove('popup');
    $body.classList.remove('body_scroll');
  }
})
})();
</script>
</body>
</html>

