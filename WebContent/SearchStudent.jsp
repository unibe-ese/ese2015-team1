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
        <h5>Search Tutor</h5>
            <table style="width: 100%; margin-left: 20px; margin-right: 20px;">
               <tr>
                    <td style="width: 25%;">
                        Student Type :
                    </td>
                    <td style="width: 35%;">
                        <select class="" name="ddlStudentType" id="Select1">
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
                        <input id="txtSubject" type="text" value="" />
                    </td>
                    <td style="width: 40%;">
                    </td>
                </tr>
                <tr>
                    <td style="width: 25%;">
                        Class :
                    </td>
                    <td style="width: 35%;">
                        <input id="txtClass" type="text" value="" />
                    </td>
                    <td style="width: 40%;">
                    </td>
                </tr>
                <tr>
                    <td style="width: 25%;">
                        Lesson Type :
                    </td>
                    <td style="width: 35%;">
                        <select class="" name="ddlLessonType" id="Select3">
                            <option value="I">Individual</option>
                            <option value="G">Group</option>
                        </select>
                    </td>
                    <td style="width: 40%;">
                    </td>
                </tr>
            </table>
            <div class="send-button">
                <br />
                <input type="button" value="Search" />
            </div>
        </div>
    </div>
    <br />
    </form>
</body>
</html>