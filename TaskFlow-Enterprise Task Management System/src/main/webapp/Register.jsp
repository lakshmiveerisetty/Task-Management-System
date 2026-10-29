
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<title>Register User</title>

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

        background: linear-gradient(
            135deg,
            #667eea,
            #764ba2,
            #f093fb
        );
    }

    .container {
        width: 400px;
        background: white;
        padding: 40px;
        border-radius: 20px;

        box-shadow: 0 15px 40px rgba(0, 0, 0, 0.25);
    }

    .title {
        text-align: center;
        margin-bottom: 30px;
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

    .form-group {
        margin-bottom: 20px;
    }

    .form-group label {
        display: block;
        margin-bottom: 7px;
        color: #444;
        font-weight: bold;
        font-size: 14px;
    }

    input,
    select {
        width: 100%;
        padding: 13px 15px;

        border: 2px solid #e0e0e0;
        border-radius: 10px;

        font-size: 15px;
        outline: none;

        transition: 0.3s;
    }

    input:focus,
    select:focus {
        border-color: #667eea;

        box-shadow: 0 0 8px rgba(102, 126, 234, 0.3);
    }

    select {
        background-color: white;
        cursor: pointer;
    }

    .register-btn {
        width: 100%;
        padding: 14px;

        border: none;
        border-radius: 10px;

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

    .register-btn:hover {
        transform: translateY(-2px);

        box-shadow: 0 8px 20px rgba(102, 126, 234, 0.4);
    }

    .login-text {
        text-align: center;
        margin-top: 20px;
        font-size: 14px;
        color: #777;
    }

    .login-text a {
        color: #667eea;
        text-decoration: none;
        font-weight: bold;
    }

    .login-text a:hover {
        text-decoration: underline;
    }

</style>

</head>

<body>

    <div class="container">

        <div class="title">
            <h1>Register User</h1>
            <p>Create your account to get started</p>
        </div>

        <form action="RegisterUserServlet" method="post">

            <div class="form-group">
                <label>Name</label>

                <input type="text"
                       name="name"
                       placeholder="Enter your name"
                       required>
            </div>

            <div class="form-group">
                <label>Email</label>

                <input type="email"
                       name="email"
                       placeholder="Enter your email"
                       required>
            </div>

            <div class="form-group">
                <label>Password</label>

                <input type="password"
                       name="password"
                       placeholder="Enter your password"
                       required>
            </div>

            <div class="form-group">
                <label>Role</label>

                <select name="role" required>

                    <option value="">-- Select Role --</option>

                    <option value="Dev">
                        Developer
                    </option>

                    <option value="QA">
                        QA
                    </option>

                    <option value="Scrum Master">
                        Scrum Master
                    </option>

                </select>

            </div>

            <button type="submit" class="register-btn">
                Register
            </button>

        </form>

        <div class="login-text">
            Already have an account?
            <a href="Login.jsp">Login</a>
        </div>

    </div>

</body>
</html>