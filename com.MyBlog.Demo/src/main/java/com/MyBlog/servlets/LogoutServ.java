package com.MyBlog.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.MyBlog.entities.message;

public class LogoutServ extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	public void serviceRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		session.removeAttribute("currentUser");
		message m1 = new message("Logout Successful...","success", "alert-success");
		session.setAttribute("msg", m1);
		response.sendRedirect("Login.jsp");
		

	}
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		serviceRequest(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	serviceRequest(request, response);
	}

}
