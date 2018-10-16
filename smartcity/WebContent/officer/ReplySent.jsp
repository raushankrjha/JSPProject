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
  String uid=request.getParameter("textfield1");
  String cid=request.getParameter("textfield2");
  String officerUsername=request.getParameter("textfield3");
  String reply=request.getParameter("textarea");
  String date=request.getParameter("textfield4");
  String query="insert into complaintreview values(?,?,?,?,?)";
  PreparedStatement ps=DBInfo.getConn().prepareStatement(query);
  ps.setString(1, uid);
  ps.setString(2, cid);
  ps.setString(3, officerUsername);
  ps.setString(4, reply);
  ps.setString(5, date);
  int i=ps.executeUpdate();
  DBInfo.close();
   
 %>

<body>
<table width="900" border="0" align="center">
  <tr>
    <th colspan="3" scope="col"><%@ include file="header.html"%></th>
  </tr>
  <tr valign="top">
    <td height="25" colspan="3">&nbsp;</td>
  </tr>
  <tr valign="top">
    <td width="191" height="140"><%@ include file="sidemenu.html"%>&nbsp;</td>
    <td width="453"><div align="center">Your Reply Sent to the citizen!! </div></td>
    <td width="242">&nbsp;</td>
  </tr>
  <tr>
    <td colspan="3">&nbsp;</td>
  </tr>
</table>
</body>
</html>
