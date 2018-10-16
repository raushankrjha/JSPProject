package smartcity;

import java.sql.PreparedStatement;

public class RegistrationDoneBean
{
  private String uid,uname,pass,retype,usertype;

public void setUid(String uid) {
	this.uid = uid;
}

public void setUname(String uname) {
	this.uname = uname;
}

public void setPass(String pass) {
	this.pass = pass;
}

public void setRetype(String retype) {
	this.retype = retype;
}

public void setUsertype(String usertype) {
	this.usertype = usertype;
}
public int register()
{
	int flag=0;
String query="insert into login values(?,?,?,?)";
	  try
	  {
		PreparedStatement ps=DBInfo.getConn().prepareStatement(query);  
	    ps.setInt(1, Integer.parseInt(uid)); 
	    ps.setString(2, uname);
	    ps.setString(3, pass);
	    ps.setString(4, usertype);
	    flag=ps.executeUpdate();
	     DBInfo.close();//to close the connection
	     
	  }
	  catch(Exception e)
	  {
		  e.printStackTrace();
	  }
	  
	  return flag;
}





  
}
