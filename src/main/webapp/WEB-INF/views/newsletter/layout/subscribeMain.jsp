<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>

<html>
<head>

    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <tiles:insertAttribute name="asset"></tiles:insertAttribute>
    <link rel="stylesheet" href="/resources/css/newsletter/styles.css">
    <link rel="stylesheet" href="/resources/css/newsletter/screen/subscribe.css">

    <title>Pitchfork Newsletter</title>
</head>

<body>

    <tiles:insertAttribute name="content"></tiles:insertAttribute>

</body>

</html>
