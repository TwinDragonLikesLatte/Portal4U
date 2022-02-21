<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style>

    .container.content {
        position: relative;
    }

    .msg-input-wrap {
        position: absolute;
        left: 0;
        bottom: 0;
        width: 100%;
        padding: 20px;
    }

</style>

<div class="container content">
    <div class="msg-input-wrap">
        <input type="text" class="msg-input form-control" placeholer="메시지를 입력해주세요.">
    </div>
</div>

