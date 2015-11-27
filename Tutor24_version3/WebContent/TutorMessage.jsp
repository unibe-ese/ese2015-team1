<%@ page session="true" %>
<%@page import="java.sql.*"%> 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Messages</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
</head>
<body>
<form id="form1">
<h1>
    </h1>
    <div class="singup">
        <h4>
           <ul id="menu">
                <li><a href="TutorProfile.jsp">My Tutor Profile</a></li>
                <li><a href="SearchStudent.jsp">Search Student</a></li>
                <li><a href="TutorMessage.jsp">Messages</a></li>
            </ul>
        </h4>
        <div class="logout">
            <a href="Login.jsp">Log Out</a></div>
        <div class="signup-main">
        <h5>Messages</h5>
        <table style="width: 95%; margin-left: 20px; margin-right: 20px;border: 1px solid;">
                <tr style="background-color:#c9c9c9;height: 30px;font-size: 13px;">
					<td style="vertical-align:middle;width:12%; border-left: 1px solid;color:#000000;">Student Id</td>
					<td style="vertical-align:middle;width:12%;border-left: 1px solid;color:#000000;">Email </td>
					<td style="vertical-align:middle;width:12%; border-left: 1px solid;color:#000000;">First Name </td>
					<td style="vertical-align:middle;width:12%; border-left: 1px solid;color:#000000;">Last Name </td>
					<td style="vertical-align:middle; border-left: 1px solid;color:#000000;">Message </td>
				</tr>
				<%
				 Connection con = bean.ConnectionProvider.getCon();
				 PreparedStatement ps= con.prepareStatement("SELECT t.StudentId, t.Email,t.FirstName, t.LastName, m.Message FROM tblstudent as t INNER JOIN tbltutormessage as m on t.StudentId = m.StudentId ");
				 
				 //ps.setInt(1,(Integer)session.getAttribute("userid"));
				
				 ResultSet rs=ps.executeQuery();
				 
				 while(rs.next())
				 {
					 %>
					 <tr style="font-size: 11px;height: 20px;">
						 <td style="vertical-align:middle;border-left: 1px solid;border-top: 1px solid;"><%=rs.getInt("StudentId")%></td>
						 <td style="vertical-align:middle;border-left: 1px solid;border-top: 1px solid;"><%=rs.getString("Email")%></td>
					 	<td style="vertical-align:middle;border-left: 1px solid;border-top: 1px solid;"><%=rs.getString("FirstName")%></td>
					 	<td style="vertical-align:middle;border-left: 1px solid;border-top: 1px solid;"><%=rs.getString("LastName")%></td>
					 	<td style="vertical-align:middle;border-left: 1px solid;border-top: 1px solid;"><%=rs.getString("Message")%></td>
					  </tr>
				<%} %>
            </table>
            <br>
        </div>
        </div>
        </form>
</body>
</html>