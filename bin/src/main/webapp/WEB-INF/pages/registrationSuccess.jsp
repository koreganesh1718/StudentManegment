<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<title>Registration Completed</title>

<link rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

<style>

/* =====================================================
   GLOBAL
===================================================== */

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: "Segoe UI", Arial, sans-serif;
}

body {

    min-height: 100vh;

    background:
        radial-gradient(circle at top left, #2563eb 0%, transparent 35%),
        radial-gradient(circle at bottom right, #06b6d4 0%, transparent 35%),
        #07111f;

    display: flex;
    justify-content: center;
    align-items: center;

    padding: 40px 20px;

    color: #fff;
}


/* =====================================================
   MAIN WRAPPER
===================================================== */

.wrapper {

    width: 1050px;
    max-width: 100%;

    display: grid;
    grid-template-columns: 42% 58%;

    background: rgba(255,255,255,0.08);

    border: 1px solid rgba(255,255,255,0.15);

    border-radius: 28px;

    overflow: hidden;

    backdrop-filter: blur(20px);

    box-shadow:
        0 30px 80px rgba(0,0,0,0.45);
}


/* =====================================================
   LEFT SECTION
===================================================== */

.left {

    padding: 55px 40px;

    display: flex;

    flex-direction: column;

    justify-content: center;

    align-items: center;

    text-align: center;

    background:
        linear-gradient(
            145deg,
            rgba(37,99,235,0.85),
            rgba(6,182,212,0.55)
        );
}


/* Success Icon */

.success-icon {

    width: 105px;
    height: 105px;

    border-radius: 50%;

    display: flex;

    justify-content: center;

    align-items: center;

    background: rgba(255,255,255,0.15);

    border: 2px solid rgba(255,255,255,0.35);

    box-shadow:
        0 15px 40px rgba(0,0,0,0.25);

    margin-bottom: 30px;

    animation: pop 0.7s ease;
}

.success-icon i {

    font-size: 52px;

    color: #ffffff;
}


/* Animation */

@keyframes pop {

    0% {
        transform: scale(0.5);
        opacity: 0;
    }

    80% {
        transform: scale(1.1);
    }

    100% {
        transform: scale(1);
        opacity: 1;
    }
}


.left h1 {

    font-size: 34px;

    margin-bottom: 15px;

    font-weight: 700;
}


.left p {

    font-size: 16px;

    line-height: 27px;

    opacity: 0.9;

    max-width: 350px;
}


/* Small badge */

.status {

    margin-top: 30px;

    padding: 10px 20px;

    border-radius: 30px;

    background: rgba(255,255,255,0.15);

    border: 1px solid rgba(255,255,255,0.2);

    font-size: 14px;

    font-weight: 600;
}


/* =====================================================
   RIGHT SECTION
===================================================== */

.right {

    background: #ffffff;

    color: #172033;

    padding: 45px;

    display: flex;

    flex-direction: column;

    justify-content: center;
}


/* Header */

.header {

    display: flex;

    justify-content: space-between;

    align-items: center;

    margin-bottom: 25px;
}

.header h2 {

    color: #172033;

    font-size: 24px;
}

.header span {

    background: #e8f1ff;

    color: #2563eb;

    padding: 7px 14px;

    border-radius: 20px;

    font-size: 12px;

    font-weight: 700;
}


/* =====================================================
   STUDENT CARD
===================================================== */

.student-card {

    display: flex;

    align-items: center;

    gap: 18px;

    padding: 20px;

    border-radius: 18px;

    background: #f5f8ff;

    border: 1px solid #e4ebf7;

    margin-bottom: 25px;
}


.avatar {

    width: 60px;
    height: 60px;

    border-radius: 16px;

    display: flex;

    justify-content: center;

    align-items: center;

    background:
        linear-gradient(
            135deg,
            #2563eb,
            #06b6d4
        );

    color: white;

    font-size: 27px;
}


.student-info h3 {

    font-size: 20px;

    color: #172033;

    margin-bottom: 5px;
}


.student-info p {

    color: #718096;

    font-size: 14px;
}


/* =====================================================
   QR AREA
===================================================== */

.qr-section {

    display: flex;

    align-items: center;

    gap: 30px;

    padding: 25px;

    border-radius: 22px;

    background: #f8fafc;

    border: 1px solid #e5eaf2;

    margin-bottom: 25px;
}


/* QR container */

.qr-box {

    width: 190px;
    height: 190px;

    display: flex;

    justify-content: center;

    align-items: center;

    background: white;

    border-radius: 18px;

    padding: 10px;

    border: 5px solid #2563eb;

    box-shadow:
        0 10px 30px rgba(37,99,235,0.15);

    flex-shrink: 0;
}


.qr-box img {

    width: 160px;

    height: 160px;

    object-fit: contain;
}


/* QR Information */

.qr-info h3 {

    color: #172033;

    font-size: 20px;

    margin-bottom: 10px;
}


.qr-info p {

    color: #718096;

    font-size: 14px;

    line-height: 23px;

    margin-bottom: 15px;
}


.scan {

    display: inline-flex;

    align-items: center;

    gap: 8px;

    color: #2563eb;

    font-size: 13px;

    font-weight: 700;
}


/* =====================================================
   BUTTONS
===================================================== */

.actions {

    display: grid;

    grid-template-columns: 1fr 1fr;

    gap: 12px;
}


.btn {

    padding: 14px;

    border-radius: 12px;

    text-decoration: none;

    display: flex;

    justify-content: center;

    align-items: center;

    gap: 9px;

    font-size: 14px;

    font-weight: 600;

    transition: all 0.25s ease;
}


/* Download */

.download {

    background: #2563eb;

    color: white;
}


/* Profile */

.profile {

    background: #e8f1ff;

    color: #2563eb;
}


/* Register */

.register {

    grid-column: 1 / 3;

    background: #172033;

    color: white;
}


.btn:hover {

    transform: translateY(-3px);

    box-shadow:
        0 8px 20px rgba(0,0,0,0.15);
}


/* =====================================================
   FOOTER
===================================================== */

.footer {

    text-align: center;

    margin-top: 25px;

    font-size: 12px;

    color: #9aa4b2;
}


/* =====================================================
   RESPONSIVE
===================================================== */

@media(max-width: 850px) {

    .wrapper {

        grid-template-columns: 1fr;
    }

    .left {

        padding: 40px 25px;
    }

    .right {

        padding: 30px 20px;
    }

}


@media(max-width: 550px) {

    .qr-section {

        flex-direction: column;

        text-align: center;
    }

    .actions {

        grid-template-columns: 1fr;
    }

    .register {

        grid-column: auto;
    }

}

</style>

</head>


<body>


<div class="wrapper">


    <!-- =================================================
         LEFT SIDE
    ================================================= -->

    <div class="left">

        <div class="success-icon">

            <i class="fa-solid fa-check"></i>

        </div>


        <h1>
            Registration Complete
        </h1>


        <p>

            The student has been successfully registered
            in the Student QR Management System.

            <br><br>

            A unique QR code has been generated
            for quick and secure access to the student profile.

        </p>


        <div class="status">

            <i class="fa-solid fa-circle-check"></i>

            &nbsp; Student Successfully Added

        </div>

    </div>



    <!-- =================================================
         RIGHT SIDE
    ================================================= -->

    <div class="right">


        <!-- HEADER -->

        <div class="header">

            <h2>
                Student Profile
            </h2>

            <span>
                REGISTERED
            </span>

        </div>



        <!-- STUDENT -->

        <div class="student-card">


            <div class="avatar">

                <i class="fa-solid fa-user-graduate"></i>

            </div>


            <div class="student-info">

                <h3>
                    ${student.studentName}
                </h3>

                <p>

                    Student ID:
                    <strong>${student.studentId}</strong>

                </p>

            </div>

        </div>



        <!-- QR SECTION -->

        <div class="qr-section">


            <div class="qr-box">

                <img

                    src="${pageContext.request.contextPath}/student/qrcode/${student.studentId}"

                    alt="Student QR Code">

            </div>



            <div class="qr-info">

                <h3>
                    Your QR Code
                </h3>


                <p>

                    Scan this QR code using a mobile
                    camera to instantly open the
                    student's profile.

                </p>


                <div class="scan">

                    <i class="fa-solid fa-mobile-screen-button"></i>

                    Scan to View Profile

                </div>

            </div>


        </div>



        <!-- ACTION BUTTONS -->

        <div class="actions">


            <a

                href="${pageContext.request.contextPath}/student/qrcode/${student.studentId}"

                download

                class="btn download">

                <i class="fa-solid fa-download"></i>

                Download QR

            </a>



            <a

                href="${pageContext.request.contextPath}/student/profile/${student.studentId}"

                class="btn profile">

                <i class="fa-solid fa-id-card"></i>

                View Profile

            </a>



            <a

                href="${pageContext.request.contextPath}/student/register"

                class="btn register">

                <i class="fa-solid fa-user-plus"></i>

                Register Another Student

            </a>


        </div>



        <!-- FOOTER -->

        <div class="footer">

            Student QR Code Management System
            &nbsp; • &nbsp;
            2026

        </div>


    </div>


</div>


</body>

</html>