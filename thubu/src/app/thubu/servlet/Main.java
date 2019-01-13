package app.thubu.servlet;

import java.io.*;
import java.util.*;

import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;
import javax.servlet.http.HttpServlet;

import app.thubu.model.*;

@WebServlet("/Main")
public class Main extends HttpServlet {
	private static final long serialVersionUID = 1l;
	
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response)
	throws ServletException, IOException{
		
		ServletContext application = this.getServletContext();
		List<Mutter> mutterList = 
				(List<Mutter>) application.getAttribute("mutterList");
		
		if(mutterList == null) {
			mutterList = new ArrayList<Mutter>();
			application.setAttribute("mutterList", mutterList);
		}
		
		HttpSession session = request.getSession();
		User loginUsr = (User) session.getAttribute("loginUsr");
		
		if(loginUsr == null) response.sendRedirect("/Thubu/");
		else {
			RequestDispatcher dispatcher = 
					request.getRequestDispatcher("/WEB-INF/jsp/main.jsp");
			dispatcher.forward(request, response);
		}
	}
	
	protected void doPost(HttpServletRequest request, 
			HttpServletResponse response)
	throws ServletException, IOException
	{
		String text;
		
		request.setCharacterEncoding("UTF-8");
		text = request.getParameter("text");

		if(text != null && text.length() != 0) {
			ServletContext application = this.getServletContext();
			List<Mutter> mutterList = 
					(List<Mutter>) application.getAttribute("mutterList");
			HttpSession session = request.getSession();
			User loginUsr = (User) session.getAttribute("loginUsr");
			
			
			Mutter mutter = new Mutter(loginUsr.getName(), text);
			PostMutterLogic postMutterLogic = new PostMutterLogic();
			postMutterLogic.execute(mutter, mutterList);
 		} else {
 			request.setAttribute("errorMsg", "error:String is empty or null");
 		}
		
		RequestDispatcher dispatcher = 
				request.getRequestDispatcher("/WEB-INF/jsp/main.jsp");
		dispatcher.forward(request, response);
	}
}
