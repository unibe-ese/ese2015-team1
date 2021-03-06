<%@page import="bean.StudentProfileDao"%>
<%@page import="bean.StudentProfileBean"%>
<%@ page session="true" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>My Student Profile</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
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
	
	if(error.length > 0)
		{
		message.innerHTML = error;
		window.scrollTo(100, 0);
		return false;
		}
	else
		{
		window.scrollTo(100, 0);
		return true;
		}
}
 </script>
</head>
<body>
<%

//int userid = (int)session.getAttribute("userid");
StudentProfileBean obj = StudentProfileDao.GetStudent((Integer)session.getAttribute("userid"));
  
%>
<form action="studentprofileprocess.jsp" method="post"  onSubmit="return Validate(this)">
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
        <h5>My Student Profile</h5>
            <table style="width: 100%; margin-left: 20px; margin-right: 20px;">
                <tr>
		            <td colspan="3" style="padding-bottom:15px;">
		            	<span id="message" class="message"></span>
		            </td>
	            </tr>
	            
                <tr>
                    <td style="width: 25%;">
                        Email<span class="required">*</span> :
                    </td>
                    <td style="width: 35%;">
                        <input id="email" name="email" type="text" value='<%=obj.getEmail() %>' />
                    </td>
                    <td style="width: 40%;">
                    </td>
                </tr>
                <tr>
                    <td style="width: 25%;">
                        Password<span class="required">*</span> :
                    </td>
                    <td style="width: 35%;">
                        <input id="password" name="password" type="password" value='<%=obj.getPassword() %>' />
                    </td>
                    <td style="width: 40%;">
                    </td>
                </tr>
               
                <tr>
                    <td style="width: 25%;">
                        First Name<span class="required">*</span> :
                    </td>
                    <td style="width: 35%;">
                        <input id="firstname" name="firstname" type="text" value='<%=obj.getFirstname() %>' />
                    </td>
                    <td style="width: 40%;">
                    </td>
                </tr>
                <tr>
                    <td style="width: 25%;">
                        Last Name<span class="required">*</span> :
                    </td>
                    <td style="width: 35%;">
                        <input id="lastname" name="lastname" type="text" value='<%=obj.getLastname() %>' />
                    </td>
                    <td style="width: 40%;">
                    </td>
                </tr>
                <tr>
                    <td style="width: 25%;">
                        Birthday :
                    </td>
                    <td style="width: 35%;">
                        <input id="birthday" name="birthday" type="text" value='<%=obj.getBirthday() %>' />
                    </td>
                    <td style="width: 40%;">
                    </td>
                </tr>
                <tr>
                    <td style="width: 25%;">
                        Gender<span class="required">*</span> :
                    </td>
                    <td style="width: 35%;">
                        <select class="" name="gender" id="gender"  selected='<%=obj.getGender() %>'>
                            <option <%= (obj.getGender().equals("M"))?"selected='selected'":"" %> value="M">Male</option>
                            <option <%= (obj.getGender().equals("F"))?"selected='selected'":"" %> value="F">Female</option>
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
                        <input id="city" name="city" type="text" value='<%=obj.getCity() %>' />
                    </td>
                    <td style="width: 40%;">
                    </td>
                </tr>
                <tr>
                    <td style="width: 25%;">
                        Address :
                    </td>
                    <td style="width: 35%;">
                        <input id="address" name="address" type="text" value='<%=obj.getAddress() %>' />
                    </td>
                    <td style="width: 40%;">
                    </td>
                </tr>
                <tr>
                    <td style="width: 25%;">
                        Postal Code :
                    </td>
                    <td style="width: 35%;">
                        <input id="postalcode" name="postalcode" type="text" value='<%=obj.getPostalcode() %>' />
                    </td>
                    <td style="width: 40%;">
                    </td>
                </tr>
                <tr>
                    <td style="width: 25%;">
                        Phone Number<span class="required">*</span> :
                    </td>
                    <td style="width: 35%;">
                        <input id="phonenumber" name="phonenumber" type="text" value='<%=obj.getPhonenumber() %>' />
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
                        <select class="" name="studenttype" id="studenttype" selected='<%=obj.getStudenttype() %>'>
                            <option <%= (obj.getStudenttype().equals("B"))?"selected='selected'":"" %> value="B">Bachelor Student</option>
                            <option <%= (obj.getStudenttype().equals("M"))?"selected='selected'":"" %> value="M">Master Student</option>
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
                        <input id="subject" name="subject" type="text" value='<%=obj.getSubject() %>' />
                    </td>
                    <td style="width: 40%;">
                    </td>
                </tr>
                <tr>
                    <td style="width: 25%;">
                        Class :
                    </td>
                    <td style="width: 35%;">
                        <input id="classs" name="classs" type="text" value='<%=obj.getClasss() %>' />
                    </td>
                    <td style="width: 40%;">
                    </td>
                </tr>
                <tr>
                    <td style="width: 25%;">
                        Lesson Type<span class="required">*</span> :
                    </td>
                    <td style="width: 35%;">
                        <select class="" name="lessontype" id="lessontype" selected='<%=obj.getLessontype() %>'>
                            <option <%= (obj.getLessontype().equals("I"))?"selected='selected'":"" %> value="I">Individual</option>
                            <option <%= (obj.getLessontype().equals("G"))?"selected='selected'":"" %> value="G">Group</option>
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
                        <textarea id="additionalinformation" name="additionalinformation" cols="20" rows="4"><%=obj.getAdditionalinformation() %></textarea>
                    </td>
                    <td style="width: 40%;">
                    </td>
                </tr>
                <!-- <tr>
                    <td style="width: 25%;">
                        Upload Photograph :
                    </td>
                    <td style="width: 35%;">
                        <input id="photograph" name="photograph"  type="file" />
                    </td>
                    <td style="width: 40%;">
                    </td>
                </tr> -->
            </table>
            <div class="send-button">
                <br />
                <input type="submit" value="Update" />
            </div>
        </div>
    </div>
    <br />
    </form>
</body>
</html>