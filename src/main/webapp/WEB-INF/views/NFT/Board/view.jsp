<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   
<style>
	.add th { width: 150px; }
	.add td { width: auto; }
	.add textarea { resize: none; height: 200px; }
</style> 

<table class="table table-bordered add">


	<tr>
		<th>번호</th>
		<td>${dto.seq}</td>
	</tr>
	<tr>
		<th>이름</th>
		<td>${dto.id}</td>
	</tr>
	<tr>
		<th>날짜</th>
		<td>${dto.regdate}</td>
	</tr>
	<tr>
		<th>제목</th>
		<td>${dto.title}</td>
	</tr>
	
	<tr>
		<th>내용</th>
		<td>${dto.content}</td>
	</tr>
	
	
</table>
<div class="btns">
	<input type="button" value="돌아가기" class="btn btn-default" onclick="location.href='/NFTBoard/list';">
	<input type="button" value="수정하기" class="btn btn-default" onclick="location.href='/NFTBoard/edit?seq=${dto.seq}';">
	<input type="button" value="삭제하기" class="btn btn-default" onclick="location.href='/NFTBoard/del?seq=${dto.seq}';">
</div>

