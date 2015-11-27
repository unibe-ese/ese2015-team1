<%@ page session="true" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Search Student</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
</head>
<body>

<form action="searchstudentprocess.jsp" method="post">
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
        <h5>Search Student</h5>
            <table style="width: 100%; margin-left: 20px; margin-right: 20px;">
               <tr>
                    <td style="width: 25%;">
                        Student Type :
                    </td>
                    <td style="width: 35%;">
                        <select class="" name="studenttype" id=""studenttype"">
                            <option value="B">Bachelor Student</option>
                            <option value="M">Master Student</option>
                        </select>
                    </td>
                    <td style="width: 40%;">
                    </td>
                </tr>
                <tr>
                    <td style="width: 25%;">
                        Subject :
                    </td>
                    <td style="width: 35%;">
                        <input id="subject" name="subject" type="text" value="" />
                    </td>
                    <td style="width: 40%;">
                    </td>
                </tr>
                
            </table>
            <div class="send-button">
                <br />
                <input type="submit" value="Search" />
            </div>
        </div>
    </div>
    <br />
    </form>
</body>
</html>