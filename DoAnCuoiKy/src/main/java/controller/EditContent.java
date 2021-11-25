package controller;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DAO;


/**
 * Servlet implementation class EditContent
 */
@WebServlet("/EditContent")
public class EditContent extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		String title = request.getParameter("title");
		String brief = request.getParameter("brief");
		String content = request.getParameter("content");
		String updatetime = java.time.LocalDateTime.now().toString();
		DAO dao = new DAO();
		dao.editContent(id, title, brief, content, updatetime);
		request.setAttribute("message", "Update Successfully");
		request.getRequestDispatcher("editcontent.tiles").forward(request, response);
	}

}
