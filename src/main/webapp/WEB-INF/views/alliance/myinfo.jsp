<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style>

    .container.myinfo {
        display: flex;
        align-items: center;
        justify-content: space-between;
        padding: 20px;
    }

    .container.myinfo > div:nth-child(1) {
        display: flex;
        align-items: center;
        width: 200px;
    }

    .container.myinfo > div:nth-child(2) {
        width: auto;
    }

    .member-thumb {
        width: 40px;
        height: 40px;
        margin-right: 20px;
        border-radius: 50%;
        background-color: tomato;
    }

    .member-name {
        font-size: 16px;
    }

    .member-id {
        font-size: 12px;
    }

</style>

<div class="container myinfo">
    <div>
        <div class="member-thumb"></div>
        <div class="member-info">
            <div class="member-name">${loginInfo.name}</div>
            <div class="member-id">${loginInfo.id}</div>
        </div>
    </div>
    <div>
        <c:if test="${not empty loginInfo}">
            <input type="button" class="btn btn-default" value="로그아웃" onclick="location.href='/logout'">
        </c:if>
        <c:if test="${empty loginInfo}">
            <input type="button" class="btn btn-default" value="로그인" onclick="location.href='/login'">
        </c:if>
    </div>
</div>
