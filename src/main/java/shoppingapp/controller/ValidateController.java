package shoppingapp.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import shoppingapp.model.LoginModel;
import shoppingapp.service.ValidateUserServiceImp;
import shoppingapp.repository.DBConfig;
import shoppingapp.repository.DBParent;
import shoppingapp.service.ValidateUserService;

@WebServlet("/valid")
public class ValidateController extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		String path = request.getServletContext().getRealPath("/")+"resources\\db.properties";
		DBParent.path=path;
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		LoginModel model = new LoginModel();
		model.setUserName(username);
		model.setPassword(password);
		ValidateUserService validService = new ValidateUserServiceImp();
		boolean b = validService.isValidateUser(model);
		if(b) {
			RequestDispatcher r = request.getRequestDispatcher("userdashboard.jsp");
			r.forward(request, response);
		}
		else {
			out.println("invalid username and password");
		}
}
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
