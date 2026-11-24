<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <%@ page contentType="text/html;charset=UTF-8"%> --%>

<!DOCTYPE html>
<html>

<head>

<title>Error</title>

<style>

body{

font-family:Arial;
background:#f2f2f2;
display:flex;
justify-content:center;
align-items:center;
height:100vh;

}

.box{

text-align:center;
background:white;
padding:40px;
border-radius:10px;
box-shadow:0 0 20px gray;

}

</style>

</head>

<body>

<div class="box">

<h1>Oops!</h1>

<h2>Something went wrong.</h2>

<p>Please try again later.</p>

<a href="${pageContext.request.contextPath}/student/register">

Home

</a>

</div>

</body>

</html>