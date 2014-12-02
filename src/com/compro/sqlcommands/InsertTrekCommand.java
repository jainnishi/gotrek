package com.compro.sqlcommands;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.compro.util.Connect;
public class InsertTrekCommand extends AbstractCommand{
	private static final String sql = "INSERT INTO trek_info(trek_name,start_date,end_date,meetup_point,category)"+
			"VALUES(?,?,?,?,?)";
	Connect connect = new Connect();
	public InsertTrekCommand(String trekname,String startdate,String enddate,String meetup,String category){
		parameter.add(trekname);
		parameter.add(startdate);
		parameter.add(enddate);
		parameter.add(meetup);
		parameter.add(category);
	}
	public String getSql(){
		return sql;
	}
	

	@Override
	public int execute() throws SQLException{
		Connection conn=null;
		PreparedStatement stmt = null;
		String query;
		try{
			conn = connect.getConnection();
			query=getSql();
			stmt = conn.prepareStatement(query);
			stmt.setString(1,parameter.get(0));
			stmt.setString(2,parameter.get(1));
			stmt.setString(3,parameter.get(2));
			stmt.setString(4,parameter.get(3));
			stmt.setString(5,parameter.get(4));
			// execute the preparedstatement
			stmt.execute();
			System.out.println("A new trek record has been inserted");
			return 1;
		}catch (SQLException e) {
			System.out.println("ERROR: Could not connect to the database");
			e.printStackTrace();
			return 0;
		}catch(Exception e){
			e.printStackTrace();
			return 0;
		}finally{
			conn.close();
		}
	}
}
