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

<body>
<table width="900" border="0" align="center">
  <tr>
    <th height="145" colspan="3" scope="col"><%@ include file="header.html" %>&nbsp;</th>
  </tr>
  <tr valign="top">
    <td height="25" colspan="3">Admin Section  </td>
  </tr>
  <tr valign="top">
    <td width="244" height="140"><%@ include file="sidemenu.html"%>&nbsp;</td>
    <td width="400">
	<form action="AreaAdded.jsp" method="post">
	<table width="400" border="0">
      <tr>
        <th colspan="2" scope="col">Add New Area Section </th>
        </tr>
      <tr>
        <td>Name of Area </td>
        <td><input name="area" type="text" id="area" /></td>
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
    <td width="242">&nbsp;</td>
  </tr>
  <tr>
    <td colspan="3">&nbsp;</td>
  </tr>
</table>
</body>
</html>
