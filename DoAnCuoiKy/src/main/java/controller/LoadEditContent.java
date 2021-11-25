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
@WebServlet("/LoadEditContent")
public class LoadEditContent extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		DAO dao = new DAO();
	
		// Sau khi edit ID xong thi Show ID ra
		Content showcontent = dao.getContent(id);
		request.setAttribute("id", showcontent.getId());
		request.setAttribute("title", showcontent.getTitle());
		request.setAttribute("brief", showcontent.getBrief());
		request.setAttribute("content", showcontent.getContent());
	}

}
