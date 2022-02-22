<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<style>
.btns {
	width: 100%;
	text-align: center;
}
</style>
<form method="POST" action="delok.do" enctype="multipart/form-data">
<div class="btns">
	<input type="button" value="돌아가기" class="btn btn-default" onclick="location.href='edit.do?seq_tlboard=${seq_tlboard}';">
	<input type="submit" value="삭제하기" class="btn btn-danger">
</div>

<input type="hidden" name="seq_tlboard" value="${seq_tlboard}">

</form>
	