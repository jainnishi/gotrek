package com.compro.controller;
import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.compro.entity.User;
import com.compro.util.Database;
public class JointrekAction extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String trkid=request.getParameter("trek_id");
		HttpSession session = request.getSession();
		User u = (User) session.getAttribute("loginsession");
		if(u!=null){
		String username = u.getName();
		Database db = new Database();
		try{
			String userid=db.getUserid(username);
			db.getTrek(userid,trkid);
		}catch(SQLException s){
			s.printStackTrace();
		}
		RequestDispatcher rd = request.getRequestDispatcher("/pages/newtrek.jsp");
			rd.forward(request,response);
		}else{
			
		}
		
	}
}
