<%@page import="smartcity.DBInfo"%>
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
  String uname=(String)session.getAttribute("id");

%>
<body>
<table width="900" border="0" align="center">
  <tr>
    <th scope="col"><%@ include file="header.html"%>&nbsp;</th>
  </tr>
  <tr valign="top">
    <td height="25"><a href="officer.jsp">BACK</a></td>
  </tr>
  <tr valign="top">
    <td height="140"><table width="100%" border="1">
      <tr>
        <th scope="col">UID</th>
        <th scope="col">Complaint ID </th>
        <th scope="col">Area</th>
        <th scope="col">Subject</th>
        <th scope="col">Complaint</th>
        <th scope="col">Date</th>
        <th scope="col">Action</th>
      </tr>
      <%
        String query="select * from complaint";
      PreparedStatement ps=DBInfo.getConn().prepareStatement(query);
      ResultSet res=ps.executeQuery();
      while(res.next())
      {
    	  String uid=res.getString(1);
    	  String cid=res.getString(2);
    	  String area=res.getString(3);
    	  String subject=res.getString(4);
    	  String complaint=res.getString(5);
    	  String date=res.getString(6);
    %>
    
         <tr>
        <td><%=uid %>&nbsp;</td>
        <td><%=cid %>&nbsp;</td>
        <td><%=area %>&nbsp;</td>
        <td><%=subject %>&nbsp;</td>
        <td><%=complaint %>&nbsp;</td>
        <td><%=date %>&nbsp;</td>
        <td><a href="Reply.jsp?uid=<%=uid%>&cid=<%=cid%>&name=<%=uname%>">Reply</a>&nbsp;</td>
      </tr>
    
    <%	  
    	  
      }
      
      %>
      
      
      
     
    </table></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
</table>
</body>
</html>
