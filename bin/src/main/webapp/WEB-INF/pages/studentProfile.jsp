<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Student Profile</title>

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

<style>

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: "Segoe UI", Arial, sans-serif;
}

body {

    min-height: 100vh;

    background:
        radial-gradient(circle at 10% 20%, #243b80 0%, transparent 35%),
        radial-gradient(circle at 90% 80%, #6c3fc5 0%, transparent 35%),
        #0b1020;

    padding: 40px 20px;

    color: #1e293b;
}


/* ==============================
   MAIN CARD
============================== */

.profile-wrapper {

    max-width: 1100px;

    margin: auto;

    background: rgba(255,255,255,0.96);

    border-radius: 28px;

    overflow: hidden;

    box-shadow:
        0 30px 80px rgba(0,0,0,0.35);
}


/* ==============================
   TOP BANNER
============================== */

.banner {

    height: 190px;

    background:
        linear-gradient(
            135deg,
            #172554,
            #1d4ed8,
            #7c3aed
        );

    position: relative;

    padding: 30px;
}


/* Decorative circles */

.banner::before {

    content: "";

    position: absolute;

    width: 250px;
    height: 250px;

    border-radius: 50%;

    background: rgba(255,255,255,0.08);

    right: 80px;
    top: -100px;
}

.banner::after {

    content: "";

    position: absolute;

    width: 180px;
    height: 180px;

    border-radius: 50%;

    background: rgba(255,255,255,0.06);

    right: -40px;
    bottom: -100px;
}


/* ==============================
   PROFILE HEADER
============================== */

.profile-header {

    position: relative;

    margin-top: -70px;

    padding: 0 45px 30px;

    display: flex;

    align-items: flex-end;

    justify-content: space-between;
}


.student-main {

    display: flex;

    align-items: center;

    gap: 25px;
}


/* Avatar */

.avatar {

    width: 135px;

    height: 135px;

    border-radius: 28px;

    background:
        linear-gradient(
            135deg,
            #ffffff,
            #eef2ff
        );

    border: 6px solid white;

    display: flex;

    justify-content: center;

    align-items: center;

    font-size: 65px;

    color: #3155d9;

    box-shadow:
        0 15px 35px rgba(0,0,0,0.25);
}


.student-info {

    padding-top: 65px;
}


.student-info h1 {

    font-size: 34px;

    color: #111827;

    margin-bottom: 8px;
}


.student-info p {

    color: #64748b;

    font-size: 16px;
}


/* Verified */

.verified {

    background: #ecfdf5;

    color: #059669;

    border: 1px solid #a7f3d0;

    padding: 10px 18px;

    border-radius: 30px;

    font-weight: 600;

    font-size: 14px;
}

.verified i {

    margin-right: 7px;
}


/* ==============================
   CONTENT
============================== */

.content {

    padding: 35px 45px 45px;
}


/* ==============================
   STUDENT ID
============================== */

.student-id {

    background:
        linear-gradient(
            135deg,
            #eef2ff,
            #f5f3ff
        );

    border: 1px solid #ddd6fe;

    border-radius: 18px;

    padding: 20px 25px;

    display: flex;

    justify-content: space-between;

    align-items: center;

    margin-bottom: 30px;
}


.student-id .label {

    font-size: 13px;

    color: #64748b;

    text-transform: uppercase;

    letter-spacing: 1px;
}


.student-id .id {

    font-size: 25px;

    font-weight: 700;

    color: #4f46e5;

    margin-top: 4px;
}


.student-id i {

    font-size: 32px;

    color: #6366f1;
}


/* ==============================
   SECTION TITLE
============================== */

.section-title {

    display: flex;

    align-items: center;

    gap: 10px;

    margin-bottom: 18px;

    color: #111827;

    font-size: 20px;
}


.section-title i {

    color: #4f46e5;
}


/* ==============================
   INFORMATION GRID
============================== */

.info-grid {

    display: grid;

    grid-template-columns:
        repeat(2, 1fr);

    gap: 15px;

    margin-bottom: 35px;
}


.info-card {

    padding: 20px;

    border-radius: 16px;

    background: #f8fafc;

    border: 1px solid #e2e8f0;

    transition: 0.25s;
}


.info-card:hover {

    transform: translateY(-3px);

    border-color: #c7d2fe;

    box-shadow:
        0 8px 25px rgba(79,70,229,0.08);
}


.info-card .icon {

    width: 42px;

    height: 42px;

    border-radius: 12px;

    background: #eef2ff;

    color: #4f46e5;

    display: flex;

    justify-content: center;

    align-items: center;

    margin-bottom: 12px;
}


.info-card .label {

    color: #64748b;

    font-size: 13px;

    margin-bottom: 5px;
}


.info-card .value {

    color: #111827;

    font-size: 17px;

    font-weight: 600;
}


/* ==============================
   LOWER SECTION
============================== */

.lower-section {

    display: grid;

    grid-template-columns: 1fr 330px;

    gap: 25px;

    align-items: stretch;
}


/* ==============================
   FEES
============================== */

.fees {

    display: grid;

    grid-template-columns:
        repeat(2, 1fr);

    gap: 18px;
}


.fee-card {

    padding: 25px;

    border-radius: 20px;

    color: white;

    position: relative;

    overflow: hidden;
}


.fee-card::after {

    content: "";

    position: absolute;

    width: 100px;

    height: 100px;

    border-radius: 50%;

    background: rgba(255,255,255,0.12);

    right: -30px;

    bottom: -30px;
}


.fee-paid {

    background:
        linear-gradient(
            135deg,
            #059669,
            #10b981
        );
}


.fee-remaining {

    background:
        linear-gradient(
            135deg,
            #ea580c,
            #f97316
        );
}


.fee-icon {

    font-size: 25px;

    margin-bottom: 18px;
}


.fee-title {

    font-size: 14px;

    opacity: 0.9;

    margin-bottom: 8px;
}


.fee-value {

    font-size: 28px;

    font-weight: 700;
}


/* ==============================
   QR CARD
============================== */

.qr-card {

    border-radius: 20px;

    border: 1px solid #e2e8f0;

    background: white;

    padding: 22px;

    text-align: center;

    box-shadow:
        0 8px 25px rgba(15,23,42,0.06);
}


.qr-card h3 {

    color: #111827;

    margin-bottom: 5px;
}


.qr-card p {

    color: #64748b;

    font-size: 13px;

    margin-bottom: 15px;
}


.qr-card img {

    width: 180px;

    height: 180px;

    padding: 8px;

    border: 2px solid #e2e8f0;

    border-radius: 15px;

    background: white;
}


/* ==============================
   BUTTONS
============================== */

.actions {

    margin-top: 30px;

    display: flex;

    gap: 12px;

    flex-wrap: wrap;
}


.btn {

    text-decoration: none;

    padding: 13px 20px;

    border-radius: 12px;

    font-weight: 600;

    display: inline-flex;

    align-items: center;

    gap: 9px;

    transition: 0.25s;
}


.btn:hover {

    transform: translateY(-2px);
}


.btn-primary {

    background: #4f46e5;

    color: white;
}


.btn-secondary {

    background: #f1f5f9;

    color: #334155;

    border: 1px solid #e2e8f0;
}


.btn-green {

    background: #059669;

    color: white;
}


/* ==============================
   FOOTER
============================== */

.footer {

    text-align: center;

    padding: 20px;

    border-top: 1px solid #e2e8f0;

    color: #64748b;

    font-size: 13px;
}


/* ==============================
   RESPONSIVE
============================== */

@media(max-width: 850px) {

    .profile-header {

        flex-direction: column;

        align-items: center;

        text-align: center;

        gap: 20px;
    }

    .student-main {

        flex-direction: column;
    }

    .student-info {

        padding-top: 0;
    }

    .lower-section {

        grid-template-columns: 1fr;
    }
}


@media(max-width: 600px) {

    body {

        padding: 10px;
    }

    .banner {

        height: 140px;
    }

    .profile-header {

        padding: 0 20px 25px;
    }

    .content {

        padding: 25px 20px;
    }

    .avatar {

        width: 110px;

        height: 110px;

        font-size: 50px;
    }

    .student-info h1 {

        font-size: 27px;
    }

    .info-grid {

        grid-template-columns: 1fr;
    }

    .fees {

        grid-template-columns: 1fr;
    }

    .student-id {

        flex-direction: column;

        align-items: flex-start;

        gap: 10px;
    }

    .actions {

        flex-direction: column;
    }

    .btn {

        justify-content: center;
    }
}


/* ==============================
   PRINT
============================== */

@media print {

    body {

        background: white;

        padding: 0;
    }

    .profile-wrapper {

        box-shadow: none;

        width: 100%;
    }

    .actions {

        display: none;
    }

    .banner {

        -webkit-print-color-adjust: exact;
        print-color-adjust: exact;
    }
}

</style>

</head>


<body>


<div class="profile-wrapper">


    <!-- =========================
         TOP BANNER
    ========================== -->

    <div class="banner"></div>


    <!-- =========================
         PROFILE HEADER
    ========================== -->

    <div class="profile-header">

        <div class="student-main">

            <div class="avatar">

                <i class="fa-solid fa-user-graduate"></i>

            </div>


            <div class="student-info">

                <h1>
                    ${student.studentName}
                </h1>

                <p>
                    ${student.course}
                    &nbsp; • &nbsp;
                    ${student.branch}
                </p>

            </div>

        </div>


        <div class="verified">

            <i class="fa-solid fa-circle-check"></i>

            Verified Student

        </div>

    </div>


    <!-- =========================
         CONTENT
    ========================== -->

    <div class="content">


        <!-- STUDENT ID -->

        <div class="student-id">

            <div>

                <div class="label">
                    Student Identification Number
                </div>

                <div class="id">
                    ${student.studentId}
                </div>

            </div>

            <i class="fa-solid fa-id-card"></i>

        </div>


        <!-- INFORMATION -->

        <div class="section-title">

            <i class="fa-solid fa-user"></i>

            <span>Student Information</span>

        </div>


        <div class="info-grid">


            <div class="info-card">

                <div class="icon">
                    <i class="fa-solid fa-envelope"></i>
                </div>

                <div class="label">
                    Email Address
                </div>

                <div class="value">
                    ${student.email}
                </div>

            </div>


            <div class="info-card">

                <div class="icon">
                    <i class="fa-solid fa-phone"></i>
                </div>

                <div class="label">
                    Mobile Number
                </div>

                <div class="value">
                    ${student.phone}
                </div>

            </div>


            <div class="info-card">

                <div class="icon">
                    <i class="fa-solid fa-book-open"></i>
                </div>

                <div class="label">
                    Course
                </div>

                <div class="value">
                    ${student.course}
                </div>

            </div>


            <div class="info-card">

                <div class="icon">
                    <i class="fa-solid fa-building-columns"></i>
                </div>

                <div class="label">
                    Branch
                </div>

                <div class="value">
                    ${student.branch}
                </div>

            </div>


            <div class="info-card">

                <div class="icon">
                    <i class="fa-solid fa-calendar-days"></i>
                </div>

                <div class="label">
                    Joining Date
                </div>

                <div class="value">
                    ${student.joiningDate}
                </div>

            </div>


        </div>


        <!-- =========================
             FEES + QR
        ========================== -->

        <div class="lower-section">


            <div>

                <div class="section-title">

                    <i class="fa-solid fa-wallet"></i>

                    <span>Fee Overview</span>

                </div>


                <div class="fees">


                    <div class="fee-card fee-paid">

                        <div class="fee-icon">

                            <i class="fa-solid fa-circle-check"></i>

                        </div>

                        <div class="fee-title">
                            Fees Paid
                        </div>

                        <div class="fee-value">
                            ₹ ${student.feesPaid}
                        </div>

                    </div>


                    <div class="fee-card fee-remaining">

                        <div class="fee-icon">

                            <i class="fa-solid fa-hourglass-half"></i>

                        </div>

                        <div class="fee-title">
                            Remaining Fees
                        </div>

                        <div class="fee-value">
                            ₹ ${student.remainingFees}
                        </div>

                    </div>


                </div>

            </div>


            <!-- QR -->

            <div class="qr-card">

                <h3>
                    Student QR Code
                </h3>

                <p>
                    Scan to view student profile
                </p>


                <img
                    src="${pageContext.request.contextPath}/student/qrcode/${student.studentId}"
                    alt="Student QR Code">


            </div>


        </div>


        <!-- =========================
             ACTIONS
        ========================== -->

        <div class="actions">


            <a
                href="${pageContext.request.contextPath}/student/register"
                class="btn btn-primary">

                <i class="fa-solid fa-user-plus"></i>

                Register Student

            </a>


            <a
                href="${pageContext.request.contextPath}/student/qrcode/${student.studentId}"
                download
                class="btn btn-green">

                <i class="fa-solid fa-download"></i>

                Download QR

            </a>


            <a
                href="javascript:window.print()"
                class="btn btn-secondary">

                <i class="fa-solid fa-print"></i>

                Print Profile

            </a>


        </div>


    </div>


    <!-- =========================
         FOOTER
    ========================== -->

    <div class="footer">

        <i class="fa-solid fa-graduation-cap"></i>

        Student QR Code Management System

        &nbsp; • &nbsp;

        © 2026

    </div>


</div>


</body>

</html>