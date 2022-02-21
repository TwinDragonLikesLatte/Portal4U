<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style>

    .container.main-content {
        position: relative;
    }

    .msg-input-wrap {
        position: absolute;
        left: 0;
        bottom: 0;
        width: 100%;
        padding: 20px;
        border-top: 1px solid #BEBEBE;
        background-color: white;
    }

    .msg-input {
        display: flex;
        line-height: 0px;
    }

</style>

<div class="container main-content">
    <div class="sub-header">채팅방 이름</div>
    <div class="content">

    </div>
    <div class="msg-input-wrap">
        <input type="textarea" class="msg-input form-control" placeholder="메시지를 입력해주세요.">
    </div>
</div>

