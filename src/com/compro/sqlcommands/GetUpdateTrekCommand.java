package com.compro.sqlcommands;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedList;
import java.util.List;

import com.compro.entity.Trek;
import com.compro.util.Connect;

public class GetUpdateTrekCommand{
	private static final String sql = "SELECT * FROM trek_info WHERE trek_id > (SELECT MAX(trek_id) - 4 FROM trek_info)";
	Connect connect = new Connect();
	public String getSql(){
		return sql;
	}
	
	
	public List<Trek> execute() throws SQLException{
		LinkedList<Trek> lm = new LinkedList<Trek>();
		Connection conn=null;
		Statement stmt = null;
		String query;
		String trekname;
		String sdate;
		String edate;
		String mpoint;
		String categ;
		String note;
		String img;
		String smry;
		try{
			conn = connect.getConnection();
			query=getSql();
			stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(query);
			while(rs.next()){
			trekname=rs.getString("trek_name");
			sdate=rs.getString("start_date");
			edate=rs.getString("end_date");
			mpoint=rs.getString("meetup_point");
			categ=rs.getString("category");
			note=rs.getString("Notes");
			img=rs.getString("img_url");
			smry=rs.getString("treksummary");
			lm.add(new Trek(trekname,sdate,edate,mpoint,categ,note,img,smry));
			}
		
			System.out.println("New trek record has been updated");
			return lm;
		}catch (SQLException e) {
			System.out.println("ERROR: Could not connect to the database");
			e.printStackTrace();
			return null;
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}finally{
			conn.close();
		}
	}
	

}
