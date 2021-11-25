package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DAO;
@WebServlet("/Register")
public class Register extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String userName = request.getParameter("username");
		String password = request.getParameter("password");
		String repassword = request.getParameter("repassword");
		String email = request.getParameter("email");

		if (userName != null && password !=null && repassword!=null && email!=null ) {
			if (password.equals(repassword)) {
				DAO dao = new DAO();
				dao.insertMember(userName, password, email);
				request.setAttribute("message", "Register Successfully");
			} else {
				
				request.setAttribute("message", "Register Fail");
			}
		}
		request.getRequestDispatcher("/views/register.jsp").forward(request, response);
	}
}