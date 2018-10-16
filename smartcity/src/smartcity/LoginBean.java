package smartcity;
import java.sql.*;
public class LoginBean 
{
	private String uname,pass;
	String utype="";

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
		System.out.println("uname is:"+uname);
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}
	

	 public String login()
	   {
	      int flag=0;
	      Connection con=DBInfo.getConn();
		  String query="select * from login where username=? and password=?";
		  try
		  {
	   PreparedStatement ps=con.prepareStatement(query);
	   ps.setString(1,uname);
	   ps.setString(2,pass);
	   
	   ResultSet res=ps.executeQuery();
		   while(res.next())
		   {
		     flag=1;
			 utype=res.getString("usertype");
			 break;
		   }
		  }
		  catch(Exception e)
		  {
		  e.printStackTrace();
		  }
		   return  utype;
	   }
	}
