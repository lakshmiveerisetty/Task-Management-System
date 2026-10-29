package com.controller;

import java.io.IOException;

import com.dao.TaskDAO;
import com.model.Tasks;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/UpdateTaskServlet")
public class UpdateTaskServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		System.out.println("request came for find task by id ");
		int id = Integer.parseInt(request.getParameter("id"));

		TaskDAO taskdao = new TaskDAO();
		Tasks task = taskdao.FindTaskById(id);
		request.setAttribute("task", task);
		RequestDispatcher rd = request.getRequestDispatcher("UpdateTaskForm.jsp");
		rd.forward(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("request recived for update task");
		int id = Integer.parseInt(request.getParameter("taskId"));
		String taskName = request.getParameter("taskName");
		int storyPoints = Integer.parseInt(request.getParameter("storyPoints"));
		String assignedTo = request.getParameter("assignedTo");
		String taskDescription = request.getParameter("taskDescription");
		Tasks task = new Tasks(taskName, taskDescription, storyPoints, assignedTo);
		task.setTaskId(id);
		System.out.println(task);

		TaskDAO taskdao = new TaskDAO();
		boolean status = taskdao.UpdateTask(task);
		if (status) {
			response.sendRedirect("TaskListServlet");
		}

	}

}
