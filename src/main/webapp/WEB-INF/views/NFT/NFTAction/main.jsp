<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   
<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>New Future Things.</title>
   <link rel="stylesheet" href="/resources/css/NFTAction/reset.css">
   <link rel="stylesheet" href="/resources/css/NFTAction/styles.css">
   <%@ include file="/WEB-INF/views/inc/asset.jsp" %>
   
   
   <style>
   
   </style>
</head>
<body>
   <section>
    <header>
      <h1 class="NFT_logo">NEW FUTURE THINGS</h1>
      <audio controls class="music">
        <source src="./assets/duda.mp3" type="audio/mp3">
      </audio>
    </header>

    <div class="NFT_ad_tap">
      <h2 class="ad_title">곧 다가올 경매에 집중하세요</h2>
      <img class="banner1 bannerOn" src="/resources/images/NFTAction/ad.png" alt="ad-banner" />
      <img class="banner2 bannerOff" src="/resources/images/NFTAction/back.png" alt="ad-banner" />
      <img class="banner3 bannerOff" src="/resources/images/NFTAction/beach.png" alt="ad-banner" />

    </div>
    <div class="NFT_ad_button">
      <div class="ad_button" id="first"></div>
      <div class="ad_button" id="second"></div>
      <div class="ad_button" id="third"></div>
    </div>
    <hr />

    <div class="NFT_action_title">
      <h2>2월 오늘의 경매</h2><span class="action_tag">진행중</span><span class="action_timelimit">11:03:01</span>
    </div>
    <div class="NFT_action_content">
      <div class="product_img">
        <img src="/resources/images/NFTAction/NFT.jpeg" alt="판매상품" class="pro_img">
      </div>
    </div>
    <div class="NFT_ad_button">
      <div class="ad_content_button" id="third"></div>
      <div class="ad_content_button" id="fourth"></div>
      <div class="ad_content_button" id="fifth"></div>
      <div class="ad_content_button" id="sixth"></div>
      <div class="ad_content_button" id="seventh"></div>
    </div>
    <div class="NFT_action_desc">
      <article class="desc">
        <h1 class="title_section">상품명</h1>
        <h2 class="product_title">강규준이 찍은 풍경 사진 NFT</h2>
        <h3 class="desc_section">상품 설명</h3>
        <p class="product_desc">강규준이 직접 여행하며 찍은 사진 중 판매한다면 <strong>“이건 팔리지 않을까"</strong> 싶은 엄선된 사진 10선 중 5점</p>
        <p class="product_detail">촬영 기기 : iPhone XS Max / 26mm / ISO250 / f1.8 / 12MP<br />
          파일 포맷 : JPEG / 3024 x 4032 / 2.3MB<br />
          촬영 장소 : 프라하 구시가지<br />
          감정가 : <strong>50,000</strong> 원</p>
      </article>
      <button class="more_detail" data-toggle="tooltip" title="NFT 제품은 상세보기가 지원되지 않습니다.">상세보기</button>
    </div>
    <div class="NTF_in_action">
      <h2 class="now_action_title">현재 경매 상황</h2>
      <input type="text" name="text_price" id="text_price" class="input_text" placeholder="현재 입찰가" disabled />
      <input type="text" name="ask_price" id="ask_price" class="input_text" placeholder="호가" disabled />
      <br />
      <input type="text" name="text_price" id="text_price" class="input_text" placeholder="200,000" disabled />
      <input type="text" name="ask_price" id="ask_price" class="input_text" placeholder="10,000" disabled />
      <div class="action_btn">
        <form action="#" method="post" class="in_action">
          <input type="text" name="input_price" id="input_price" class="input_money" placeholder="희망 입찰가" />
          <input class="pay" type="submit" value="입찰하기">
        </form>
      </div>
    </div>
    <div class="NFT_board">
      <h3>자주하는 질문</h3>
      <table class="NFT_board_detail table table-bordered" style="width: 900px; margin: 0 auto;">
        <tr>
          <th>번호</th>
          <th>제목</th>
          <th>작성부서</th>
          <th>등록일</th>
        </tr>
        <tr>
          <td>10</td>
          <td>프로젝트를 안할 수 있는 방법은 취업</td>
          <td>CS부</td>
          <td>2022-02-07</td>
        </tr>
        <tr>
          <td>9</td>
          <td>프론트엔드 살려</td>
          <td>강규준</td>
          <td>2022-02-07</td>
        </tr>
        <tr>
          <td>8</td>
          <td>경매 진행 시간은 어떻게 되나요?</td>
          <td>CS부</td>
          <td>2022-02-07</td>
        </tr>
        <tr>
          <td>7</td>
          <td>남은 시간이 끝나도 입찰 할 수 있나요?</td>
          <td>CS부</td>
          <td>2022-02-07</td>
        </tr>
        <tr>
          <td>6</td>
          <td>입찰에 실패하면 어떻게되나요?</td>
          <td>CS부</td>
          <td>2022-02-06</td>
        </tr>
        <tr>
          <td>5</td>
          <td>하루에 몇 건의 경매가 진행되나요?</td>
          <td>CS부</td>
          <td>2022-02-05</td>
        </tr>
        <tr>
          <td>4</td>
          <td>인증서가 따로 존재하나요?</td>
          <td>CS부</td>
          <td>2022-02-04</td>
        </tr>
        <tr>
          <td>3</td>
          <td>낙찰 받은 상품은 어떻게 수령하나요?</td>
          <td>CS부</td>
          <td>2022-02-03</td>
        </tr>
        <tr>
          <td>2</td>
          <td>결제는 어떻게 하나요?</td>
          <td>CS부</td>
          <td>2022-02-02</td>
        </tr>
        <tr>
          <td>1</td>
          <td>NFT는 뭔가요?</td>
          <td>CS부</td>
          <td>2022-02-01</td>
        </tr>
      </table>
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
</script>
</body>
</html>

