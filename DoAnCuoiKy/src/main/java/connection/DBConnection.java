package connection;

import java.sql.DriverManager;

import java.sql.Connection;

public class DBConnection {
	public Connection getConnection() throws Exception {
		Class.forName("com.mysql.cj.jdbc.Driver");
		return DriverManager
				.getConnection("jdbc:mysql://"+serverName+ ":/" + dbName + "?user=" + userID + "&password=" + password);

	}
	private final String serverName = "localhost";
	private final String dbName = "doanweb";
	private final String userID = "root";
	private final String password = "giabao2501";
	
	public static void main(String[] args) {
		try {
			System.out.println(new DBConnection().getConnection());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
