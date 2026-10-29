package com.controller;

import java.io.IOException;
import java.util.List;

import com.dao.TaskDAO;
import com.model.Tasks;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/TaskListServlet")
public class TaskListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		

		System.out.println("request came for  tasks list!!!!!");

		TaskDAO taskdao = new TaskDAO();
		List<Tasks> allTasks = taskdao.getAllTasks();
		System.out.println("inTaskListServlet====== ");
		System.out.println(allTasks);

		request.setAttribute("allTasks", allTasks);
		request.setAttribute("user", "lucky");
		RequestDispatcher rd = request.getRequestDispatcher("TaskHome.jsp");
		rd.forward(request, response);
	}

}
