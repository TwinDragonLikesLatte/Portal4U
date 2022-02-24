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
        background-color: white;
    }

    .main-title {
        font-size: 26px;
        font-weight: bold;
    }

    .icons {
        display: flex;
        align-items: center;
    }

    .icons .glyphicon {
        margin: 0 10px;
        font-size: 24px;
        color: black;
    }

    .icons .glyphicon:hover {
        color: #003d63;
    }

</style>

<header>
    <span class="main-title">Alliance</span>
    <div class="icons">
        <a href="/"><div class="glyphicon glyphicon-home"></div></a>
    </div>
</header>

