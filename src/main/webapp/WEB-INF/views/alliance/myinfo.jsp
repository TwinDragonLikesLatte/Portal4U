<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style>

</style>

<div class="container myinfo">
    <div>seq : ${loginInfo.seq}</div>
    <div>id : ${loginInfo.id}</div>
    <div>name : ${loginInfo.name}</div>
    <c:if test="${not empty loginInfo}">
        <input type="button" class="btn btn-default" value="로그아웃" onclick="location.href='/logout'">
    </c:if>
    <c:if test="${empty loginInfo}">
        <input type="button" class="btn btn-default" value="로그인" onclick="location.href='/login'">
    </c:if>
</div>
