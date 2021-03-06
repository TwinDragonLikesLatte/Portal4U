<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>New Future Things.</title>
   <link rel="stylesheet" href="../resources/css/NFTAction/reset.css">
   <link rel="stylesheet" href="../resources/css/NFTAction/styles.css">
   <link rel="stylesheet" href="../resources/css/NFTAction/admin.css">
   <link rel="stylesheet" href="../resources/css/NFTAction/board.css">
   
   <tiles:insertAttribute name="asset"></tiles:insertAttribute>
   <style>
   
   </style>
</head>
<body>
   <section>
    <tiles:insertAttribute name="logo"></tiles:insertAttribute>
    <tiles:insertAttribute name="content"></tiles:insertAttribute>
  </section>
   
   <script>
   
   </script>
</body>
</html>

