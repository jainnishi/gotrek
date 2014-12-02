package com.compro.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;

//import com.mysql.jdbc.PreparedStatement;

public class Database {
	/** The name of the MySQL account to use (or empty for anonymous) */
	private final String userName = "root";

	/** The password for the MySQL account (or empty for anonymous) */
	private final String password = "workspot";

	/** The name of the computer running MySQL */
	private final String serverName = "localhost";

	// JDBC driver name and database URL
	static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";

	/** The name of the database we are testing with (this default is installed with MySQL) */
	private final String dbName = "user";


	/**
	 * Get a new database connection
	 * 
	 * @return
	 * @throws SQLException
	 */
	public Connection getConnection() throws SQLException{
		try{
			Class.forName("com.mysql.jdbc.Driver");
		}catch(Exception ce){
			ce.printStackTrace();
		}
		Connection conn = null;
		Properties connectionProps = new Properties();
		connectionProps.put("user", this.userName);
		connectionProps.put("password", this.password);

		conn = DriverManager.getConnection("jdbc:mysql://"
				+ this.serverName + "/" + this.dbName,
				connectionProps);
		return conn;
	}

	public String executeQuery(String email) throws SQLException{
		Connection conn=getConnection();
		PreparedStatement stmt = null;
		String name="";
		try{
			String sql ="SELECT first FROM USER_INFO WHERE Email=?";
			stmt = conn.prepareStatement(sql);
			stmt.setString(1,email);
			ResultSet rs = stmt.executeQuery();
			while(rs.next()){
				name = rs.getString("first");
			}
		}catch (SQLException e) {
			System.out.println("ERROR: Could not connect to the database");
			e.printStackTrace();
			return "Could not connect to the database";
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			if (stmt != null) { 
				stmt.close(); 
			}
			conn.close();
		}
		if( name == ""){
			return "record not found";
		}else{
			return name;
		}

	}
	
	public String getUserid(String username) throws SQLException{
		Connection conn=getConnection();
		PreparedStatement stmt = null;
		String uid="";
		try{
			String sql ="SELECT id FROM USER_INFO WHERE first=?";
			stmt = conn.prepareStatement(sql);
			stmt.setString(1,username);
			ResultSet rs = stmt.executeQuery();
			while(rs.next()){
				uid = rs.getString("id");
			}
		}catch (SQLException e) {
			System.out.println("ERROR: Could not connect to the database");
			e.printStackTrace();
			return "Could not connect to the database";
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			if (stmt != null) { 
				stmt.close(); 
			}
			conn.close();
		}
		if( uid == ""){
			return "record not found";
		}else{
			return uid;
		}

	}
	
	public void getTrek(String uid,String trkid) throws SQLException{
		Connection conn=getConnection();
		PreparedStatement stmt = null;
		try{
			String sql ="INSERT INTO trekuser_xref(trek_id,user_id)"+"VALUES(?,?)";
			stmt = conn.prepareStatement(sql);
			stmt.setString(1,trkid);
			stmt.setString(2,uid);
			stmt.execute();
			System.out.println("A new record has been inserted");
		}catch (SQLException e) {
			System.out.println("ERROR: Could not connect to the database");
			e.printStackTrace();
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			conn.close();
		}
	}
		
	//insert a new record in user_info from user database

	public void insertRecord(String user_name,String user_email,String user_password)throws SQLException{
		Connection conn = getConnection();
		PreparedStatement stmt = null;

		try{
			String sql ="INSERT INTO USER_INFO(first,Email,Password)"+"VALUES(?,?,SHA1(?))";
			stmt = conn.prepareStatement(sql);
			stmt.setString(1,user_name);
			stmt.setString(2,user_email);
			stmt.setString(3,user_password);

			// execute the preparedstatement
			stmt.execute();
			System.out.println("A new record has been inserted");
		}catch (SQLException e) {
			System.out.println("ERROR: Could not connect to the database");
			e.printStackTrace();
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			conn.close();
		}
	}
	
	
	public void insertrekRecord(String trek_name,String start_date,String end_date,String meetup_point,String category)throws SQLException{
		Connection conn = getConnection();
		
		PreparedStatement stmt = null;
			try{
			String sql ="INSERT INTO trek_info(trek_name,start_date,end_date,meetup_point,category)"+"VALUES(?,?,?,?,?)";
			stmt = conn.prepareStatement(sql);
			stmt.setString(1,trek_name);
			stmt.setString(2,start_date);
			stmt.setString(3,end_date);
			stmt.setString(4,meetup_point);
			stmt.setString(5,category);
			

			// execute the preparedstatement
			stmt.execute();
			System.out.println("A new trek record has been inserted");
		}catch (SQLException e) {
			System.out.println("ERROR: Could not connect to the database");
			e.printStackTrace();
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			conn.close();
		}
	}
	
	//match the password entered is correct or incorrect
	public String verifypassword(String email,String password)throws SQLException{
		
		Connection conn = getConnection();
		PreparedStatement stmt = null;
		PreparedStatement stmt2 = null;
		String vpass="";
		String lpass="";
		try{
			String sql ="SELECT * FROM user_info WHERE Email=? ";
			String resql = "SELECT SHA1(?) AS decodepass";
			stmt = conn.prepareStatement(sql);
			stmt2 = conn.prepareStatement(resql);
			stmt2.setString(1,password);
			stmt.setString(1,email);
			
			
			// execute the preparedstatement
			ResultSet rs = stmt.executeQuery();
			ResultSet rsv = stmt2.executeQuery();
			while(rs.next()){
				vpass = rs.getString("Password");
			}
			while(rsv.next()){
				lpass = rsv.getString("decodepass");
			}
			if(vpass.equals(lpass)){
				return "true";
			}else{
				return "false";
			}
			
		}catch (SQLException e) {
			System.out.println("ERROR: Could not connect to the database");
			e.printStackTrace();
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			conn.close();
		}
		return "false";
	}
			


	//Drop a Table

	public void DropTable(String tableName,Connection conn)throws SQLException{
		Statement stmt = null;
		stmt=conn.createStatement();
		try {
			String createString ="DROP TABLE"+tableName;
			stmt.executeUpdate(createString);
			System.out.println(tableName+"has been deleted from the database");


		} catch (SQLException e) {
			System.out.println("ERROR: Could not Delete the table");
			e.printStackTrace();
			return;
		}


	}

	public static void main(String[] args) throws SQLException{
	//	Database usd = new Database();
	//	String id=usd.getUserid("Nishi Jain");
	//	usd.getTrek(id,"1");

		//Connection conn = null;
	//try {
		//	conn = usd.getConnection();
			//System.out.println("Connected to database");
		//} catch (SQLException e) {
		//	System.out.println("ERROR: Could not connect to the database");
		//	e.printStackTrace();
		//	return;
		//}
//
//			try{
//		stmt = conn.createStatement();
//
//	     String sql = "CREATE TABLE USER_INFO" +
//	                   "(id INTEGER not NULL, " +
//	                   " first VARCHAR(255), " + 
//	                   " Email VARCHAR(255), " + 
//	                   " Password VARCHAR(25), " + 
//	                   " ROLE VARCHAR(25) DEFAULT 'user', " + 
//	                   " PRIMARY KEY ( id ))"; 
//
//	      stmt.executeUpdate(sql);
//	      System.out.println("Created table in given database...");
//	   }catch(SQLException se){
//	      //Handle errors for JDBC
//	      se.printStackTrace();
//	   }catch(Exception e){
//	      //Handle errors for Class.forName
//	      e.printStackTrace();
//	   }finally{
//	      //finally block used to close resources
//	      try{
//	         if(stmt!=null)
//	            conn.close();
//	      }catch(SQLException se){
//	      }// do nothing
//	      try{
//	         if(conn!=null)
//	            conn.close();
//	      }catch(SQLException se){
//	         se.printStackTrace();
//	      }//end finally try
//	   }//end try */
//		try{
//			String result=usd.executeQuery("workspot1992@gmail.com");
//			System.out.println(result);
//		}catch(SQLException s){
//			s.printStackTrace();
//		}
//		
//	try{
//			usd.insertrekRecord("Dudhsagar waterfall","2015-01-17","2015-01-18","Island meetup","nature lover");
//		}catch(SQLException s){
//			s.printStackTrace();
//		}
//		
//		
//
//	
//		try{
//			String result=usd.verifypassword("Rajmanchi"."","ANU");
//			System.out.println(result);
//		}catch(SQLException s){
//			s.printStackTrace();
//		}
//		}
	

}}
