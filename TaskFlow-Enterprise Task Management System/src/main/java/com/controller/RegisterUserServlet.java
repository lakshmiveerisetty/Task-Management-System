package com.controller;

import java.io.IOException;

import com.dao.UserDAO;
import com.model.Users;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/RegisterUserServlet")
public class RegisterUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		System.out.println("request came for register user!!!");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String role = request.getParameter("role");

		Users user = new Users(name, email, password, role);

		System.out.println(user);

		UserDAO userdao = new UserDAO();
		boolean status = userdao.registerUser(user);
		if (status) {
			RequestDispatcher rd = request.getRequestDispatcher("Login.jsp");
			rd.forward(request, response);
		} else {
			RequestDispatcher rd = request.getRequestDispatcher("Register.jsp");
			rd.forward(request, response);
		}
	}

}
