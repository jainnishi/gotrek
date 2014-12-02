package com.compro.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;





import org.codehaus.jettison.json.JSONArray;
import org.codehaus.jettison.json.JSONException;
import org.codehaus.jettison.json.JSONObject;

import com.compro.entity.Trek;
import com.compro.services.trekmanager.impl.TrekManagerImpl;



public class UpdateTrek extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException{
			
		    
		    TrekManagerImpl trk= TrekManagerImpl.getInstance();
		    List<Trek> treklist = trk.getLatestTreks();
		    JSONObject jObject = null;
		    try{
		    	jObject = new JSONObject();
                JSONArray jArray = new JSONArray();
                for (Trek trek : treklist) {
                    JSONObject trekJSON = new JSONObject();
                    trekJSON.put("name", trek.getTrekname());
                    trekJSON.put("sdate", trek.getStartdate());
                    trekJSON.put("edate", trek.getEnddate());
                    trekJSON.put("meetup", trek.getMeetup());
                    trekJSON.put("categ", trek.getCategory());
                    trekJSON.put("note", trek.getDescription());
                    trekJSON.put("imgurl", trek.getImgurl());
                    trekJSON.put("treksum", trek.getTreksummary());
                    jArray.put(trekJSON);
                  }
                jObject.put("TrekList", jArray);
		    }catch (JSONException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		    
	        
	        response.setContentType("application/json");  // Set content type of the response so that jQuery knows what it can expect.
		    response.setCharacterEncoding("UTF-8"); // You want world domination, huh?
		    PrintWriter out = response.getWriter();
		    out.print(jObject);
		    out.flush();
		
	}
	

}