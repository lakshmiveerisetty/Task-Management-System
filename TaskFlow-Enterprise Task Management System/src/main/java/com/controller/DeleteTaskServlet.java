package com.controller;

import java.io.IOException;

import com.dao.TaskDAO;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/DeleteTaskServlet")
public class DeleteTaskServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		System.out.println("request came for delete task with id");
		int id = Integer.parseInt(request.getParameter("id"));

		TaskDAO taskdao = new TaskDAO();
		boolean status = taskdao.deleteTaskbyId(id);

		if (status) {
			response.sendRedirect("TaskListServlet");
		}
	}

}
