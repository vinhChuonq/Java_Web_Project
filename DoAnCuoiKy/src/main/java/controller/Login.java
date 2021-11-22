package controller;

import java.io.IOException;

import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import model.DAO;
import model.Member;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.getRequestDispatcher("/views/login.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {

			Member user = new Member();
			BeanUtils.populate(user, request.getParameterMap());
			DAO dao = new DAO();
			List<Member> list = dao.getAllMember();
			for (Member account : list) {
				String email = account.getEmail();
				String pass = account.getPassword();
				if (user.getEmail().equals(email) && user.getPassword().equals(pass)) {
					request.getRequestDispatcher("/index.jsp").forward(request, response);
				} else {
					request.setAttribute("message", "invalid username or password");
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		request.getRequestDispatcher("/views/login.jsp").forward(request, response);
	}

}
