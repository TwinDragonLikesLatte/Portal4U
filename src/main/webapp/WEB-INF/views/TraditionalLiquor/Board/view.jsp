<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  


<style>
/* 전체틀 */
.view-content {
	width: 70%;
	height: 500px;
	margin: 0 auto 20px auto;
}

/* 이미지틀 */
.food-img {
	display: block;
	float: left;
	margin-right: 20px;
}

/* 이미지 */
.food-img img {
	width: 500px;
	height: 500px;
	border: 1px solid black;
}

/* 제목틀 */
.recipe-subject {
	display: inline-block;
	margin-top: 10px;
}

/* 제목 */
.subject-txt {
	font-size: 1.4em;
	font-weight: 600;
	float: left;
	margin-right: 15px;
}

/* 등록일 */
.subject-regdate {
	display: inline-block;
	padding-top: 5px;
	font-size: 14px;
	opacity: .8;
}

.recipe-content {
	width: 100%;
	line-height: 1.3em;
	font-size : 1.2em;

}

.btns{
	width: 70%;
	margin: auto;
	text-align: right;
}
</style>

<div class="view-content">
	<div class="food-img">
		<img alt="" src="../resources/images/TraditionalLiquor/title.png">
	</div>
	<div class="recipe-subject">
		<div class="subject-txt">${dto.title}</div>
		<div class="subject-regdate">등록일 
			<fmt:parseDate value="${dto.regdate}" var="test" pattern="yyyy-MM-dd" ></fmt:parseDate>
       		<fmt:formatDate value="${test}" pattern="yyyy-MM-dd" />
		</div>
	</div>
	<hr>
	<div class="recipe-content">${dto.content}</div>
</div>

<div class="btns">
	<a href="list.do"><input type="button" value="돌아가기" class="btn btn-default"></a>
	<input type="button" value="수정하기" class="btn btn-info">
	<input type="button" value="삭제하기" class="btn btn-warning">
</div>
































