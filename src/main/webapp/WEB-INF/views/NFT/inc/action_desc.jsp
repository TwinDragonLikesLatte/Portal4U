<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   

<div class="NFT_action_desc">
      <article class="desc">
      <%-- <c:forEach items="${list2}" var="dto"> --%>
        <h1 class="title_section">상품명</h1>
        <h2 class="product_title">${list2[0].prod_name}</h2>
        <h3 class="desc_section">상품 설명</h3>
        <p class="product_desc">${list2[0].prod_desc }</p>
        <p class="product_detail">${list2[0].prod_detail }</p>
     <%--  </c:forEach> --%>
      </article>
      
      <button class="more_detail" data-toggle="tooltip" title="NFT 제품은 상세보기가 지원되지 않습니다.">상세보기</button>
    </div>
