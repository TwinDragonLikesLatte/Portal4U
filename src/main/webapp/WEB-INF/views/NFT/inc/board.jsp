<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>






      <table class="NFT_board_detail table table-bordered" style="width: 900px; margin: 0 auto;">
        <tr>
          <th>번호</th>
          <th>제목</th>
          <th>작성부서</th>
          <th>등록일</th>
        </tr>
        <c:forEach items="${list}" var="dto">
        <tr>
          <td>${dto.seq }</td>
          <td class="card_item">${dto.title }</td>
          <td>${dto.buseo }</td>
          <td>
          	<fmt:parseDate value="${dto.regdate}" var="test" pattern="yyyy-MM-dd" ></fmt:parseDate>
          	<fmt:formatDate value="${test}" pattern="yyyy-MM-dd" />
          </td>
        </tr>
        </c:forEach>
      </table>
      
      <div class="modal">
      <div class="modal-title">
        <p class="nftboardnum">${list[0].seq}</p>
        <p class="nftboardtitle">"${list[0].title}"</p>
        <p class="nftboarddate">
        	<fmt:parseDate value="${list[0].regdate}" var="test" pattern="yyyy-MM-dd" ></fmt:parseDate>
          	<fmt:formatDate value="${test}" pattern="yyyy-MM-dd" />
        </p>
      </div>
      <div class="card-list">
        <small class="modal_notice">ESC 버튼을 누르면 창이 종료됩니다.</small>
        <div class="card-desc">
          <p>"${list[0].content}"</p>
        </div>
        <div class="card-img">
          <img src="../resources/images/NFTAction/Nyan cat.gif" alt="NFT예시">
          <p class="modal_notice2">약 6억원에 낙찰된 Nayn Cat NFT</p>
        </div>
      </div>
    </div>
    