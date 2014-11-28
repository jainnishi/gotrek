package com.compro.Filter;
import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.compro.entity.User;

public class SessionFilter implements Filter {
	
	public void destroy() {
    }
 
    public void doFilter(ServletRequest req, ServletResponse res,
            FilterChain chain) throws IOException, ServletException {
    	 HttpServletRequest request = (HttpServletRequest) req;
         HttpServletResponse response = (HttpServletResponse) res;
         HttpSession session = request.getSession();
         User u = (User) session.getAttribute("loginsession");

 
       //  HttpSession session = request.getSession(false);
         if (u==null) {
        	 RequestDispatcher rd = request.getRequestDispatcher("/pages/welcome.jsp");
 			rd.forward(request,response);
         }
         chain.doFilter(req,res);

}
    public void init(FilterConfig config) throws ServletException {
    
    }
}