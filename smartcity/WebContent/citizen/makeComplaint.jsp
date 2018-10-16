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
String str=(String)session.getAttribute("id");
String cid="";
	for(int i=0;i<8;i++)
	{
	 cid+=(int)(Math.random()*9)+1;
	}
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
	<form action="ComplaintDone.jsp" method="post">
	
	<table width="554" border="0">
      <tr>
        <th colspan="2" scope="col">Make ur complaint </th>
        </tr>
      <tr>
        <td width="149">UID</td>
        <td width="395"><input name="uid" type="text" id="uid" value="<%=str%>"  readonly="readonly" /></td>
      </tr>
      <tr>
        <td>Complaint id </td>
        <td><input name="cid" type="text" id="cid" value="<%=cid%>" readonly="readonly"/></td>
      </tr>
      <tr>
        <td>Area</td>
        <td><jsp:include page="getArea.jsp" flush="true" />&nbsp;</td>
      </tr>
      <tr>
        <td>Subject</td>
        <td><input name="subject" type="text" id="subject" /></td>
      </tr>
      <tr>
        <td>Complaint</td>
        <td><textarea name="complaint" cols="50" rows="5" id="complaint"></textarea></td>
      </tr>
      <tr>
        <td>Date</td>
        <td><input name="date" type="text" id="date" value="<%=new Date() %>"/></td>
      </tr>
      <tr>
        <td colspan="2"><div align="center">
          <input type="submit" name="Submit" value="Submit" />
          <input type="submit" name="Submit2" value="Submit" />
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
