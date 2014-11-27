package com.compro.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

public class Connect {
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

}
