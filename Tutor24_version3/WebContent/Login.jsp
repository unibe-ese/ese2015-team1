<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page session="true" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
<link href="css/login.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
        function Register() {
            var rdo = document.getElementsByName("usertype");
            if (rdo.length > 0) {
                if (rdo[0].checked == true) {//student registration
                    window.location.href = "RegisterStudent.jsp";
                }
                else { // tutor registration
                    window.location.href = "RegisterTutor.jsp";
                }
            }
        }
        function Login() {
            var rdo = document.getElementsByName("usertype");
            if (rdo.length > 0) {
                if (rdo[0].checked == true) {//student registration
                    window.location.href = "StudentProfile.jsp";
                }
                else { // tutor registration
                    window.location.href = "TutorProfile.jsp";
                }
            }
        }
    </script>
</head>
<body>
    <div class="login-form">
        <form action="loginprocess.jsp" >
        <h1>
            <input id="usertype" type="radio" name="usertype" value="S" checked="checked"><a
                href="#">I am Student</a></h1>
        <h2>
            <input id="usertype" type="radio" name="usertype" value="T"><a href="#">I am Tutor</a></h2>
        <li>
            <input id="email" name="email" type="text" onblur="if (this.value == '') {this.value = 'Email';}" onfocus="this.value = '';"
                value="Email" class="text"><a class=" icon user" href="#"></a> </li>
        <li>
            <input id="password" name="password" type="Password" onblur="if (this.value == '') {this.value = 'Password';}"
                onfocus="this.value = '';" value="Password"><a class=" icon lock" href="#"></a>
        </li>
        <div class="forgot">
            <h3>
                <a href="#" onclick="Register();">Register</a></h3>
            <input type="submit" value="Login" onclick="Login();" />
            <a class=" icon arrow" href="#"></a>
        </div>
        <div>
        <span id="message"  class="message"></span>
        </div>
        </form>
    </div>
</body>
</html>