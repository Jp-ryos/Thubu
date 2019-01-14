package app.thubu.servlet.filter;

import java.io.*;

import javax.servlet.*;
import javax.servlet.annotation.*;

@WebFilter("/*")
public class Filter implements javax.servlet.Filter {
	
	public void init(FilterConfig conf) throws ServletException {  }
	
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
		throws ServletException, IOException{
		
		request.setCharacterEncoding("UTF-8");
		chain.doFilter(request, response);
	}
	
	public void destory() {  }
}
