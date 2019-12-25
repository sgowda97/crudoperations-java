package com.jspcrud.dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import com.jspcrud.bean.User;
import com.jspcrud.dbconnect.ConnectionProvider;

public class UserDao {

	public static int register(User u) {
		int status = 0;

		try {
			Connection con = ConnectionProvider.getCon();

			Statement stmt = con.createStatement();

			status = stmt.executeUpdate("insert into crudtab(name, email, gender, country) values('"+u.getName()+"', '"+u.getEmail()+"', '"+u.getGender()+"', '"+u.getCountry()+"')");
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return status;

	}

	public static int update(User u) {
		int status = 0;

		try {
			Connection con = ConnectionProvider.getCon();

			Statement stmt = con.createStatement();

			status = stmt.executeUpdate("update crudtab set name='"+u.getName()+"', email='"+u.getEmail()+"', gender='"+u.getGender()+"', country='"+u.getCountry()+"' where id = '"+u.getId()+"'");
		}catch(SQLException e) {
			e.printStackTrace();
		}

		return status;
	}

	public static int delete(User u) {
		int status = 0;

		try {
			Connection con = ConnectionProvider.getCon();

			Statement stmt = con.createStatement();

			status = stmt.executeUpdate("delete from crudtab where id = '"+u.getId()+"'");
		}catch(SQLException e) {
			e.printStackTrace();
		}

		return status;
	}

	public static List<User> getAllData(){
		List<User> list = new ArrayList<User>();

		try {
			Connection con = ConnectionProvider.getCon();

			Statement stmt = con.createStatement();

			ResultSet rs = stmt.executeQuery("select * from crudtab");

			while(rs.next()) {
				User u = new User();

				u.setId(rs.getInt("id"));  
				u.setName(rs.getString("name"));  
				u.setEmail(rs.getString("email"));  
				u.setGender(rs.getString("gender"));  
				u.setCountry(rs.getString("country"));  
				list.add(u);  
			}
		}catch(Exception e) {
			System.out.println(e);
		}

		return list;
	}

	public static User getDataById(int id) {
		User u = null;

		try {
			Connection con = ConnectionProvider.getCon();

			Statement stmt = con.createStatement();

			ResultSet rs = stmt.executeQuery("select * from crudtab where id ='"+id+"'");

			while(rs.next()) {
				u = new User();

				u.setId(rs.getInt("id"));  
				u.setName(rs.getString("name"));  
				u.setEmail(rs.getString("email"));  
				u.setGender(rs.getString("gender"));  
				u.setCountry(rs.getString("country"));  
			}
		}catch(Exception e) {
			System.out.println(e);
		}

		return u;
	}
}
