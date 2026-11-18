<%@ page contentType="text/html;charset=UTF-8" %>

<!DOCTYPE html>
<html>
<head>

<title>500 - Internal Server Error</title>

<style>

body{

margin:0;
font-family:Arial;
background:#fff3cd;
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

font-size:80px;
color:red;

}

a{

padding:12px 25px;
background:red;
color:white;
text-decoration:none;
border-radius:8px;

}

</style>

</head>

<body>

<div class="box">

<h1>500</h1>

<h2>Something Went Wrong</h2>

<br>

<a href="${pageContext.request.contextPath}/student/register">

Back to Home

</a>

</div>

</body>

</html>