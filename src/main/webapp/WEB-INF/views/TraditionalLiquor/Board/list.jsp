<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<style>

/* 페이지 타이틀 : 레시피 */
.page-title {
	margin-bottom: 50px;
	margin-left: 30px;
	heigth: 50px;
}

.page-title .recipe {
	font-size: 24px;
	float: left;
	margin-right: 30px;  
	padding-top: 7px; 
	font-weight: 700;
}

/* 검색창 */
.page-title input {
	width: 230px;
	height: 40px;
	border-radius: 5px;
	background-color: #F3F3F3;
	outline: none;
	border: 1px solid #989898;
	padding-left: 15px;
}

.glyphicon-search {
	position: relative;
	left: -41px;
	top: 4px;
	font-size: 1.3em;
	color: rgb(20, 20, 20);
	cursor: pointer;
}


/* 게시물 담는 큰 틀 */
.card {
	content: '';
	display: block;
	clear:both;
    width: 1550px;
    margin: 110px auto 0 auto;
    position: relative;
    top: -60px;
}

/* 게시물 */
.card .post {
    border: 1px solid rgb(173, 173, 173);
    border-radius: 3px;
    margin: 0px 30px 60px 30px;
    width: 320px;
    height: 420px;
    box-shadow: 2px 2px 2px rgb(160, 160, 160);
    font-size: 14px;
    color: #444;
    display: inline-block;
    vertical-align: top; /* 인라인의 무게 중심 지정 */
    cursor: pointer;
}

/* 게시물 이미지 */
.card .post img {
    display: block;
    margin: 32px auto 0 auto;
    width: 250px;
    height: 250px;
    box-shadow: -1px -1px 3px rgb(160, 160, 160);;

}

/* 게시물 요약 */
.post .briefing {
	width: 80%;
	height: 100px;
	display : block;
	margin: 20px auto 0 auto;
    line-height: 1.2em;
}

.title {

	font-size: 1.2em;
	font-weight: 600;

}

.regdate, .readcount{
	text-align: right;
	font-size: 1em;
	margin-bottom: 2px;
	color: rgb(58, 58, 58);
}

.briefing .txt {
	margin-top: 10px;
	font-size:1.1em;
	text-align: justify;
}

.card a { text-decoration: none;}


/* 버튼 */
.page-title .btn-write {
	width: 80px;
	margin: 0;
	padding: 0;
	background-color: white;
}

.page-title .btn-write:hover {
	background-color: rgb(236, 236, 236);
	border: 1px solid #CCCCCC;
}

</style>


<div class="card">

	<div class="page-title">
		<div class="recipe">레시피</div>
		<input type="text" placeholder="검색">
		<a herf='#!'><p class="glyphicon glyphicon-search"></p></a>
		<input type="button" value="글쓰기" class="btn-write" onclick="location.href='add.do';" >
	</div>
	
	<c:forEach items="${list}" var="dto"> 
	<a href="view.do?seq_tlboard=${dto.seq_tlboard}">
		<div class="post">
			<c:if test="${not empty dto.filename}">
	        	<img src="../resources/images/TraditionalLiquor/${dto.filename}" alt="">
	        </c:if>
			<c:if test="${empty dto.filename}">
	        	<img src="../resources/images/TraditionalLiquor/null.png" alt="">
	        </c:if>
	        
	        
	        <div class="briefing">
	        	<div class="title">${dto.title}</div>
	        	<div class="regdate">
	        		<fmt:parseDate value="${dto.regdate}" var="test" pattern="yyyy-MM-dd" ></fmt:parseDate>
	        		<fmt:formatDate value="${test}" pattern="yyyy-MM-dd" />
	        	</div>
	        	<div class="readcount">조회수 ${dto.readcount}</div>
	        	<div class="txt">${fn:substring(dto.content,0,38)}..</div>
	        </div>
		</div>
	</a>
	</c:forEach>

</div>
	
	

