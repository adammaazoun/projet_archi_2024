package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import controller.Connexion;

public class User {
	public static Connection con = Connexion.connect();
	public static boolean verifUser(String mail, String pass) {
		
		
		try {
			PreparedStatement prst = con.prepareStatement("SELECT * from utilisateur WHERE login=? and mdp=?");
			prst.setString(1, mail);
			prst.setString(2, pass);
			ResultSet res = prst.executeQuery();
			if (res.next()) {
				return true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
	
public static boolean addUser(String CIN, String nom, String prenom, String adr_s, String mail, String pass) {
		
		
		try {
			PreparedStatement prst = con.prepareStatement("insert into utilisateur values (?,?,?,?,?,?)");
			prst.setInt(1, Integer.parseInt(CIN));
			prst.setString(2, nom);
			prst.setString(3, prenom);
			prst.setString(4, adr_s);
			prst.setString(5, mail);
			prst.setString(6, pass);
			prst.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
}
