package app.thubu.servlet;

import java.io.*;

import javax.servlet.http.HttpServlet;
import javax.servlet.annotation.*;
import javax.servlet.http.*;
import javax.servlet.*;

import app.thubu.model.*;

@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, 
			HttpServletResponse response) 
	throws ServletException, IOException {
		
		String name, pass;
		
//		request.setCharacterEncoding("UTF-8");
		name = request.getParameter("name");
		pass = request.getParameter("pass");
		
		User usr = new User(name, pass);
		
		LoginLogic logic = new LoginLogic();
		boolean isLogin = logic.execute(usr);
		
		if(isLogin) {
			HttpSession session = request.getSession();
			session.setAttribute("loginUsr", usr);
		}
		
		RequestDispatcher dispatcher =
				request.getRequestDispatcher(
						"WEB-INF/jsp/loginresult.jsp");
		dispatcher.forward(request, response);
	}
}