<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>   
<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>Document</title>
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
    <div class="NFT_action_title">
      <h2>경매 물품 등록</h2>
    </div>
    <div class="NFT_action_add">
     <form action="#" method="post" class="image_add">
      <div class="add_section">
        <div class="add_image">
          <div class="image-container">
            <img id="preview-image" src="https://dummyimage.com/500x500/ffffff/000000.png&text=preview+image">
              <input type="file" id="input-image">
              <input class="pay" type="submit" value="등록하기">
          </div>
        </div>
        <div class="prod_insert">
          <div class="action_date">
            <label for="action_date">경매날짜</label>
            <input type="date" id="action_date" />
          </div>
          <div class="prod_name">
            <label for="prod_name">상품이름</label>
            <input type="text" id="prod_name" />
          </div>
          <div class="prod_desc">
            <label for="prod_desc">상품설명</label><br />
            <textarea id="prod_desc"></textarea>
          </div>
          <div class="prod_detail">
            <label for="prod_detail">상품상세</label><br />
            <textarea id="prod_detail"></textarea>
          </div>
        </div>
      </div>
     </form>
    </div>

    <div class="NFT_board">
      <h3>자주하는 질문</h3>
      <tiles:insertAttribute name="board"></tiles:insertAttribute>
      <div class=" board_btn_ad">
        <button class=" add_board_ad">작성하기</button>
        <button class="add_board_ad">수정하기</button>
      </div>
    </div>


    <button class=" to_top">△</button>
    <button class="to_bottom">▽</button>
  </section>
  <script>
    function readImage(input) {
      // 인풋 태그에 파일이 있는 경우
      if (input.files && input.files[0]) {
        // 이미지 파일인지 검사 (생략)
        // FileReader 인스턴스 생성
        const reader = new FileReader()
        // 이미지가 로드가 된 경우
        reader.onload = e => {
          const previewImage = document.getElementById("preview-image")
          previewImage.src = e.target.result
        }
        // reader가 이미지 읽도록 하기
        reader.readAsDataURL(input.files[0])
      }
    }
    // input file에 change 이벤트 부여
    const inputImage = document.getElementById("input-image")
    inputImage.addEventListener("change", e => {
      readImage(e.target)
    })

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
  </script>
</body>
</html>

