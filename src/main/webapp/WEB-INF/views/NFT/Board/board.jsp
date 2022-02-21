<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
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
   <link rel="stylesheet" href="../resources/css/NFTAction/board.css">
   
   <tiles:insertAttribute name="asset"></tiles:insertAttribute>
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
    <div class="NFT_action_title">
      <h2>QnA 게시판</h2>
    </div>
    <div class="NFT_board">
      <table class="NFT_board_customer table table-bordered" style="width: 900px; margin: 0 auto;">
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
      <div class=" board_btn_ad">
        <button class=" add_board_ad">작성하기</button>
        <button class="add_board_ad">수정하기</button>
      </div>
    </div>
  </section>
   
   <script>
   
   </script>
</body>
</html>

