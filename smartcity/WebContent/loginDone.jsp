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
<jsp:useBean id="obj" class="smartcity.LoginBean">
<jsp:setProperty property="*" name="obj"/>
</jsp:useBean>


<body>
<table width="900" border="0" align="center">
  <tr>
    <th colspan="3" scope="col"><%@ include file="header.html" %>&nbsp;</th>
  </tr>
  <tr valign="top">
    <td height="25" colspan="3">&nbsp; </td>
  </tr>
  <tr valign="top">
    <td width="191" height="140">&nbsp;</td>
    <td width="453">
	<%
	   String usertype=obj.login();
	   String sessionvalue=obj.getUname();
	   session.setAttribute("id", sessionvalue);
	
	   if(usertype.equalsIgnoreCase("admin"))
	   {
		   response.sendRedirect("admin/admin.jsp");
	   }
	   if(usertype.equalsIgnoreCase("officer"))
	   {
		   response.sendRedirect("officer/officer.jsp");
	   }
	   if(usertype.equalsIgnoreCase("citizen"))
	   {
		   response.sendRedirect("citizen/citizen.jsp");
	   }
	   else
	   {
		   out.println("Login Failed,Retry!");
	   }
	%>
	     <%@ include file="login.html" %>
	
	
	
	&nbsp;</td>
    <td width="242">&nbsp;</td>
  </tr>
  <tr>
    <td colspan="3">&nbsp;</td>
  </tr>
</table>
</body>
</html>
