package com.MyBlog.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.MyBlog.Daw.UserDaw;
import com.MyBlog.entities.User;
import com.MyBlog.entities.message;
import com.MyBlog.helper.ConnectionProvider;



public class RegisterServ extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	public void serviceRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//fetch all data from user
		PrintWriter out = response.getWriter();
		String checkString = request.getParameter("user_check");
		if (checkString==null) {
			out.println("plz check term and condations");
		}else {
			
			String nameString = request.getParameter("user_name");
			String emailString = request.getParameter("user_email");
			String passString = request.getParameter("user_password");
			String genderString = request.getParameter("user_gender");
			String aboutString = request.getParameter("user_AboutMe");
			
			// create daw object
			
			User user = new User(nameString, emailString, passString, genderString, aboutString);
			
			UserDaw ud = new UserDaw(ConnectionProvider.getConnection());
			if (ud.saveUser(user)) {
				HttpSession session = request.getSession();
				message m1 = new message("Registration succesfull...","success", "alert-success");
				session.setAttribute("msg", m1);
				response.sendRedirect("register.jsp");
			}else {
				out.println("error");
			}
			
			
			
			
		}
		
	

		
		
		
		
		
		

	}
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		serviceRequest(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		serviceRequest(request, response);
	
	}

}
