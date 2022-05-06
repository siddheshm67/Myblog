package com.MyBlog.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.MyBlog.Daw.UserDaw;
import com.MyBlog.entities.User;
import com.MyBlog.entities.message;
import com.MyBlog.helper.ConnectionProvider;

public class LoginServ extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public void serviceRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//fetch user data
		PrintWriter out = response.getWriter();
		
			
			String emailString = request.getParameter("email");
			String passString = request.getParameter("password");
			
			UserDaw daw = new UserDaw(ConnectionProvider.getConnection());
			
			User u =  daw.getUserByEMailAndPassword(emailString, passString);
			
			if (u==null) {
				//login error
//				out.println("invalid details try again");
				message msgMessage = new message("invaild details try with another", "error", "alert-danger");
				HttpSession session = request.getSession();
				session.setAttribute("msg", msgMessage);
				response.sendRedirect("Login.jsp");
			}else {
				//login success
				
				HttpSession session = request.getSession();
				session.setAttribute("currentUser", u);
				response.sendRedirect("profile.jsp");
				
			}
			
			

	}
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		serviceRequest(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		serviceRequest(request, response);
	
	}

}
