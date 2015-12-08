<%@ page session="true" %>
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

<form action="searchtutorprocess.jsp" method="post">
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
                Search Tutor</h5>
            <table style="width: 100%; margin-left: 20px; margin-right: 20px;">
                <tr>
                    <td style="width: 25%;">
                        Education :
                    </td>
                    <td style="width: 35%;">
                        <select class="" name="education" id="education">
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
                        Subjects Offered :
                    </td>
                    <td style="width: 35%;">
                        <input id="subjectsoffered" name="subjectsoffered" type="text" value="" />
                    </td>
                    <td style="width: 40%;">
                    </td>
                </tr>
                
            </table>
            <div class="send-button">
                <input type="submit" value="Search" />
            </div>
        </div>
    </div>
    <br/>
    </form>
</body>
</html>