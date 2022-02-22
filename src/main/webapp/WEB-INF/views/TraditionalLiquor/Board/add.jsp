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
	margin-bottom: 5px;
}

/* 제목 */
.subject-txt {
	float: left;
}

.subject-txt .form-control { width: 810px; height: 50px; font-size: 1.3em; }

/* 내용 */
.recipe-content {
	width: 100%;
}

.recipe-content .form-control { 
	width: 810px; 
	height: 360px; 
	resize: none; 
	line-height: 1.3em;
	font-size : 1.1em;
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
	box-shadow: 0px;
}
</style>

<form method="POST" action="addok.do" enctype="multipart/form-data">
<div class="view-content">
	<div class="food-img">
		<img alt="" src="../resources/images/TraditionalLiquor/null.png">
	</div>
	<div class="recipe-subject"><div class="subject-txt"><input type="text" name="title" class="form-control" placeholder="제목을 입력하세요." required></div></div>
	<input type="file" name="attach" class="form-control file">
	<hr>
	<div class="recipe-content"><textarea name="content" class="form-control" required></textarea></div>
	
</div>

<div class="btns">
	<input type="button" value="돌아가기" class="btn btn-default" onclick="location.href='list.do';">
	<input type="submit" value="작성하기" class="btn btn-info">
</div>
</form>































