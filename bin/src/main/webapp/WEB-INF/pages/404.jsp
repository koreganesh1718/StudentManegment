<%@ page contentType="text/html;charset=UTF-8" %>

<!DOCTYPE html>
<html>
<head>

<title>404 - Page Not Found</title>

<style>

body{
margin:0;
font-family:Arial;
background:#f5f7fa;
display:flex;
justify-content:center;
align-items:center;
height:100vh;
}

.box{

text-align:center;
background:white;
padding:50px;
border-radius:15px;
box-shadow:0 10px 30px rgba(0,0,0,.2);

}

h1{

font-size:90px;
color:#0d6efd;

}

p{

font-size:22px;
color:#555;

}

a{

padding:12px 25px;
background:#0d6efd;
color:white;
text-decoration:none;
border-radius:8px;

}

</style>

</head>

<body>

<div class="box">

<h1>404</h1>

<p>Page Not Found</p>

<br>

<a href="${pageContext.request.contextPath}/student/register">

Go Home

</a>

</div>

</body>

</html>