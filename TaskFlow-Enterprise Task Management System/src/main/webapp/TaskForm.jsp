<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">
<title>Create New Task</title>

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

        background:
            linear-gradient(
                135deg,
                #fff0f5,
                #ffe4ec,
                #f5e6ff
            );

        position: relative;
        overflow: hidden;
    }

    /* ================= FLOWERS ================= */

    .flower {
        position: absolute;

        font-size: 75px;

        opacity: 0.55;

        animation: float 5s ease-in-out infinite;
    }

    .flower1 {
        top: 5%;
        left: 6%;
    }

    .flower2 {
        bottom: 5%;
        right: 6%;

        font-size: 95px;

        animation-delay: 1s;
    }

    .flower3 {
        top: 15%;
        right: 12%;

        font-size: 55px;

        animation-delay: 2s;
    }

    .flower4 {
        bottom: 12%;
        left: 12%;

        font-size: 60px;

        animation-delay: 3s;
    }

    .flower5 {
        top: 45%;
        left: 3%;

        font-size: 45px;

        animation-delay: 1.5s;
    }

    @keyframes float {

        0%, 100% {
            transform: translateY(0) rotate(0deg);
        }

        50% {
            transform: translateY(-18px) rotate(8deg);
        }

    }

    /* ================= FORM CARD ================= */

    .container {

        width: 500px;

        background: rgba(255, 255, 255, 0.96);

        padding: 38px 42px;

        border-radius: 25px;

        box-shadow:
            0 20px 50px rgba(150, 70, 100, 0.22);

        position: relative;

        z-index: 2;
    }

    /* ================= TITLE ================= */

    .title {
        text-align: center;

        margin-bottom: 30px;
    }

    .title-icon {
        font-size: 45px;

        margin-bottom: 8px;
    }

    .title h1 {
        color: #c44569;

        font-size: 28px;

        margin-bottom: 7px;
    }

    .title p {
        color: #888;

        font-size: 14px;
    }

    /* ================= FORM ================= */

    .form-group {
        margin-bottom: 20px;
    }

    .form-group label {
        display: block;

        margin-bottom: 8px;

        color: #555;

        font-size: 14px;

        font-weight: bold;
    }

    input,
    textarea,
    select {

        width: 100%;

        padding: 13px 15px;

        border: 2px solid #f1d6df;

        border-radius: 11px;

        background: #fffafa;

        color: #444;

        font-size: 15px;

        outline: none;

        transition: 0.3s;
    }

    input:focus,
    textarea:focus,
    select:focus {

        border-color: #d94f76;

        background: white;

        box-shadow:
            0 0 10px rgba(217, 79, 118, 0.18);
    }

    textarea {

        height: 110px;

        resize: none;
    }

    select {
        cursor: pointer;
    }

    /* ================= BUTTONS ================= */

    .buttons {

        display: flex;

        gap: 12px;

        margin-top: 25px;
    }

    .create-btn {

        flex: 1;

        padding: 14px;

        border: none;

        border-radius: 11px;

        background:
            linear-gradient(
                135deg,
                #d94f76,
                #c44569
            );

        color: white;

        font-size: 16px;

        font-weight: bold;

        cursor: pointer;

        transition: 0.3s;
    }

    .create-btn:hover {

        transform: translateY(-2px);

        box-shadow:
            0 8px 20px rgba(196, 69, 105, 0.35);
    }

    .back-btn {

        flex: 1;

        padding: 13px;

        border: 2px solid #d94f76;

        border-radius: 11px;

        background: white;

        color: #c44569;

        text-decoration: none;

        text-align: center;

        font-size: 15px;

        font-weight: bold;

        transition: 0.3s;
    }

    .back-btn:hover {

        background: #c44569;

        color: white;

        transform: translateY(-2px);
    }

    /* ================= RESPONSIVE ================= */

    @media (max-width: 600px) {

        .container {

            width: 92%;

            padding: 30px 25px;
        }

        .flower {
            font-size: 50px;
        }

        .buttons {
            flex-direction: column;
        }

    }

</style>

</head>

<body>


    <!-- ================= FLOWERS ================= -->

    <div class="flower flower1">🌹</div>

    <div class="flower flower2">🌸</div>

    <div class="flower flower3">🌷</div>

    <div class="flower flower4">🌺</div>

    <div class="flower flower5">🌹</div>


    <!-- ================= FORM ================= -->

    <div class="container">

        <div class="title">

            <div class="title-icon">
                🌹
            </div>

            <h1>Create New Task</h1>

            <p>
                Add a new task to your task management board
            </p>

        </div>


        <form action="CreateTaskServlet" method="post">


            <!-- Task Name -->

            <div class="form-group">

                <label>Task Name</label>

                <input
                    type="text"
                    name="taskName"
                    placeholder="Enter task name"
                    required>

            </div>


            <!-- Task Description -->

            <div class="form-group">

                <label>Task Description</label>

                <textarea
                    name="taskDescription"
                    placeholder="Describe the task..."
                    required></textarea>

            </div>


            <!-- Story Points -->

            <div class="form-group">

                <label>Story Points</label>

                <input
                    type="number"
                    name="storyPoints"
                    placeholder="Enter story points"
                    min="0"
                    required>

            </div>


            <!-- Assigned To -->

            <div class="form-group">

                <label>Assigned To</label>

                <input
                    type="text"
                    name="assignedTo"
                    placeholder="Enter developer name"
                    required>

            </div>


            <!-- Buttons -->

            <div class="buttons">

                <button
                    type="submit"
                    class="create-btn">

                    🌹 Create Task

                </button>


               

            </div>


        </form>

    </div>

</body>

</html>