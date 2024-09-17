package controller;
import java.sql.*;
public class Connexion {
	public static Connection connect() {
		Connection con = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://100.116.103.64:1524/sncft", "omar", "amrou2009@");
			System.out.println("connected");
		}
		catch (SQLException e) {
			System.out.println(e);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return con;
	}


	
}