<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<style>
	.add th { width: 150px; }
	.add td { width: auto; }
	.add textarea { resize: none; height: 200px; }
</style> 

<form method="POST" action="/NFTBoard/addok">
<table class="table table-bordered add">

	<tr>
		<th>제목</th>
		<td><input type="text" name="title" class="form-control" required></td>
	</tr>
	
	<tr>
		<th>내용</th>
		<td><textarea name="content" class="form-control" required></textarea></td>
	</tr>
	
	<tr>
		<th>아이디</th>
		<td><input type="text" name="id" class="form-control" required></td>
	</tr>	
	
	<tr>
		<th>비밀번호</th>
		<td><input type="password" name="password" class="form-control" required></td>
	</tr>	
	
</table>
<div class="btns">
	<input type="button" value="돌아가기" class="btn btn-default" onclick="location.href='/NFTBoard/list';">
	<input type="submit" value="작성하기" class="btn btn-default">
</div>

</form>


