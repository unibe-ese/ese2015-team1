<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register Student</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
 <script type="text/javascript">
        function Redirect() {
            window.location.href = "Login.jsp";
        }
        function Validate(student)
        {
        	var error="";
        	
        	if(student.email.value.length == 0)
    		{
    			error += "Email is required. </br>" 
    		}
        	if(student.password.value.length == 0)
    		{
    			error += "Password is required. </br>" 
    		}
        	if(student.confirmpassword.value.length == 0)
    		{
    			error += "Confirm Password is required. </br>" 
    		}
        	if(student.firstname.value.length == 0)
    		{
    			error += "First Name is required. </br>" 
    		}
        	if(student.lastname.value.length == 0)
    		{
    			error += "Last Name is required. </br>" 
    		}
        	if(student.subject.value.length == 0)
    		{
    			error += "Subject is required. </br>" 
    		}
        	if(student.password.value != student.confirmpassword.value)
        	{
        		error += "Password and Confirm Password doesn't match. </br>"
        	}
        	
        	if(error.length > 0)
        		{
        		message.innerHTML = error;
        		return false;
        		}
        	else
        		{
        		return true;
        		}
        }
    </script>
</head>
<body>

<form action="registerstudentprocess.jsp" method="post" onSubmit="return Validate(this)">
 <h1>
    </h1>
    <div class="singup">
    
        <h3>
            Student Registration</h3>
        <div class="signup-main">
            <table style="width: 100%; margin-left: 20px; margin-right: 20px;">
	            <tr>
		            <td colspan="3">
		            	<span id="message" class="message"></span>
		            </td>
	            </tr>
            
                <tr>
                    <td style="width: 25%;">
                        Email<span class="required">*</span> :
                    </td>
                    <td style="width: 35%;">
                        <input id="email" name="email" type="text" value="" />
                    </td>
                    <td style="width: 40%;">
                    </td>
                </tr>
                <tr>
                    <td style="width: 25%;">
                        Password<span class="required">*</span> :
                    </td>
                    <td style="width: 35%;">
                        <input id="password" name="password" type="password" value="" />
                    </td>
                    <td style="width: 40%;">
                    </td>
                </tr>
                <tr>
                    <td style="width: 25%;">
                        Confirm Password<span class="required">*</span> :
                    </td>
                    <td style="width: 35%;">
                        <input id="confirmpassword" name="confirmpassword"type="password" value="" />
                    </td>
                    <td style="width: 40%;">
                    </td>
                </tr>
                <tr>
                    <td style="width: 25%;">
                        First Name<span class="required">*</span> :
                    </td>
                    <td style="width: 35%;">
                        <input id="firstname" name="firstname" type="text" value="" />
                    </td>
                    <td style="width: 40%;">
                    </td>
                </tr>
                <tr>
                    <td style="width: 25%;">
                        Last Name<span class="required">*</span> :
                    </td>
                    <td style="width: 35%;">
                        <input id="lastname" name="lastname" type="text" value="" />
                    </td>
                    <td style="width: 40%;">
                    </td>
                </tr>
                <tr>
                    <td style="width: 25%;">
                        Birthday :
                    </td>
                    <td style="width: 35%;">
                        <input id="birthday" name="birthday" type="text" value="" />
                    </td>
                    <td style="width: 40%;">
                    </td>
                </tr>
                <tr>
                    <td style="width: 25%;">
                        Gender<span class="required">*</span> :
                    </td>
                    <td style="width: 35%;">
                        <select class="" name="gender" id="gender">
                            <option value="M">Male</option>
                            <option value="F">Female</option>
                        </select>
                    </td>
                    <td style="width: 40%;">
                    </td>
                </tr>
                <tr>
                    <td style="width: 25%;">
                        City :
                    </td>
                    <td style="width: 35%;">
                        <input id="city" name="city" type="text" value="" />
                    </td>
                    <td style="width: 40%;">
                    </td>
                </tr>
                <tr>
                    <td style="width: 25%;">
                        Address :
                    </td>
                    <td style="width: 35%;">
                        <input id="address" name="address" type="text" value="" />
                    </td>
                    <td style="width: 40%;">
                    </td>
                </tr>
                <tr>
                    <td style="width: 25%;">
                        Postal Code :
                    </td>
                    <td style="width: 35%;">
                        <input id="postalcode" name="postalcode" type="text" value="" />
                    </td>
                    <td style="width: 40%;">
                    </td>
                </tr>
                <tr>
                    <td style="width: 25%;">
                        Phone Number<span class="required">*</span> :
                    </td>
                    <td style="width: 35%;">
                        <input id="phonenumber" name="phonenumber" type="text" value="" />
                    </td>
                    <td style="width: 40%;">
                    </td>
                </tr>
                <tr>
                    <td colspan="3" style="text-align: left; color: #424141; padding-bottom: 10px;">
                        <u>Training details</u>
                    </td>
                </tr>
                <tr>
                    <td style="width: 25%;">
                        Student Type<span class="required">*</span> :
                    </td>
                    <td style="width: 35%;">
                        <select class="" name="studenttype" id="studenttype">
                            <option value="B">Bachelor Student</option>
                            <option value="M">Master Student</option>
                        </select>
                    </td>
                    <td style="width: 40%;">
                    </td>
                </tr>
                <tr>
                    <td style="width: 25%;">
                        Subject<span class="required">*</span> :
                    </td>
                    <td style="width: 35%;">
                        <input id="subject" name="subject" type="text" value="" />
                    </td>
                    <td style="width: 40%;">
                    </td>
                </tr>
                <tr>
                    <td style="width: 25%;">
                        Class :
                    </td>
                    <td style="width: 35%;">
                        <input id="classs" name="classs" type="text" value="" />
                    </td>
                    <td style="width: 40%;">
                    </td>
                </tr>
                <tr>
                    <td style="width: 25%;">
                        Lesson Type<span class="required">*</span> :
                    </td>
                    <td style="width: 35%;">
                        <select class="" name="lessontype" id="lessontype">
                            <option value="I">Individual</option>
                            <option value="G">Group</option>
                        </select>
                    </td>
                    <td style="width: 40%;">
                    </td>
                </tr>
                <tr>
                    <td style="width: 25%; vertical-align: top;">
                        Additional Information :
                    </td>
                    <td style="width: 35%;">
                        <textarea id="additionalinformation" name="additionalinformation" cols="20" rows="4"></textarea>
                    </td>
                    <td style="width: 40%;">
                    </td>
                </tr>
                <tr>
                    <td style="width: 25%;">
                        Upload Photograph :
                    </td>
                    <td style="width: 35%;">
                        <input id="photograph" name="photograph" type="file" />
                    </td>
                    <td style="width: 40%;">
                    </td>
                </tr>
            </table>
            <div class="send-button">
                <br />
                <input type="submit" value="Register" />
            </div>
        </div>
    </div>
    <br />
</form>
</body>
</html>