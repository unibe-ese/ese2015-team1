<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Search Tutor</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
</head>
<body>
<form id="form1">
    <h1>
    </h1>
    <div class="singup">
        <h4>
            <ul id="menu">
                <li><a href="StudentProfile.jsp">My Student Profile</a></li>
                <li><a href="SearchTutor.jsp">Search Tutor</a></li>
                <li><a href="StudentMessage.jsp">Messages</a></li>
            </ul>
        </h4>
        <div class="logout">
            <a href="Login.jsp">Log Out</a></div>
        <div class="signup-main">
            <h5>
                Search Tutor</h5>
            <table style="width: 100%; margin-left: 20px; margin-right: 20px;">
                <tr>
                    <td style="width: 25%;">
                        Education :
                    </td>
                    <td style="width: 35%;">
                        <select class="" name="ddlStudentType" id="Select1">
                            <option value="1">Finished Bachelor</option>
                            <option value="2">Finished Master</option>
                            <option value="3">Finished PH</option>
                        </select>
                    </td>
                    <td style="width: 40%;">
                    </td>
                </tr>
                <tr>
                    <td style="width: 25%;">
                        Subjects Experience :
                    </td>
                    <td style="width: 35%;">
                        <input id="txtSubject" type="text" value="" />
                    </td>
                    <td style="width: 40%;">
                    </td>
                </tr>
                <tr>
                    <td style="width: 25%;">
                        Subjects Offered :
                    </td>
                    <td style="width: 35%;">
                        <input id="txtOffered" type="text" value="" />
                    </td>
                    <td style="width: 40%;">
                    </td>
                </tr>
                <tr>
                    <td style="width: 25%; vertical-align: top;">
                        Language Ability :
                    </td>
                    <td style="width: 35%;">
                        <select class="" name="ddlLanguage" id="Select3" multiple="multiple">
                            <option value="1">German</option>
                            <option value="2">French</option>
                            <option value="3">Italian</option>
                            <option value="4">English</option>
                            <option value="5">Rhaeto-Romanic</option>
                            <option value="6">Spanish</option>
                            <option value="7">Portuguese</option>
                            <option value="8">Serbian / Croatian</option>
                        </select>
                    </td>
            </table>
            <div class="send-button">
                <input type="button" value="Search" />
            </div>
        </div>
    </div>
    <br/>
    </form>
</body>
</html>