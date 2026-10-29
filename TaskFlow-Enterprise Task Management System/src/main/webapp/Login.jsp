<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>Login User</title>

<style>

    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        font-family: Arial, sans-serif;
    }

    body {
        min-height: 100vh;

        display: flex;
        justify-content: center;
        align-items: center;

        overflow: hidden;

        background: linear-gradient(
            135deg,
            #667eea,
            #764ba2,
            #f093fb
        );

        position: relative;
    }

    /* Flower Decorations */

    .flower {
        position: absolute;
        font-size: 80px;
        opacity: 0.35;
        animation: float 5s ease-in-out infinite;
    }

    .flower1 {
        top: 8%;
        left: 8%;
    }

    .flower2 {
        bottom: 8%;
        right: 8%;
        font-size: 100px;
        animation-delay: 1s;
    }

    .flower3 {
        top: 15%;
        right: 15%;
        font-size: 55px;
        animation-delay: 2s;
    }

    .flower4 {
        bottom: 15%;
        left: 15%;
        font-size: 65px;
        animation-delay: 3s;
    }

    @keyframes float {

        0%, 100% {
            transform: translateY(0px) rotate(0deg);
        }

        50% {
            transform: translateY(-20px) rotate(10deg);
        }
    }

    /* Login Card */

    .container {

        width: 400px;

        background: rgba(255, 255, 255, 0.96);

        padding: 40px;

        border-radius: 25px;

        box-shadow:
            0 20px 50px rgba(0, 0, 0, 0.30);

        position: relative;

        z-index: 2;
    }

    /* Title */

    .title {
        text-align: center;
        margin-bottom: 30px;
    }

    .title .flower-icon {
        font-size: 45px;
        margin-bottom: 8px;
    }

    .title h1 {
        color: #5a3fc0;
        font-size: 30px;
        margin-bottom: 8px;
    }

    .title p {
        color: #777;
        font-size: 14px;
    }

    /* Form */

    .form-group {
        margin-bottom: 22px;
    }

    .form-group label {
        display: block;

        margin-bottom: 8px;

        color: #444;

        font-weight: bold;

        font-size: 14px;
    }

    input {
        width: 100%;

        padding: 14px 16px;

        border: 2px solid #e2def0;

        border-radius: 12px;

        font-size: 15px;

        outline: none;

        transition: 0.3s;
    }

    input:focus {

        border-color: #764ba2;

        box-shadow:
            0 0 10px rgba(118, 75, 162, 0.25);
    }

    /* Login Button */

    .login-btn {

        width: 100%;

        padding: 14px;

        border: none;

        border-radius: 12px;

        background: linear-gradient(
            135deg,
            #667eea,
            #764ba2
        );

        color: white;

        font-size: 17px;

        font-weight: bold;

        cursor: pointer;

        transition: 0.3s;
    }

    .login-btn:hover {

        transform: translateY(-2px);

        box-shadow:
            0 8px 20px rgba(118, 75, 162, 0.4);
    }

    /* Register Section */

    .register-text {

        text-align: center;

        margin-top: 22px;

        color: #777;

        font-size: 14px;
    }

    .register-btn {

        display: block;

        width: 100%;

        margin-top: 12px;

        padding: 12px;

        text-align: center;

        text-decoration: none;

        border: 2px solid #764ba2;

        border-radius: 12px;

        color: #764ba2;

        font-weight: bold;

        transition: 0.3s;
    }

    .register-btn:hover {

        background: #764ba2;

        color: white;
    }

</style>

</head>

<body>

    <!-- Flower Decorations -->

    <div class="flower flower1">🌸</div>

    <div class="flower flower2">🌺</div>

    <div class="flower flower3">🌷</div>

    <div class="flower flower4">🌼</div>


    <!-- Login Card -->

    <div class="container">

        <div class="title">

            <div class="flower-icon">
                🌸
            </div>

            <h1>Welcome Back!</h1>

            <p>Login to continue to your account</p>

        </div>


        <form action="LoginUserServlet" method="post">

            <div class="form-group">

                <label>Email</label>

                <input
                    type="email"
                    name="email"
                    placeholder="Enter your email"
                    required>

            </div>


            <div class="form-group">

                <label>Password</label>

                <input
                    type="password"
                    name="password"
                    placeholder="Enter your password"
                    required>

            </div>


            <button
                type="submit"
                class="login-btn">

                Login

            </button>

        </form>


        <div class="register-text">

            Don't have an account?

        </div>


        <a
            href="Register.jsp"
            class="register-btn">

            🌷 Create New Account

        </a>

    </div>

</body>

</html>