package smartcity;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class GeneralRegistrationBean
{
	 private String uid,name,fname,gender,dob,age,email,mobile,landline,address,area,city,pincode;
public String getUid()
{
	return uid;
}
	public void setUid(String uid) {
		this.uid = uid;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}

	public void setGender(String gender) {
		this.gender = gender;
		System.out.println("hello"+gender);
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public void setAge(String age) {
		this.age = age;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public void setLandline(String landline) {
		this.landline = landline;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public void setArea(String area) {
		this.area = area;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public void setPincode(String pincode) {
		this.pincode = pincode;
	}
     
	public int register()
	{
		int flag=0;
		String query="insert into registration values(?,?,?,?,?,?,?,?,?,?,?,?,?)";
		
		try
		{
		Connection con=DBInfo.getConn();	
			PreparedStatement ps=con.prepareStatement(query);
			 ps.setInt(1, Integer.parseInt(uid)); 
			ps.setString(2, name);
			ps.setString(3, fname);
			ps.setString(4, gender);
			ps.setString(5, dob);
			ps.setString(6, age);
			ps.setString(7, email);
			ps.setString(8, mobile);
			ps.setString(9, landline);
			ps.setString(10, address);
			ps.setString(11, area);
			ps.setString(12, city);
			ps.setString(13, pincode);
			flag=ps.executeUpdate();
			con.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return flag;
	}
	 
	 
}
