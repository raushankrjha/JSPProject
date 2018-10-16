<%@page import="smartcity.DBInfo"%>
<%@page import="java.util.Date"%>
<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
-->
</style></head>
<%
    String uid=request.getParameter("uid");
	String cid=request.getParameter("cid");
	String area=request.getParameter("area");
	String subject=request.getParameter("subject");
	String complaint=request.getParameter("complaint");
	String date=request.getParameter("date");
	String query="insert into complaint values(?,?,?,?,?,?)";
	PreparedStatement ps=DBInfo.getConn().prepareStatement(query);
    ps.setString(1, uid);
    ps.setString(2, cid);
    ps.setString(3, area);
    ps.setString(4, subject);
    ps.setString(5, complaint);
    ps.setString(6, date);
    int i=ps.executeUpdate();
    DBInfo.close();
%>
<body>
<table width="900" border="0" align="center">
  <tr>
    <th colspan="3" scope="col"><img src="../images/Jaipur Municipal Corporation Banner Final 16.png"/>&nbsp;</th>
  </tr>
  <tr valign="top">
    <td height="25" colspan="3">&nbsp;</td>
  </tr>
  <tr valign="top">
    <td width="191" height="336"><%@ include file="sidemenu.html"%>&nbsp;</td>
    <td width="453">
	<%
	  if(i!=0)
		  out.println("Complaint done successfully ur complaint id is:"+cid);
	  else
		  out.println("complaint not done!!");
	%>
	
	
	&nbsp;</td>
    <td width="242">&nbsp;</td>
  </tr>
  <tr>
    <td colspan="3">&nbsp;</td>
  </tr>
</table>
</body>
</html>
