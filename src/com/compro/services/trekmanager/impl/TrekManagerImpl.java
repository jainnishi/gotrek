package com.compro.services.trekmanager.impl;

import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;

import com.compro.entity.Trek;
import com.compro.services.trekmanager.TrekHandler;
import com.compro.sqlcommands.GetUpdateTrekCommand;
import com.compro.sqlcommands.InsertTrekCommand;

public class TrekManagerImpl implements TrekHandler {
	 private static TrekManagerImpl instance = null;
	   protected TrekManagerImpl() {
	      // Exists only to defeat instantiation.
	   }
	   public static TrekManagerImpl getInstance() {
	      if(instance == null) {
	         instance = new TrekManagerImpl();
	      }
	      return instance;
	   }
	@SuppressWarnings("finally")
	
	public int createTrek(Trek trek){
		InsertTrekCommand inst = new InsertTrekCommand(trek.getTrekname(),trek.getStartdate(),trek.getEnddate(),trek.getMeetup(),trek.getCategory());
		try{
			int result = inst.execute();
			if(result==SUCCESS){
				return 1;
			}
		}catch (SQLException e) {
			System.out.println("ERROR: Could not connect to the database");
			e.printStackTrace();
			return 0;
		}catch(Exception e){
			e.printStackTrace();
			return 0;
		}finally{
			return 0;
		}
	}

	
	public List<Trek> getLatestTreks(){
		GetUpdateTrekCommand upd = new GetUpdateTrekCommand();
		List<Trek> trekobject = new LinkedList<Trek>();
		try{
			trekobject = upd.execute();
			return trekobject;
		}catch(SQLException e){
			System.out.println("ERROR: Could not connect to the database");
			e.printStackTrace();
			return trekobject;
		}catch(Exception e){
			e.printStackTrace();
			return trekobject;
		}
	}
}
		
		
	

