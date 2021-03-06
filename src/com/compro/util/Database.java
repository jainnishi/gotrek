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
		try{
			Class.forName("com.mysql.jdbc.Driver");
		}catch(Exception ce){
			ce.printStackTrace();
		}
		Connection conn = null;
		PreparedStatement stmt = null;
		Properties connectionProps = new Properties();
		connectionProps.put("user", this.userName);
		connectionProps.put("password", this.password);

		conn = DriverManager.getConnection("jdbc:mysql://"
				+ this.serverName + "/" + this.dbName,
				connectionProps);

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
	//insert a new record in user_info from user database

	public void insertRecord(String user_name,String user_email,String user_password)throws SQLException{
		Connection conn = null;
		PreparedStatement stmt = null;

		try{
			Class.forName("com.mysql.jdbc.Driver");


			Properties connectionProps = new Properties();
			connectionProps.put("user", this.userName);
			connectionProps.put("password", this.password);

			conn = DriverManager.getConnection("jdbc:mysql://"
					+ this.serverName + "/" + this.dbName,
					connectionProps);
			String sql ="INSERT INTO USER_INFO(first,Email,Password)"+"VALUES(?,?,MD5(?))";
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

//	public static void main(String[] args) throws SQLException{
//		UserDatabase usd = new UserDatabase();
//		//Connection conn = null;
//
//	/*	try {
//			conn = usd.getConnection();
//			System.out.println("Connected to database");
//		} catch (SQLException e) {
//			System.out.println("ERROR: Could not connect to the database");
//			e.printStackTrace();
//			return;
//		}
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
//		try{
//			usd.insertRecord("ANU","ANU.GOELl@GMAIL.COM","ANU");
//		}catch(SQLException s){
//			s.printStackTrace();
//		}
//		
//		
//
//	}

}
