package com.compro.action;
import java.sql.SQLException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import com.compro.entity.User;
import com.compro.util.Database;
public class UserAction extends Action{
	public ActionForward execute(ActionMapping mapping,ActionForm form,
			HttpServletRequest request,HttpServletResponse response) 
					throws Exception {
		String result="";
		String name="";
		String email="";
		User user = new User();
		Database db = new Database();
		String mail = request.getParameter("email");
		
		try{
		name=db.executeQuery(mail);
		email=mail;
		}catch(SQLException sc){
			sc.printStackTrace();
		}
		if(email!=""&&name!=""){
		user.setEmail(email);
		user.setName(name);
		}
		if(result.equals("record not found")){
			return mapping.findForward("failure");
		}
		else{
			HttpSession session  = request.getSession();
			session.setAttribute("UserSession", user);
			return mapping.findForward("success");
		}
	}
}