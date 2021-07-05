package com.admin.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.admin.DBUtil.AdminDBUtil;

@WebServlet("/AdminLogServlet")
public class AdminLogServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String email = request.getParameter("adminemail");
		String password = request.getParameter("adminpassword");
		boolean isTrue;
		
		isTrue = AdminDBUtil.adminvalidation(email, password);
		
		
		if(isTrue == true) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("success.jsp");
			dispatcher.forward(request, response);
		}
		else {
			
			//RequestDispatcher dispatcher = request.getRequestDispatcher("unsuccess.jsp");
			//dispatcher.forward(request, response);
			
			out.println("<script type = 'text/javascript'>");
			out.println("alert('email address or password is incorrect')");
			out.println("location = adminlogin.jsp");
			out.println("</script>");
		
		}
		
		
		
		
	}

}
