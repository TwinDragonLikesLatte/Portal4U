<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style>
    header {
        width: 100%;
        height: 60px;
        display: flex;
        align-items: center;
        justify-content: space-between;
        padding: 0 20px;
        border: 1px solid #BEBEBE;
        border-radius: 4px;
    }

    .main-title {
        font-size: 26px;
        font-weight: bold;
    }

    .icons {
        display: flex;
        align-items: center;
    }

    .icons > .glyphicon {
        margin: 0 10px;
        font-size: 24px;
    }

</style>

<header>
    <span class="main-title">Alliance</span>
    <div class="icons">
        <div class="glyphicon glyphicon-home"></div>
        <div class="glyphicon glyphicon-send"></div>
        <div class="glyphicon glyphicon-bell"></div>
    </div>
</header>

