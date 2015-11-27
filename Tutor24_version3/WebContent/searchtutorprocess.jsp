<%@page import="java.sql.*"%> 
<%@page import="bean.SearchTutorBean"%>
<%@ page session="true" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <jsp:useBean id="obj" class="bean.SearchTutorBean" />

<jsp:setProperty property="*" name="obj"/>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Search Tutor Result</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
        function Redirect() {
            window.location.href = "SearchTutor.jsp";
        }
        
</script>
</head>
<body>

 <h1>
    </h1>
    <div class="singup">
        <h4>
            <ul id="menu">
                <li><a href="StudentProfile.jsp">My Student Profile</a></li>
                <li><a href="SearchTutor.jsp">Search Tutor</a></li>
                <li><a href="StudentMessage.jsp">Messages</a></li>
                <li><a href="Payment.jsp">Payment</a></li>
            </ul>
        </h4>
        <div class="logout">
            <a href="Login.jsp">Log Out</a></div>
        <div class="signup-main">
            <h5>
                Search Tutor Result</h5>
            <table style="width: 95%; margin-left: 20px; margin-right: 20px;border: 1px solid;">
                <tr style="background-color:#c9c9c9;height: 30px;font-size: 13px;">
					<td style="vertical-align:middle;width:12%; border-left: 1px solid;color:#000000;">Tutor Id</td>
					<td style="vertical-align:middle;width:12%;border-left: 1px solid;color:#000000;">Email </td>
					<td style="vertical-align:middle;width:12%; border-left: 1px solid;color:#000000;">First Name </td>
					<td style="vertical-align:middle;width:12%; border-left: 1px solid;color:#000000;">Last Name </td>
					<td style="vertical-align:middle;width:12%; border-left: 1px solid;color:#000000;">City </td>
					<td style="vertical-align:middle;width:12%; border-left: 1px solid;color:#000000;">Subjects Offered</td>
					<td style="vertical-align:middle;width:12%; border-left: 1px solid;color:#000000;">Rate/hour </td>
					<td style="vertical-align:middle;width:12%;border-left: 1px solid;color:#000000;"> </td>
				</tr>
				<%
				 Connection con = bean.ConnectionProvider.getCon();
				 PreparedStatement ps= con.prepareStatement("SELECT * FROM tbltutor where Education =? or SubjectsOffered =?");
				 
				 ps.setInt(1,obj.getEducation());
				 ps.setString(2, obj.getSubjectsoffered());
				 //ps.setString(2, "'%" + obj.getSubjectsoffered() + "%'");
				 
				 ResultSet rs=ps.executeQuery();
				 
				 while(rs.next())
				 {
					 %>
					 <tr style="font-size: 11px;height: 20px;">
						 <td style="vertical-align:middle;border-left: 1px solid;border-top: 1px solid;"><%=rs.getInt("TutorId")%></td>
						 <td style="vertical-align:middle;border-left: 1px solid;border-top: 1px solid;"><%=rs.getString("Email")%></td>
					 	<td style="vertical-align:middle;border-left: 1px solid;border-top: 1px solid;"><%=rs.getString("FirstName")%></td>
					 	<td style="vertical-align:middle;border-left: 1px solid;border-top: 1px solid;"><%=rs.getString("LastName")%></td>
					 	<td style="vertical-align:middle;border-left: 1px solid;border-top: 1px solid;"><%=rs.getString("City")%></td>
					 	<td style="vertical-align:middle;border-left: 1px solid;border-top: 1px solid;"><%=rs.getString("SubjectsOffered")%></td>
					 	<td style="vertical-align:middle;border-left: 1px solid;border-top: 1px solid;"><%=rs.getInt("Rate")%></td>
					 	<td style="vertical-align:middle;border-left: 1px solid;border-top: 1px solid;"><div align="center"><a href="MessageTutor.jsp?tutorid=<%=rs.getInt("TutorId")%>">Message</a></div></td>
					 </tr>
				<%} %>
            </table>
            <br>
            
            <div class="send-button">
                <input type="button" value="Back" onclick=Redirect(); />
            </div>
        </div>
    </div>
    <br/>
</body>
</html>