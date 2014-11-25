package com.compro.controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.compro.TrekManager.TrekManagerImpl;
import com.compro.entity.Trek;
import com.compro.form.TrekForm;

public class TrekAction extends Action {
	public ActionForward execute(ActionMapping mapping,ActionForm form,
			HttpServletRequest request,HttpServletResponse response) 
					throws Exception {
		
		//variables declared to set session entity user
				String trekname;
				String startdate;
				String enddate;
				String meetup;
				String category;
				
				//newtrek is the Trek object to get access to the trek fields
				TrekForm newtrek = (TrekForm)form;
				
				//trek object 
				Trek trek= new Trek();
				trekname=newtrek.getTrekname();
				startdate=newtrek.getStartdate();
				enddate=newtrek.getEnddate();
				meetup = newtrek.getMeetup();
				category = newtrek.getCategory();
				
				trek.setTrekname(trekname);
				trek.setStartdate(startdate);
				trek.setEnddate(enddate);
				trek.setMeetup(meetup);
				trek.setCategory(category);
				
				TrekManagerImpl trk= TrekManagerImpl.getInstance();
					//new record inserted in the database
					trk.createTrek(trek);
				
				
				return mapping.findForward("success");

	}
}
