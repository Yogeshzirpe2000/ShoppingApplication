package shoppingapp.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import shoppingapp.model.ProductModel;
import shoppingapp.model.RegistrationModel;
import shoppingapp.service.*;

@WebServlet("/register")
public class RegistrationController extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String contact = request.getParameter("contact");
		String username =request.getParameter("username");
		String password = request.getParameter("password");
		RegistrationModel rmodel = new RegistrationModel();
		rmodel.setName(name);
		rmodel.setEmail(email);
		rmodel.setContact(contact);
		rmodel.setUsername(username);
		rmodel.setPassword(password);
		RegistrationService rservice = new RegistrationServiceImpl();
		boolean b = rservice.isRegister(rmodel);
		if (b) {
			RequestDispatcher r = request.getRequestDispatcher("login.jsp");
			r.forward(request, response);
		}
		out.close();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
