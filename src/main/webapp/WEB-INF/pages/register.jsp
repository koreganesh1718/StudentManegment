<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<title>Student Registration | Student QR</title>

<link rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

<style>

/* ================================
   RESET
================================ */

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: "Segoe UI", Arial, sans-serif;
}


/* ================================
   BODY
================================ */

body {

    min-height: 100vh;

    background: #f4f7fb;

    display: flex;

    justify-content: center;

    align-items: center;

    padding: 30px;

}


/* ================================
   MAIN CARD
================================ */

.register-container {

    width: 1100px;

    max-width: 100%;

    min-height: 650px;

    background: white;

    border-radius: 24px;

    display: flex;

    overflow: hidden;

    box-shadow:
        0 20px 50px rgba(0,0,0,0.12);

}


/* ================================
   LEFT PANEL
================================ */

.left-panel {

    width: 38%;

    background:
        linear-gradient(
            145deg,
            #0d47a1,
            #1565c0,
            #1976d2
        );

    color: white;

    padding: 55px 40px;

    position: relative;

    display: flex;

    flex-direction: column;

    justify-content: space-between;

}


/* decorative circle */

.left-panel::before {

    content: "";

    position: absolute;

    width: 220px;

    height: 220px;

    border-radius: 50%;

    background: rgba(255,255,255,0.08);

    top: -80px;

    right: -80px;

}


.left-panel::after {

    content: "";

    position: absolute;

    width: 180px;

    height: 180px;

    border-radius: 50%;

    background: rgba(255,255,255,0.06);

    bottom: -70px;

    left: -70px;

}


/* logo */

.brand {

    position: relative;

    z-index: 2;

}


.logo {

    width: 65px;

    height: 65px;

    border-radius: 16px;

    background: rgba(255,255,255,0.15);

    display: flex;

    justify-content: center;

    align-items: center;

    margin-bottom: 30px;

}


.logo i {

    font-size: 32px;

}


.brand h1 {

    font-size: 34px;

    margin-bottom: 12px;

}


.brand p {

    font-size: 15px;

    line-height: 25px;

    opacity: 0.85;

}


/* benefits */

.benefits {

    position: relative;

    z-index: 2;

}


.benefit {

    display: flex;

    align-items: center;

    gap: 15px;

    margin-bottom: 20px;

}


.benefit-icon {

    width: 42px;

    height: 42px;

    border-radius: 12px;

    background: rgba(255,255,255,0.14);

    display: flex;

    justify-content: center;

    align-items: center;

}


.benefit-text strong {

    display: block;

    font-size: 14px;

}


.benefit-text span {

    font-size: 12px;

    opacity: 0.75;

}


/* ================================
   RIGHT PANEL
================================ */

.right-panel {

    width: 62%;

    padding: 45px 55px;

}


/* heading */

.form-header {

    display: flex;

    justify-content: space-between;

    align-items: center;

    margin-bottom: 30px;

}


.form-header h2 {

    color: #17324d;

    font-size: 27px;

}


.form-header p {

    color: #8a96a3;

    font-size: 13px;

    margin-top: 5px;

}


/* home button */

.home-btn {

    width: 42px;

    height: 42px;

    border-radius: 50%;

    background: #f1f6fc;

    color: #1565c0;

    display: flex;

    align-items: center;

    justify-content: center;

    text-decoration: none;

    transition: 0.3s;

}


.home-btn:hover {

    background: #1565c0;

    color: white;

}


/* ================================
   SECTION TITLE
================================ */

.section-title {

    display: flex;

    align-items: center;

    gap: 10px;

    margin: 25px 0 18px;

    color: #1565c0;

    font-size: 14px;

    font-weight: 700;

}


.section-title i {

    font-size: 15px;

}


/* ================================
   FORM GRID
================================ */

.form-grid {

    display: grid;

    grid-template-columns: 1fr 1fr;

    gap: 18px;

}


.form-group {

    position: relative;

}


.form-group.full {

    grid-column: span 2;

}


.form-group label {

    display: block;

    margin-bottom: 7px;

    font-size: 12px;

    font-weight: 600;

    color: #52606d;

}


.input-wrapper {

    position: relative;

}


.input-wrapper i {

    position: absolute;

    left: 14px;

    top: 50%;

    transform: translateY(-50%);

    color: #8da4bb;

    font-size: 14px;

}


.input-wrapper input {

    width: 100%;

    height: 46px;

    border: 1px solid #dce4ec;

    border-radius: 10px;

    padding: 0 15px 0 42px;

    outline: none;

    font-size: 14px;

    color: #263238;

    background: #fbfcfe;

    transition: 0.25s;

}


.input-wrapper input:focus {

    border-color: #1976d2;

    background: white;

    box-shadow:
        0 0 0 3px rgba(25,118,210,0.08);

}


.input-wrapper input::placeholder {

    color: #aab4bf;

}


/* ================================
   PASSWORD
================================ */

.password-toggle {

    position: absolute;

    right: 14px;

    top: 50%;

    transform: translateY(-50%);

    cursor: pointer;

    color: #9aa7b4;

}


/* ================================
   BUTTON
================================ */

.submit-btn {

    width: 100%;

    height: 50px;

    margin-top: 30px;

    border: none;

    border-radius: 12px;

    background:
        linear-gradient(
            90deg,
            #1565c0,
            #1976d2
        );

    color: white;

    font-size: 15px;

    font-weight: 600;

    cursor: pointer;

    display: flex;

    align-items: center;

    justify-content: center;

    gap: 10px;

    box-shadow:
        0 8px 18px rgba(21,101,192,0.22);

    transition: 0.25s;

}


.submit-btn:hover {

    transform: translateY(-2px);

    box-shadow:
        0 12px 25px rgba(21,101,192,0.3);

}


/* ================================
   FOOTER
================================ */

.form-footer {

    text-align: center;

    margin-top: 18px;

    color: #9aa3ad;

    font-size: 11px;

}


/* ================================
   RESPONSIVE
================================ */

@media(max-width: 850px) {

    body {

        padding: 15px;

    }

    .register-container {

        flex-direction: column;

    }

    .left-panel {

        width: 100%;

        padding: 35px;

    }

    .right-panel {

        width: 100%;

        padding: 35px;

    }

    .benefits {

        margin-top: 30px;

    }

}


@media(max-width: 600px) {

    .form-grid {

        grid-template-columns: 1fr;

    }

    .form-group.full {

        grid-column: span 1;

    }

    .right-panel {

        padding: 30px 20px;

    }

}

</style>

</head>


<body>


<div class="register-container">


    <!-- =====================================
         LEFT PANEL
    ====================================== -->

    <div class="left-panel">


        <div class="brand">

            <div class="logo">

                <i class="fa-solid fa-qrcode"></i>

            </div>


            <h1>
                Student QR
            </h1>


            <p>

                Create your student profile
                and generate your personal
                QR code in seconds.

            </p>

        </div>



        <div class="benefits">


            <div class="benefit">

                <div class="benefit-icon">

                    <i class="fa-solid fa-qrcode"></i>

                </div>

                <div class="benefit-text">

                    <strong>
                        Instant QR Code
                    </strong>

                    <span>
                        Automatically generated
                    </span>

                </div>

            </div>



            <div class="benefit">

                <div class="benefit-icon">

                    <i class="fa-solid fa-user-shield"></i>

                </div>

                <div class="benefit-text">

                    <strong>
                        Secure Profile
                    </strong>

                    <span>
                        Your information stays protected
                    </span>

                </div>

            </div>



            <div class="benefit">

                <div class="benefit-icon">

                    <i class="fa-solid fa-bolt"></i>

                </div>

                <div class="benefit-text">

                    <strong>
                        Easy Management
                    </strong>

                    <span>
                        Manage your student details easily
                    </span>

                </div>

            </div>


        </div>


    </div>



    <!-- =====================================
         RIGHT PANEL
    ====================================== -->

    <div class="right-panel">


        <div class="form-header">

            <div>

                <h2>
                    Create Student Profile
                </h2>

                <p>
                    Enter the student's information below
                </p>

            </div>


            <a
                href="${pageContext.request.contextPath}/"
                class="home-btn"
                title="Back to Home">

                <i class="fa-solid fa-house"></i>

            </a>

        </div>



        <form
            action="${pageContext.request.contextPath}/student/saveStudent"
            method="post">


            <!-- =========================
                 PERSONAL INFORMATION
            ========================== -->

            <div class="section-title">

                <i class="fa-solid fa-user"></i>

                Personal Information

            </div>


            <div class="form-grid">


                <div class="form-group full">

                    <label>
                        Student Name
                    </label>

                    <div class="input-wrapper">

                        <i class="fa-solid fa-user"></i>

                        <input
                            type="text"
                            name="studentName"
                            placeholder="Enter full name"
                            required>

                    </div>

                </div>



                <div class="form-group">

                    <label>
                        Course
                    </label>

                    <div class="input-wrapper">

                        <i class="fa-solid fa-book"></i>

                        <input
                            type="text"
                            name="course"
                            placeholder="e.g. B.Tech"
                            required>

                    </div>

                </div>



                <div class="form-group">

                    <label>
                        Branch
                    </label>

                    <div class="input-wrapper">

                        <i class="fa-solid fa-building-columns"></i>

                        <input
                            type="text"
                            name="branch"
                            placeholder="e.g. Computer Science"
                            required>

                    </div>

                </div>


            </div>



            <!-- =========================
                 CONTACT INFORMATION
            ========================== -->

            <div class="section-title">

                <i class="fa-solid fa-address-card"></i>

                Contact & Login Information

            </div>


            <div class="form-grid">


                <div class="form-group">

                    <label>
                        Email Address
                    </label>

                    <div class="input-wrapper">

                        <i class="fa-solid fa-envelope"></i>

                        <input
                            type="email"
                            name="email"
                            placeholder="student@example.com"
                            required>

                    </div>

                </div>



                <div class="form-group">

                    <label>
                        Mobile Number
                    </label>

                    <div class="input-wrapper">

                        <i class="fa-solid fa-phone"></i>

                        <input
                            type="text"
                            name="phone"
                            placeholder="Enter mobile number"
                            required>

                    </div>

                </div>



                <div class="form-group full">

                    <label>
                        Password
                    </label>

                    <div class="input-wrapper">

                        <i class="fa-solid fa-lock"></i>

                        <input
                            type="password"
                            name="password"
                            id="password"
                            placeholder="Create a password"
                            minlength="6"
                            required>

                        <span
                            class="password-toggle"
                            onclick="togglePassword()">

                            <i
                                class="fa-solid fa-eye"
                                id="eyeIcon">
                            </i>

                        </span>

                    </div>

                </div>


            </div>



            <!-- =========================
                 FEE INFORMATION
            ========================== -->

            <div class="section-title">

                <i class="fa-solid fa-indian-rupee-sign"></i>

                Fee Information

            </div>


            <div class="form-grid">


                <div class="form-group">

                    <label>
                        Fees Paid
                    </label>

                    <div class="input-wrapper">

                        <i class="fa-solid fa-indian-rupee-sign"></i>

                        <input
                            type="number"
                            name="feesPaid"
                            placeholder="0"
                            min="0"
                            required>

                    </div>

                </div>



                <div class="form-group">

                    <label>
                        Remaining Fees
                    </label>

                    <div class="input-wrapper">

                        <i class="fa-solid fa-wallet"></i>

                        <input
                            type="number"
                            name="remainingFees"
                            placeholder="0"
                            min="0"
                            required>

                    </div>

                </div>



                <div class="form-group full">

                    <label>
                        Joining Date
                    </label>

                    <div class="input-wrapper">

                        <i class="fa-solid fa-calendar-days"></i>

                        <input
                            type="date"
                            name="joiningDate"
                            required>

                    </div>

                </div>


            </div>



            <!-- =========================
                 SUBMIT
            ========================== -->

            <button
                type="submit"
                class="submit-btn">

                <i class="fa-solid fa-qrcode"></i>

                Create Student & Generate QR

            </button>


        </form>



        <div class="form-footer">

            © 2026 Student QR Code Management System

        </div>


    </div>


</div>



<script>

function togglePassword() {

    const password =
        document.getElementById("password");

    const icon =
        document.getElementById("eyeIcon");


    if (password.type === "password") {

        password.type = "text";

        icon.classList.remove("fa-eye");

        icon.classList.add("fa-eye-slash");

    } else {

        password.type = "password";

        icon.classList.remove("fa-eye-slash");

        icon.classList.add("fa-eye");

    }

}

</script>


</body>
</html>