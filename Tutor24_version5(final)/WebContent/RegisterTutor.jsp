<%@ page session="true" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register Tutor</title>
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
        	if(student.phonenumber.value.length == 0)
    		{
    			error += "Phone number is required. </br>" 
    		}
        	if(student.subject.value.length == 0)
    		{
    			error += "Subjects Experience is required. </br>" 
    		}
        	if(student.password.value != student.confirmpassword.value)
        	{
        		error += "Password and Confirm Password doesn't match. </br>"
        	}
        	if((student.german.checked) || (student.french.checked) || (student.italian.checked)|| (student.english.checked) || (student.romanic.checked) || (student.spanish.checked) || (student.portuguese.checked) || (student.serbian.checked))
        		{}
        	else
        		{
        		error += "Language is required. </br>" 
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
<form action="registertutorprocess.jsp" method="post" onSubmit="return Validate(this)">
   <h1>
    </h1>
    <div class="singup">
        <h3>
            Tutor Registration</h3>
        <div class="signup-main">
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
                        <input id="confirmpassword" name="confirmpassword" type="password" value="" />
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
                    <td style="width: 25%;">
                        Membership:<span class="required">*</span> :
                    </td>
                    <td style="width: 35%;">
                        <select class="" name="membership" id="membership">
                            <option value="I">Individual</option>
                            <option value="C">Company</option>
                        </select>
                    </td>
                    <td style="width: 40%;">
                    </td>
                </tr>
                <tr>
                    <td colspan="3" style="text-align: left; color: #424141; padding-bottom: 10px;">
                        <u>Tutor Information</u>
                    </td>
                </tr>
                <tr>
                    <td style="width: 25%;">
                        Education<span class="required">*</span> :
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
                        Subjects Experience<span class="required">*</span> :
                    </td>
                    <td style="width: 35%;">
                        <input id="subject" name="subject" type="text" value="" />
                    </td>
                    <td style="width: 40%;">
                    </td>
                </tr>
                <tr>
                    <td style="width: 25%;">
                        Subjects Offered :
                    </td>
                    <td style="width: 35%;">
                        <input id="subjectoffered" name="subjectoffered" type="text" value="" />
                    </td>
                    <td style="width: 40%;">
                    </td>
                </tr>
                <tr>
                    <td style="width: 25%; vertical-align: top;">
                        Language Ability<span class="required">*</span> :
                    </td>
                    <td style="width: 35%;">
                        
                        <table style="color: #2d2c2c;font-size: 13px;font-weight: 400;">
	                        <tr>
			                    <td style="width: 150px;padding-bottom:15px;">
			                        <input id="german" name="german" value="1" type="checkbox"  />German
			                    </td>
			                    <td style="width: 50px;margin-bottom:15px;">		                         
			                    </td>
			                    <td >
			                    <input id="french" name="french" value="1" type="checkbox"  />French
			                    </td>
                		</tr>
                		<tr>
			                    <td style="width: 80px;padding-bottom:15px;">
			                        <input id="italian" name="italian" value="1" type="checkbox"  />Italian
			                    </td>
			                     <td style="width: 50px;margin-bottom:15px;">		                         
			                    </td>
			                    <td >
			                    <input id="english" name="english" value="1" type="checkbox"  />English
			                    </td>
                		</tr>
                		<tr>
			                    <td style="width: 80px;padding-bottom:15px;">
			                        <input id="romanic" name="romanic" value="1" type="checkbox"  />Rhaeto-Romanic
			                    </td>
			                    <td style="width: 50px;margin-bottom:15px;">		                         
			                    </td>
			                    <td >
			                    <input id="spanish" name="spanish" value="1" type="checkbox"  />Spanish
			                    </td>
                		</tr>
                		<tr>
			                    <td style="width: 80px;padding-bottom:15px;">
			                        <input id="portuguese" name="portuguese" value="1" type="checkbox"  />Portuguese
			                    </td>
			                     <td style="width: 50px;margin-bottom:15px;">		                         
			                    </td>
			                    <td >
			                    <input id="serbian" name="serbian" value="1" type="checkbox"  />Serbian
			                    </td>
                		</tr>
                        </table>
                    </td>
                    
                    <td style="width: 40%;">
                    </td>
                </tr>
                <tr>
                    <td style="width: 25%;">
                        Rate/hour :
                    </td>
                    <td style="width: 35%;">
                        <input id="rate" name="rate" type="text" value="" />
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
                    <td style="width: 25%;padding-bottom: 10px;">
                        Upload Photograph :
                    </td>
                    <td style="width: 35%;">
                        <input id="photograph" name="photograph" type="file" />
                    </td>
                    <td style="width: 40%;">
                    </td>
                </tr>
                
                <tr>
                    <td colspan="3" style="text-align: left; color: #424141; padding-bottom: 10px;">
                        <u>Time Availability</u>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <table class="time">
                            <tr>
                                <td class="time" style="width: 18%;">
                                </td>
                                <td class="time">
                                    Monday
                                </td>
                                <td class="time">
                                    Tuesday
                                </td>
                                <td class="time">
                                    Wednesday
                                </td>
                                <td class="time">
                                    Thrusday
                                </td>
                                <td class="time">
                                    Friday
                                </td>
                                <td class="time">
                                    Saturday
                                </td>
                                <td class="time">
                                    Sunday
                                </td>
                            </tr>
                            <tr>
                                <td class="time" style="width: 18%;">6 - 9 AM
                                </td>
                                <td class="time">
                                    <input id="a69M" name="a69M" value="1" value="1" type="checkbox" />
                                </td>
                                <td class="time">
                                    <input id="a69t" name="a69t" value="1" value="1" type="checkbox" />
                                </td>
                                <td class="time">
                                    <input id="a69w" name="a69w" value="1" type="checkbox" />
                                </td>
                                <td class="time">
                                    <input id="a69th" name="a69th" value="1" type="checkbox" />
                                </td>
                                <td class="time">
                                    <input id="a69f" name="a69f" value="1" type="checkbox" />
                                </td>
                                <td class="time">
                                    <input id="a69sa" name="a69sa" value="1" type="checkbox" />
                                </td>
                                <td class="time">
                                    <input id="a69su" name="a69su" value="1" type="checkbox" />
                                </td>
                            </tr>
                            <tr>
                                <td class="time" style="width: 18%;">9 - 12 AM
                                </td>
                                <td class="time">
                                    <input id="a912m" name="a912m" value="1" type="checkbox" />
                                </td>
                                <td class="time">
                                    <input id="a912t" name="a912t" value="1" type="checkbox" />
                                </td>
                                <td class="time">
                                    <input id="a912w" name="a912w" value="1" type="checkbox" />
                                </td>
                                <td class="time">
                                    <input id="a912th" name="a912th" value="1" type="checkbox" />
                                </td>
                                <td class="time">
                                    <input id="a912f" name="a912f" value="1" type="checkbox" />
                                </td>
                                <td class="time">
                                    <input id="a912sa" name="a912sa" value="1" type="checkbox" />
                                </td>
                                <td class="time">
                                    <input id="a912su" name="a912su" value="1" type="checkbox" />
                                </td>
                            </tr>
                            <tr>
                                <td class="time" style="width: 18%;">12- 3 PM
                                </td>
                                <td class="time">
                                    <input id="p123m" name="p123m" value="1" type="checkbox" />
                                </td>
                                <td class="time">
                                    <input id="p123t" name="p123t" value="1" type="checkbox" />
                                </td>
                                <td class="time">
                                    <input id="p123w" name="p123w" value="1" type="checkbox" />
                                </td>
                                <td class="time">
                                    <input id="p123th" name="p123th" value="1" type="checkbox" />
                                </td>
                                <td class="time">
                                    <input id="p123f" name="p123f" value="1" type="checkbox" />
                                </td>
                                <td class="time">
                                    <input id="p123sa" name="p123sa" value="1" type="checkbox" />
                                </td>
                                <td class="time">
                                    <input id="p123su" name="p123su" value="1" type="checkbox" />
                                </td>
                            </tr>
                            <tr>
                                <td class="time" style="width: 18%;">3 - 6 PM
                                </td>
                                <td class="time">
                                    <input id="p36m" name="p36m" value="1" type="checkbox" />
                                </td>
                                <td class="time">
                                    <input id="p36t" name="p36t" value="1" type="checkbox" />
                                </td>
                                <td class="time">
                                    <input id="p36w" name="p36w" value="1" type="checkbox" />
                                </td>
                                <td class="time">
                                    <input id="p36th" name="p36th" value="1" type="checkbox" />
                                </td>
                                <td class="time">
                                    <input id="p36f" name="p36f" value="1" type="checkbox" />
                                </td>
                                <td class="time">
                                    <input id="p36sa" name="p36sa" value="1" type="checkbox" />
                                </td>
                                <td class="time">
                                    <input id="p36su" name="p36su" value="1" type="checkbox" />
                                </td>
                            </tr>
                            <tr>
                                <td class="time" style="width: 18%;">6 - 9 PM
                                </td>
                                <td class="time">
                                    <input id="p69m" name="p69m" value="1" type="checkbox" />
                                </td>
                                <td class="time">
                                    <input id="p69t" name="p69t" value="1" type="checkbox" />
                                </td>
                                <td class="time">
                                    <input id="p69w" name="p69w" value="1" type="checkbox" />
                                </td>
                                <td class="time">
                                    <input id="p69th" name="p69th" value="1" type="checkbox" />
                                </td>
                                <td class="time">
                                    <input id="p69f" name="p69f" value="1" type="checkbox" />
                                </td>
                                <td class="time">
                                    <input id="p69sa" name="p69sa" value="1" type="checkbox" />
                                </td>
                                <td class="time">
                                    <input id="p69su" name="p69su" value="1" type="checkbox" />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
             <br />
            <div class="send-button">
                <input type="submit" value="Register" />
            </div>
        </div>
    </div>
    <br />
    </form>
</body>
</html>