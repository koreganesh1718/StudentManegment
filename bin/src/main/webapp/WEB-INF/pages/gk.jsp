<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<title>Student QR Management System</title>

<link rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

<style>

/* ================================
   GLOBAL
================================ */

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: "Segoe UI", Arial, sans-serif;
}

body {
    min-height: 100vh;

    background:
        radial-gradient(circle at 10% 20%, rgba(66,165,245,.35), transparent 30%),
        radial-gradient(circle at 90% 80%, rgba(21,101,192,.45), transparent 30%),
        linear-gradient(135deg, #061b3a, #0d47a1, #1565c0);

    color: white;

    overflow-x: hidden;
}


/* ================================
   BACKGROUND CIRCLES
================================ */

.circle {
    position: fixed;
    border-radius: 50%;
    filter: blur(2px);
    opacity: .25;
    pointer-events: none;
}

.circle-one {
    width: 250px;
    height: 250px;
    background: #42a5f5;
    top: -80px;
    left: -70px;
}

.circle-two {
    width: 350px;
    height: 350px;
    background: #90caf9;
    right: -150px;
    bottom: -120px;
}

.circle-three {
    width: 150px;
    height: 150px;
    background: #ffffff;
    top: 45%;
    right: 20%;
    opacity: .08;
}


/* ================================
   MAIN WRAPPER
================================ */

.wrapper {
    width: 100%;
    min-height: 100vh;

    display: flex;
    align-items: center;
    justify-content: center;

    padding: 40px 20px;
}


/* ================================
   MAIN CARD
================================ */

.main-card {

    width: 1150px;
    max-width: 100%;

    min-height: 650px;

    display: flex;

    background: rgba(255,255,255,.10);

    backdrop-filter: blur(25px);
    -webkit-backdrop-filter: blur(25px);

    border: 1px solid rgba(255,255,255,.20);

    border-radius: 35px;

    box-shadow:
        0 30px 80px rgba(0,0,0,.35);

    overflow: hidden;
}


/* ================================
   LEFT SECTION
================================ */

.left {

    width: 55%;

    padding: 70px;

    display: flex;
    flex-direction: column;
    justify-content: center;

    position: relative;
}


/* small badge */

.badge {

    display: inline-flex;
    align-items: center;
    gap: 8px;

    width: fit-content;

    padding: 9px 16px;

    border-radius: 30px;

    background: rgba(255,255,255,.12);

    border: 1px solid rgba(255,255,255,.2);

    font-size: 13px;

    margin-bottom: 25px;

    color: #e3f2fd;
}


/* title */

.left h1 {

    font-size: 58px;

    line-height: 1.1;

    margin-bottom: 20px;

    letter-spacing: -1px;
}

.highlight {
    color: #64b5f6;
}


/* description */

.description {

    font-size: 17px;

    line-height: 29px;

    color: #dceeff;

    max-width: 570px;

    margin-bottom: 35px;
}


/* ================================
   REGISTER BUTTON
================================ */

.register-btn {

    width: 220px;

    padding: 16px 24px;

    display: flex;

    align-items: center;

    justify-content: center;

    gap: 10px;

    border-radius: 35px;

    text-decoration: none;

    background: white;

    color: #1565c0;

    font-size: 16px;

    font-weight: 700;

    box-shadow:
        0 12px 30px rgba(0,0,0,.2);

    transition: .3s;
}

.register-btn:hover {

    transform: translateY(-5px);

    box-shadow:
        0 18px 35px rgba(0,0,0,.3);

}


/* ================================
   FEATURES
================================ */

.features {

    display: flex;

    gap: 15px;

    margin-top: 50px;
}


.feature {

    width: 145px;

    padding: 18px;

    border-radius: 18px;

    background: rgba(255,255,255,.08);

    border: 1px solid rgba(255,255,255,.12);

    transition: .3s;
}

.feature:hover {

    transform: translateY(-5px);

    background: rgba(255,255,255,.15);
}


.feature i {

    font-size: 22px;

    margin-bottom: 10px;

    color: #90caf9;
}


.feature h4 {

    font-size: 14px;

    margin-bottom: 5px;
}


.feature p {

    font-size: 11px;

    color: #c8e5ff;
}


/* ================================
   RIGHT SECTION
================================ */

.right {

    width: 45%;

    display: flex;

    align-items: center;

    justify-content: center;

    position: relative;

    background:
        linear-gradient(
            135deg,
            rgba(255,255,255,.08),
            rgba(255,255,255,.02)
        );
}


/* ================================
   QR AREA
================================ */

.qr-container {

    width: 330px;

    height: 430px;

    display: flex;

    flex-direction: column;

    align-items: center;

    justify-content: center;

    position: relative;
}


/* QR BOX */

.qr-box {

    width: 240px;

    height: 240px;

    background: white;

    border-radius: 30px;

    display: flex;

    align-items: center;

    justify-content: center;

    position: relative;

    box-shadow:
        0 25px 60px rgba(0,0,0,.30);

    animation: floating 4s ease-in-out infinite;
}


/* QR icon */

.qr-box i {

    font-size: 150px;

    color: #0d47a1;
}


/* glowing ring */

.qr-box::before {

    content: "";

    position: absolute;

    width: 270px;

    height: 270px;

    border-radius: 35px;

    border: 2px solid rgba(144,202,249,.35);

    animation: pulse 2.5s infinite;
}


/* small floating cards */

.floating-card {

    position: absolute;

    background: rgba(255,255,255,.12);

    backdrop-filter: blur(15px);

    border: 1px solid rgba(255,255,255,.2);

    border-radius: 15px;

    padding: 12px 16px;

    display: flex;

    align-items: center;

    gap: 10px;

    box-shadow:
        0 10px 25px rgba(0,0,0,.15);

    font-size: 12px;
}


.card-one {

    top: 60px;

    left: 0;
}

.card-two {

    bottom: 90px;

    right: 0;
}


.floating-card i {

    color: #90caf9;

    font-size: 18px;
}


/* QR text */

.qr-title {

    margin-top: 45px;

    font-size: 23px;

    font-weight: 600;
}


.qr-subtitle {

    margin-top: 8px;

    color: #c7e3ff;

    font-size: 13px;

    text-align: center;
}


/* ================================
   ANIMATIONS
================================ */

@keyframes floating {

    0% {
        transform: translateY(0);
    }

    50% {
        transform: translateY(-12px);
    }

    100% {
        transform: translateY(0);
    }
}


@keyframes pulse {

    0% {
        transform: scale(.95);
        opacity: .8;
    }

    50% {
        transform: scale(1.08);
        opacity: .2;
    }

    100% {
        transform: scale(.95);
        opacity: .8;
    }
}


/* ================================
   FOOTER
================================ */

.footer {

    position: absolute;

    bottom: 20px;

    width: 100%;

    text-align: center;

    color: rgba(255,255,255,.55);

    font-size: 12px;
}


/* ================================
   RESPONSIVE
================================ */

@media(max-width: 900px) {

    .main-card {

        flex-direction: column;

    }

    .left,
    .right {

        width: 100%;

    }

    .left {

        padding: 50px 35px;

        text-align: center;

        align-items: center;
    }

    .left h1 {

        font-size: 43px;
    }

    .features {

        justify-content: center;

        flex-wrap: wrap;
    }

    .right {

        padding: 50px 20px;
    }

    .footer {

        position: static;

        margin-top: 20px;
    }
}


@media(max-width: 500px) {

    .left h1 {

        font-size: 36px;
    }

    .description {

        font-size: 15px;
    }

    .feature {

        width: 130px;
    }

    .qr-box {

        width: 200px;

        height: 200px;
    }

    .qr-box i {

        font-size: 120px;
    }
}

</style>

</head>


<body>


<!-- BACKGROUND DECORATION -->

<div class="circle circle-one"></div>

<div class="circle circle-two"></div>

<div class="circle circle-three"></div>


<div class="wrapper">


    <div class="main-card">


        <!-- =================================
             LEFT
        ================================= -->

        <div class="left">


            <div class="badge">

                <i class="fa-solid fa-shield-halved"></i>

                Secure Student Management

            </div>


            <h1>

                Student

                <span class="highlight">
                    QR
                </span>

                Management

            </h1>


            <p class="description">

                A simple and secure platform to manage
                student information, generate QR codes,
                and access student profiles instantly.

            </p>


            <!-- REGISTER -->

            <a
                href="${pageContext.request.contextPath}/student/register"
                class="register-btn">

                <i class="fa-solid fa-user-plus"></i>

                Register Student

            </a>


            <!-- FEATURES -->

            <div class="features">


                <div class="feature">

                    <i class="fa-solid fa-qrcode"></i>

                    <h4>
                        QR Access
                    </h4>

                    <p>
                        Quick profile access
                    </p>

                </div>


                <div class="feature">

                    <i class="fa-solid fa-user-graduate"></i>

                    <h4>
                        Students
                    </h4>

                    <p>
                        Manage information
                    </p>

                </div>


                <div class="feature">

                    <i class="fa-solid fa-shield-halved"></i>

                    <h4>
                        Secure
                    </h4>

                    <p>
                        Protected data
                    </p>

                </div>


            </div>


        </div>



        <!-- =================================
             RIGHT
        ================================= -->

        <div class="right">


            <div class="qr-container">


                <!-- FLOATING CARD -->

                <div class="floating-card card-one">

                    <i class="fa-solid fa-bolt"></i>

                    <span>
                        Instant Access
                    </span>

                </div>


                <!-- QR -->

                <div class="qr-box">

                    <i class="fa-solid fa-qrcode"></i>

                </div>


                <!-- FLOATING CARD -->

                <div class="floating-card card-two">

                    <i class="fa-solid fa-user-check"></i>

                    <span>
                        Student Profile
                    </span>

                </div>


                <div class="qr-title">

                    Scan. Access. Manage.

                </div>


                <div class="qr-subtitle">

                    Everything you need to manage
                    student information in one place.

                </div>


            </div>


        </div>


    </div>


</div>


<div class="footer">

    © 2026 Student QR Code Management System

</div>


</body>

</html>