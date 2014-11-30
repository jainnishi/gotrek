package com.compro.form;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionMapping;
import org.apache.struts.validator.ValidatorForm;

public class TrekForm extends ValidatorForm{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	String trekname;
	String startdate;
	String enddate;
	String meetup;
	String category;
	String description;

	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getTrekname() {
		return trekname;
	}
	public void setTrekname(String trekname) {
		this.trekname = trekname;
	}
	public String getStartdate() {
		return startdate;
	}
	public void setStartdate(String startdate) {
		this.startdate = startdate;
	}
	public String getEnddate() {
		return enddate;
	}
	public void setEnddate(String enddate) {
		this.enddate = enddate;
	}
	public String getMeetup() {
		return meetup;
	}
	public void setMeetup(String meetup) {
		this.meetup = meetup;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	
	@Override
	public void reset(ActionMapping mapping, HttpServletRequest request) {
		// reset properties
		trekname= null;
		startdate = null;
		enddate=null;
		category=null;
		meetup=null;
		description=null;
		
	}
	
}
