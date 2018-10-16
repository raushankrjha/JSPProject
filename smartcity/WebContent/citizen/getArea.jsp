<%@page import="smartcity.DBInfo"%>
<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>

<body>
<select name="area">
<%
   PreparedStatement ps=DBInfo.getConn().prepareStatement("select name from area");
   ResultSet res=ps.executeQuery();
   while(res.next())
   {
	   String s1=res.getString(1);
   
   %>

  <option value="<%=s1%>"><%=s1 %></option>
  
  <%
 
   }
   DBInfo.close();
  %>
  
</select>

</body>
</html>
