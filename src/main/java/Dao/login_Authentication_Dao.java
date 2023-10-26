package Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
 

public class login_Authentication_Dao {
	Connection con =null;
	public void connet() {
		try {
			Class.forName("com.mysql.jdbc.Driver");	
		     con=DriverManager.getConnection("jdbc:mysql://localhost:3306/authentication","root","1234");
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}
	

	
	public User getUserDataByUsername(String username) {
		String query = "SELECT first_name, last_name, mobile_num, gender, address FROM users WHERE mobile_num = ?";
        User user = new User(); // Create a User object to hold the data

	    try {
	        PreparedStatement pst = con.prepareStatement(query);
	        pst.setString(1, username);
	        ResultSet rs = pst.executeQuery();

	        if (rs.next()) {
	            user.setFirstName(rs.getString("first_name"));
	            user.setLastName(rs.getString("last_name"));
	            user.setMobile(rs.getString("mobile_num"));
	            user.setGender(rs.getString("gender"));
	            user.setAddress(rs.getString("address"));
	        }
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	    
	    return user;
	}
	public boolean check(String mobile,String password) {
		String checkQuery = "SELECT * FROM authentication.users WHERE mobile_num= ? AND password = ?";
		connet();
		try {
			
			PreparedStatement pst = con.prepareStatement(checkQuery);
			pst.setString(1, mobile);
			pst.setString(2, password);
			ResultSet rs = pst.executeQuery();
			if(rs.next()) {
				return true;
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
		
	}
	
	public void setData(String first_name,String last_name,String gender, String mobile,String address,String password) {
		String setdataQuery = "INSERT INTO authentication.users (first_name, last_name, gender, mobile_num, address,password) VALUES (?, ? ,?, ?, ? , ?)";
		
		connet();
		try {
			
			PreparedStatement st = con.prepareStatement(setdataQuery);
			st.setString(1, first_name);
			st.setString(2, last_name);
			st.setString(3, gender);
			st.setString(4, mobile);
			st.setString(5, address);
			st.setString(6, password);
			st.executeUpdate();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	class login_data_parameter{
		String username;
		String password;
	}
	
	
	
	

}


