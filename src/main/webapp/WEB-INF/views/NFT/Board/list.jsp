<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>   


<div class="NFT_action_title">
      <h2>QnA 게시판</h2>
    </div>
    <div class="NFT_board">
      <table class="NFT_board_detail table table-bordered" style="width: 900px; margin: 0 auto;">
        <tr>
          <th>번호</th>
          <th>제목</th>
          <th>글쓴이</th>
          <th>등록일</th>
        </tr>
        <c:forEach items="${list}" var="dto">
        <tr>
          <td>${dto.seq }</td>
          <td class="card_item"><a href="/NFTBoard/view?seq=${dto.seq}">${dto.title }</a></td>
          <td>${dto.id }</td>
          <td>
          	<fmt:parseDate value="${dto.regdate}" var="test" pattern="yyyy-MM-dd" ></fmt:parseDate>
          	<fmt:formatDate value="${test}" pattern="yyyy-MM-dd" />
          </td>
        </tr>
        </c:forEach>
      </table>
      <div class=" board_btn_ad">
      
        <button class=" add_board_ad" onclick="location.href='/NFTBoard/add';">작성하기</button>
      
       <!--  <button class="add_board_ad">수정하기</button> -->
      </div>
    </div>