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
  String officerUsername=(String)session.getAttribute("id");
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
    <td width="453"><form id="form1" name="form1" method="post" action="ReplySent.jsp">
      <table width="100%" border="1">
        <tr>
          <th colspan="2" scope="col">Officer reply!! </th>
        </tr>
        <tr>
          <td width="50%">UId</td>
          <td width="50%"><input name="textfield1" type="text" id="textfield1" value="<%=uid%>"/></td>
        </tr>
        <tr>
          <td>CID</td>
          <td><input type="text" name="textfield2" value="<%=cid%>"/></td>
        </tr>
        <tr>
          <td>Officer ID </td>
          <td><input type="text" name="textfield3" value="<%=officerUsername%>"/></td>
        </tr>
        <tr>
          <td>Your Response for citizen </td>
          <td><textarea name="textarea" cols="50" rows="5"></textarea></td>
        </tr>
        <tr>
          <td>Date</td>
          <td><input name="textfield4" type="text" id="textfield4" value="<%=new Date()%>"/></td>
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
