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
<jsp:useBean id="obj" class="smartcity.GeneralRegistrationBean">
<jsp:setProperty name="obj" property="*"/>
</jsp:useBean>

<%
      int i=obj.register();

%>
<body>
<table width="900" border="0" align="center">
  <tr>
    <th colspan="3" scope="col"><%@ include file="header.html" %>&nbsp;</th>
  </tr>
  <tr valign="top">
    <td height="25" colspan="3">&nbsp; </td>
  </tr>
  <tr valign="top">
    <td width="191" height="140" rowspan="2">&nbsp;</td>
    <td width="453">
	<%
	if(i==1)
	out.println("registration done!!");
	else
	out.println("registration failed!!");
	%>
	
	
	&nbsp;</td>
    <td width="242" rowspan="2">&nbsp;</td>
  </tr>
  <tr valign="top">
    <td>
	<form action="RegistrationDone.jsp" method="post">
	<table width="400" border="1">
      <tr>
        <th colspan="2" scope="col">Fill login information </th>
        </tr>
      <tr>
        <td>UID</td>
        <td><input name="uid" type="text" id="uid" value="<%=obj.getUid()%>" readonly="readonly"/></td>
      </tr>
      <tr>
        <td>Enter new usename </td>
        <td><input name="uname" type="text" id="uname" /></td>
      </tr>
      <tr>
        <td>Enter password </td>
        <td><input name="pass" type="password" id="pass" /></td>
      </tr>
      <tr>
        <td>Retype password</td>
        <td><input name="retype" type="password" id="retype" /></td>
      </tr>
      <tr>
        <td>Usertype</td>
        <td><input name="usertype" type="text" id="usertype" value="citizen"  readonly="readonly"/></td>
      </tr>
      <tr>
        <td colspan="2"><div align="center">
          <input type="submit" name="Submit" value="Submit" />
          <input type="reset" name="Submit2" value="Reset" />
        </div></td>
        </tr>
    </table>
	</form>
	</td>
  </tr>
  <tr>
    <td colspan="3">&nbsp;</td>
  </tr>
</table>
</body>
</html>
