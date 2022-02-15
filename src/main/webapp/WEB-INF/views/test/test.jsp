<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>

    </style>
</head>
<body>
<!--  -->
<div class="container">
    <h1 class="page-header">빌드 테스트<small></small></h1>

    <h2>MyBatis 테스트</h2>
    <div>INSERT 결과 : ${result}</div>
    <div>SELECT COUNT(*) 결과 : ${count}</div>

    <h2>DB 로그 테스트</h2>
    <div>콘솔창 확인</div>

    <h2>AOP 테스트</h2>
    <div>콘솔창 확인</div>

    <h2>Tiles 확인</h2>
    <tiles:insertAttribute name="testTile" />
</div>

<script>

</script>
</body>
</html>