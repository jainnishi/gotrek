package com.compro.form;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionMapping;
import org.apache.struts.validator.ValidatorForm;

public class NewUserForm extends ValidatorForm {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	String name;
	String password2;
	String email2;
	String repassword;
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword2() {
		return password2;
	}

	public void setPassword2(String password2) {
		this.password2 = password2;
	}

	public String getEmail2() {
		return email2;
	}

	public void setEmail2(String email2) {
		this.email2 = email2;
	}

	public String getRepassword() {
		return repassword;
	}

	public void setRepassword(String repassword) {
		this.repassword = repassword;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	
	@Override
	public void reset(ActionMapping mapping, HttpServletRequest request) {
		// reset properties
		email2 = null;
		password2 = null;
		repassword = null;
		name = null;
	}
	

}
