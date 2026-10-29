<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="com.model.Tasks"%>
<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>Task Management</title>

<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: Arial, sans-serif;
}

body {
	min-height: 100vh;
	background: #f5f3ff;
}

/* ================= HEADER ================= */
.header {
	height: 75px;
	background: white;
	display: flex;
	align-items: center;
	justify-content: space-between;
	padding: 0 40px;
	box-shadow: 0 3px 15px rgba(0, 0, 0, 0.12);
	position: sticky;
	top: 0;
	z-index: 100;
}

/* LOGO */
.logo {
	display: flex;
	align-items: center;
	gap: 12px;
}

.logo-icon {
	width: 45px;
	height: 45px;
	display: flex;
	align-items: center;
	justify-content: center;
	border-radius: 12px;
	background: linear-gradient(135deg, #667eea, #764ba2);
	color: white;
	font-size: 22px;
	font-weight: bold;
}

.logo h1 {
	color: #4b3ca7;
	font-size: 24px;
}

/* ================= LOGOUT ================= */
.logout-btn {
	text-decoration: none;
	padding: 10px 22px;
	border: 2px solid #764ba2;
	border-radius: 10px;
	color: #764ba2;
	font-size: 14px;
	font-weight: bold;
	transition: 0.3s;
}

.logout-btn:hover {
	background: #764ba2;
	color: white;
	transform: translateY(-2px);
	box-shadow: 0 6px 15px rgba(118, 75, 162, 0.25);
}

/* ================= MAIN ================= */
.main {
	width: 92%;
	max-width: 1200px;
	margin: 0 auto;
	padding: 35px 0;
}

/* ================= TOP SECTION ================= */
.top-section {
	display: flex;
	align-items: center;
	justify-content: space-between;
	margin-bottom: 30px;
}

.page-title h2 {
	color: #3f356d;
	font-size: 27px;
	margin-bottom: 6px;
}

.page-title p {
	color: #777;
	font-size: 14px;
}

/* ================= CREATE BUTTON ================= */
.create-btn {
	display: inline-flex;
	align-items: center;
	gap: 8px;
	padding: 13px 22px;
	background: linear-gradient(135deg, #667eea, #764ba2);
	color: white;
	text-decoration: none;
	border-radius: 12px;
	font-size: 15px;
	font-weight: bold;
	box-shadow: 0 7px 18px rgba(102, 126, 234, 0.3);
	transition: 0.3s;
}

.create-btn:hover {
	transform: translateY(-3px);
	box-shadow: 0 10px 25px rgba(102, 126, 234, 0.4);
}

.plus {
	font-size: 22px;
	line-height: 15px;
}

/* ================= TASK TABLE ================= */
.task-container {
	width: 100%;
	background: white;
	border-radius: 18px;
	padding: 25px;
	box-shadow: 0 8px 25px rgba(0, 0, 0, 0.08);
	border: 1px solid #eeeaff;
	overflow-x: auto;
}

.task-list-title {
	color: #4b3ca7;
	font-size: 20px;
	margin-bottom: 20px;
}

/* TABLE */
.task-table {
	width: 100%;
	border-collapse: collapse;
	overflow: hidden;
	border-radius: 10px;
}

/* TABLE HEADER */
.task-table th {
	background: linear-gradient(135deg, #667eea, #764ba2);
	color: white;
	padding: 15px 12px;
	text-align: left;
	font-size: 14px;
}

/* TABLE DATA */
.task-table td {
	padding: 14px 12px;
	border-bottom: 1px solid #eee;
	color: #555;
	font-size: 14px;
}

/* ALTERNATE ROW */
.task-table tr:nth-child(even) {
	background: #faf9ff;
}

/* HOVER */
.task-table tbody tr:hover {
	background: #f1efff;
	transition: 0.2s;
}

/* ================= RESPONSIVE ================= */
@media ( max-width : 700px) {
	.header {
		padding: 0 20px;
	}
	.logo h1 {
		font-size: 20px;
	}
	.main {
		width: 94%;
	}
	.top-section {
		flex-direction: column;
		align-items: flex-start;
		gap: 20px;
	}
	.create-btn {
		width: 100%;
		justify-content: center;
	}
	.task-container {
		padding: 15px;
	}
}
</style>

</head>


<body>


	<!-- ================= HEADER ================= -->

	<header class="header">

		<div class="logo">

			<div class="logo-icon">✓</div>

			<h1>Task Management</h1>

		</div>


		<a href="logout" class="logout-btn"> Logout </a>

	</header>


	<!-- ================= MAIN ================= -->

	<main class="main">


		<!-- ================= TOP SECTION ================= -->

		<div class="top-section">

			<div class="page-title">

				<h2>My Tasks</h2>

				<p>Manage and track your team's tasks</p>

			</div>


			<a href="TaskForm.jsp" class="create-btn"> <span class="plus">
					＋ </span> Create New Task

			</a>

		</div>


		<!-- ================= TASK LIST ================= -->

		<div class="task-container">

			<h3 class="task-list-title">Task List</h3>


			<table class="task-table">

				<thead>

					<tr>

						<th>Task ID</th>

						<th>Task Name</th>

						<th>Task Description</th>

						<th>Story Points</th>

						<th>Assigned To</th>
						<th>Action</th>

					</tr>

				</thead>


				<tbody>

					<%
					List<Tasks> alltasks = (List<Tasks>) request.getAttribute("allTasks");

					for (Tasks task : alltasks) {
					%>

					<tr>

						<td><%=task.getTaskId()%></td>

						<td><%=task.getTaskName()%></td>

						<td><%=task.getTaskDescription()%></td>

						<td><%=task.getStoryPoints()%></td>

						<td><%=task.getAssignedTo()%></td>

						<!-- ACTION COLUMN -->

						<td>
							<!-- UPDATE --> <a href="UpdateTaskServlet?id=<%=task.getTaskId()%>"
							class="update-btn"> Update </a> <!-- DELETE --> <a
							href="DeleteTaskServlet?id=<%=task.getTaskId()%>" class="delete-btn"
							onclick="return confirm('Are you sure you want to delete this task?');">
								Delete </a>

						</td>

					</tr>

					<%
					}
					%>

				</tbody>

			</table>

		</div>


	</main>


</body>

</html>