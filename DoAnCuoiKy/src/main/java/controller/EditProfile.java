package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DAO;

import dao.Content;

/**
 * Servlet implementation class EditContent
 */
@WebServlet("/EditProfile")
public class EditProfile extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int id= Integer.parseInt(request.getParameter("id")) ;
		String firstname = request.getParameter("firstname");
		String lastname = request.getParameter("lastname");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String description = request.getParameter("description");
		String updateTime = java.time.LocalDateTime.now().toString();
		DAO dao = new DAO();
		dao.editMember(id, firstname, lastname, email, phone, description,updateTime);
		request.setAttribute("message", "Update Successfully");
		request.getRequestDispatcher("editprofile.tiles").forward(request, response);
	}

}
