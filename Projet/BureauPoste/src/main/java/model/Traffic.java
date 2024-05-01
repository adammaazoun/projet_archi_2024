package model;

import java.sql.*;
import java.util.ArrayList;

import controller.Connexion;

public class Traffic {
	public int id;
	public String depart;
	public String arrivee;
	public float prix;
	public int nb;
	public static Connection con = Connexion.connect();
	public static boolean verifEmpty() {
		try {
			Statement req=con.createStatement();
			ResultSet rs=req.executeQuery("select* from traffic");
			if (rs.next()) {
				return true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
		
		
	}
	public static ArrayList<String[]> display() {
	    try {
	        Statement req = con.createStatement();
	        ResultSet rs = req.executeQuery("SELECT * FROM traffic");
	        ArrayList<String[]> t = new ArrayList<>();
	        while (rs.next()) {
	            int i = rs.getInt(1);
	            String dep = rs.getString(2);
	            String arr = rs.getString(3);
	            float prix = rs.getFloat(4);
	            int n = rs.getInt(5);
	            String[] k = {String.valueOf(i), dep, arr, String.valueOf(prix), String.valueOf(n)};
	            t.add(k);
	        }
	   
	        if (t.isEmpty()) {
	            return null; 
	        }
	        
	        return t;
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	    return null;
	}
	
	public static String[] displayById(String id) {
		try {
	        Statement req = con.createStatement();
	        ResultSet rs = req.executeQuery("SELECT * FROM traffic where id="+id);
	        
	        if (rs.next()) {
	            int i = rs.getInt(1);
	            String dep = rs.getString(2);
	            String arr = rs.getString(3);
	            float prix = rs.getFloat(4);
	            int n = rs.getInt(5);
	            String[] k = {String.valueOf(i), dep, arr, String.valueOf(prix), String.valueOf(n)};
	            return k;
	        }
	   
	        else {
	        	return null;
	        }
	        
	        
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
		return null;
	   
	}
	
	public static void update () {
		
	}

}
