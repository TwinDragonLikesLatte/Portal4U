<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style>

    .people-wrap {
        display: flex;
        align-items: center;
        padding: 10px 20px;
    }

    .people-thumb {
        width: 40px;
        height: 40px;
        margin-right: 20px;
        border-radius: 50%;
        background-color: tomato;
    }

    .people-name {
        font-size: 16px;
    }

</style>

<div class="container people">
    <div class="sub-header">People</div>
    <div class="content">
        <div class="people-wrap">
            <div class="people-thumb"></div>
            <div class="people-name">회원1</div>
        </div>
        <div class="people-wrap">
            <div class="people-thumb"></div>
            <div class="people-name">회원1</div>
        </div>
    </div>
</div>