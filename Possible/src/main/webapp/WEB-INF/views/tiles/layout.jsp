<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>layout.jsp</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=0,maximum-scale=10,user-scalable=yes">
    '
    <meta name="HandheldFriendly" content="true">
    <meta name="format-detection" content="telephone=no">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

    <meta content="width=device-width, initial-scale=1.0" name="viewport"/>
    <meta name="description" content="Xpedia"/>
    <meta name="keywords" content="Xpedia"/>
    <meta name="author" content=""/>
    <meta name="MobileOptimized" content="320"/>
    <!--Template style -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/xpedia.css"/>
    <!--favicon-->
    <link rel="shortcut icon" type="image/png" href="${pageContext.request.contextPath}/resources/${pageContext.request.contextPath}/resources/images/fevicon.png"/>

</head>
<body>
<tiles:insertAttribute name="header"></tiles:insertAttribute>
<tiles:insertAttribute name="content"></tiles:insertAttribute>

<header>
    <h2>Cities</h2>
</header>

<section>
    <nav>
        <ul>
            <li><a href="${pageContext.request.contextPath}">Home</a></li>
            <li><a href="${pageContext.request.contextPath}/emp/empList">Employees</a></li>
            <li><a href="${pageContext.request.contextPath}/dept">Departments</a></li>
            <li><a href="${pageContext.request.contextPath}/top.jsp">Top</a></li>
            <li><a href="#">London</a></li>
            <li><a href="#">Paris</a></li>
            <li><a href="#">Tokyo</a></li>
        </ul>
    </nav>

    <article>
        <!-- 컨텐츠 -->
        <tiles:insertAttribute name="content"></tiles:insertAttribute>
    </article>
</section>

<footer>
    <p>Footer</p>
</footer>

</body>
</html>
