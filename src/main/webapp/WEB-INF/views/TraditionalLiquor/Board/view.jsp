<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  



<style>
/* 전체틀 */
.view-content {
	width: 1330px;
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
	width: 1330px;
	margin: auto;
	text-align: right;
}

/* 첨부파일 */
.view-content .file { 
	width: 500px;
	border: 0;
	margin-top: 10px;
	margin-left: 3px;
	text-align: left;
	font-size: 1em;
	position: relative;
	top: 3px;
	
}
#pre {
	background-color: transparent;
	overflow-x: hidden; 
}
</style>

<div class="view-content">
	<div class="food-img">
	
		<c:if test="${not empty dto.filename}">
			<img alt="" src="../resources/images/TraditionalLiquor/${dto.filename}">
		</c:if>
		<c:if test="${empty dto.filename}">
			<img alt="" src="../resources/images/TraditionalLiquor/null.png">
		</c:if>
	</div>
	<div class="recipe-subject">
		<div class="subject-txt">${dto.title}</div>
		<div class="subject-regdate">등록일 
			<fmt:parseDate value="${dto.regdate}" var="test" pattern="yyyy-MM-dd" ></fmt:parseDate>
       		<fmt:formatDate value="${test}" pattern="yyyy-MM-dd" />
		</div>
		<br>
		<div class="file">
			<c:if test="${empty dto.orgfilename}">
				첨부파일 없음
			</c:if>
			<c:if test="${not empty dto.orgfilename}"> 첨부파일명: 
				<a href="/TraditionalLiquor/download.do?filename=${dto.filename}&orgfilename=${dto.orgfilename}">${dto.orgfilename}</a>
			</c:if>
		</div>
	</div>
	<hr>
	<div class="recipe-content"><pre id="pre">${dto.content}</pre></div>
</div>

<div class="btns">
	<a href="list.do"><input type="button" value="돌아가기" class="btn btn-default"></a>
	<input type="button" value="수정하기" class="btn btn-info" onclick="location.href='edit.do?seq_tlboard=${dto.seq_tlboard}';">
	<input type="button" value="삭제하기" class="btn btn-warning" onclick="location.href='del.do?seq_tlboard=${dto.seq_tlboard}';">
</div>


<script>
</script>































