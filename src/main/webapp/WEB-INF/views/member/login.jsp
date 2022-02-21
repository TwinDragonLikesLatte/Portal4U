<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
    body {
        display: flex;
        align-items: center;
        justify-content: center;
        height: 100vh;
    }

    .container {
        margin-bottom: 100px;
    }

    .btn {
        width: 100%;
    }

    input {
        margin-top : 10px;
    }
</style>
<div class="container">
    <h1 class="page-header">로그인</h1>
    <form method="POST" action="/loginok">
        <div>
            <input type="text" class="form-control" placeholder="아이디" name="id">
            <input type="password" class="form-control" placeholder="비밀번호" name="pw">
            <input type="submit" class="btn btn-primary" value="로그인">
            <input type="button" class="btn btn-default" value="회원가입" onclick="location.href='/join'">
        </div>
    </form>
</div>
