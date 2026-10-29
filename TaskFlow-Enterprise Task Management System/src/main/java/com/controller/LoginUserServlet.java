package com.controller;

import java.io.IOException;

import com.dao.UserDAO;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/LoginUserServlet")
public class LoginUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		System.out.println("request came for login!!!!!!!!!!!!");
		String email = request.getParameter("email");
		String password = request.getParameter("password");

		System.out.println(email + " " + password);
		UserDAO userdao = new UserDAO();
		boolean status = userdao.validateUser(email, password);
		if (status) {
			System.out.println("login successfully!!! ");
			response.sendRedirect("TaskListServlet");
		} else {
			response.sendRedirect("Login.jsp");
		}
	}

}
