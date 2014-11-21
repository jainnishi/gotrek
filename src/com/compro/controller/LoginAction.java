package com.compro.controller;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.compro.entity.User;
import com.compro.form.LoginForm;
import com.compro.util.Database;
public class LoginAction extends Action{
	public ActionForward execute(ActionMapping mapping,ActionForm form,
			HttpServletRequest request,HttpServletResponse response) 
					throws Exception {
		String name="";
		String email="";
		String result="";
		User user = new User();
		Database db = new Database();
		String mail = request.getParameter("email");
		String password = request.getParameter("password");
		LoginForm existuser = (LoginForm)form;
		
		try{
		name=db.executeQuery(mail);
		result=db.verifypassword(mail,password);
		email=mail;
		}catch(SQLException sc){
			sc.printStackTrace();
		}
		if(name.equals("record not found")){
			existuser.setEmail("invalid");
			return mapping.findForward("failure");
		}else if(result.equals("false")){
			existuser.setPassword("incorrect");
			return mapping.findForward("failure");
		}
		else{
			HttpSession session = request.getSession();
			user.setEmail(email);
			user.setName(name);
			session.setAttribute("loginsession",user);
			return mapping.findForward("success");
		}
	}
}