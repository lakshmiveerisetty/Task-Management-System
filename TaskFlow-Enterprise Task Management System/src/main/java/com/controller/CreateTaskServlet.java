package com.controller;

import java.io.IOException;

import com.dao.TaskDAO;
import com.model.Tasks;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/CreateTaskServlet")
public class CreateTaskServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		System.out.println("request came for create new task!!!");
		String taskName = request.getParameter("taskName");
		int storyPoints = Integer.parseInt(request.getParameter("storyPoints"));
		String assignedTo = request.getParameter("assignedTo");
		String taskDescription = request.getParameter("taskDescription");

		Tasks task = new Tasks(taskName, taskDescription, storyPoints, assignedTo);
		System.out.println(task);

		TaskDAO taskdao = new TaskDAO();
		boolean status = taskdao.createTask(task);

		if (status) {
			response.sendRedirect("TaskListServlet");
		}

	}

}
