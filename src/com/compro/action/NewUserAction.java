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
import com.compro.form.NewUserForm;
import com.compro.util.Database;
public class NewUserAction extends Action{
	public ActionForward execute(ActionMapping mapping,ActionForm form,
			HttpServletRequest request,HttpServletResponse response) 
					throws Exception {
		//variables declared to set session entity user
		String username;
		String useremail;
		String userpassword;
		
		//newuser is the object created to acces the methods of NewUserForm class
		NewUserForm newuser = (NewUserForm)form;
		
		//user object for creating a session
		User user= new User();
		username=newuser.getName();
		useremail=newuser.getEmail2();
		userpassword=newuser.getPassword2();
		Database db = new Database();
		try{
			//new record inserted in the database
			db.insertRecord(username,useremail,userpassword);
		}catch(SQLException sc){
			sc.printStackTrace();
		}
		
		//creating a new session for the new user who logged in
		user.setEmail(useremail);
		user.setName(username);
		HttpSession session  = request.getSession();
		session.setAttribute("NewSession", user);
		return mapping.findForward("success");
	}
}