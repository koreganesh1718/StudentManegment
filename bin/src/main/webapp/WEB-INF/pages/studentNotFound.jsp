<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>

<head>

<title>Student Not Found</title>

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

background:white;
padding:40px;
text-align:center;
border-radius:10px;
box-shadow:0 0 20px gray;

}

h1{

color:red;

}

a{

text-decoration:none;
background:#007bff;
padding:10px 20px;
color:white;
border-radius:5px;

}

</style>

</head>

<body>

<div class="box">

<h1>❌ Student Not Found</h1>

<p>${message}</p>

<br>

<a href="${pageContext.request.contextPath}/student/register">

Go Home

</a>

</div>

</body>

</html>