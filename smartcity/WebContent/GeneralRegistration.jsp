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
<form action="GeneralRegistrationDone.jsp" method="post">
<table width="720" border="0">
  <tr>
    <th height="92" colspan="4" scope="col">Citizen Registration Form </th>
  </tr>
  <tr>
    <td width="109">UID</td>
    <td width="161"><input name="uid" type="text" id="uid" /></td>
    <td width="166">Name</td>
    <td width="256"><input name="name" type="text" id="name" /></td>
  </tr>
  <tr>
    <td>Father's Name </td>
    <td><input name="fname" type="text" id="fname" /></td>
    <td>Gender</td>
    <td><input name="gender" type="radio" value="Male" />
      Male
      <input name="gender" type="radio" value="Female" />
      Female</td>
  </tr>
  <tr>
    <td>DOB</td>
    <td><input name="dob" type="text" id="dob" /></td>
    <td>Age</td>
    <td><input name="age" type="text" id="age" /></td>
  </tr>
  <tr>
    <td>Email</td>
    <td><input name="email" type="text" id="email" /></td>
    <td>Mobile</td>
    <td><input name="mobile" type="text" id="mobile" /></td>
  </tr>
  <tr>
    <td>Landline</td>
    <td><input name="landline" type="text" id="landline" /></td>
    <td>Area</td>
    <td><input name="area" type="text" id="area" /></td>
  </tr>
  <tr>
    <td>City</td>
    <td><input name="city" type="text" id="city" /></td>
    <td>Address</td>
    <td><input name="address" type="text" id="address" /></td>
  </tr>
  <tr>
    <td>Zip</td>
    <td><input name="zip" type="text" id="zip" /></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td colspan="2"><div align="center">
      <input type="submit" name="Submit" value="SAVE" />
      <input type="reset" name="Submit2" value="Reset" />
    </div></td>
    <td>&nbsp;</td>
  </tr>
</table>
</form>
</body>
</html>
