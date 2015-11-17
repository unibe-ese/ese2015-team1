<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>My Tutor Profile</title>
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
        <h5>My Tutor Profile</h5>
            <table style="width: 100%; margin-left: 20px; margin-right: 20px;">
                <tr>
                    <td style="width: 25%;">
                        Email<span class="required">*</span> :
                    </td>
                    <td style="width: 35%;">
                        <input id="txtEmail" type="text" value="" />
                    </td>
                    <td style="width: 40%;">
                    </td>
                </tr>
                <tr>
                    <td style="width: 25%;">
                        Password<span class="required">*</span> :
                    </td>
                    <td style="width: 35%;">
                        <input id="txtPassword" type="password" value="" />
                    </td>
                    <td style="width: 40%;">
                    </td>
                </tr>
               
                <tr>
                    <td style="width: 25%;">
                        First Name<span class="required">*</span> :
                    </td>
                    <td style="width: 35%;">
                        <input id="txtFirstName" type="text" value="" />
                    </td>
                    <td style="width: 40%;">
                    </td>
                </tr>
                <tr>
                    <td style="width: 25%;">
                        Last Name<span class="required">*</span> :
                    </td>
                    <td style="width: 35%;">
                        <input id="txtLastName" type="text" value="" />
                    </td>
                    <td style="width: 40%;">
                    </td>
                </tr>
                <tr>
                    <td style="width: 25%;">
                        Birthday :
                    </td>
                    <td style="width: 35%;">
                        <input id="txtBirthday" type="text" value="" />
                    </td>
                    <td style="width: 40%;">
                    </td>
                </tr>
                <tr>
                    <td style="width: 25%;">
                        Gender<span class="required">*</span> :
                    </td>
                    <td style="width: 35%;">
                        <select class="" name="ddlGender" id="ddlGender">
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
                        <input id="txtCity" type="text" value="" />
                    </td>
                    <td style="width: 40%;">
                    </td>
                </tr>
                <tr>
                    <td style="width: 25%;">
                        Address :
                    </td>
                    <td style="width: 35%;">
                        <input id="txtAddress" type="text" value="" />
                    </td>
                    <td style="width: 40%;">
                    </td>
                </tr>
                <tr>
                    <td style="width: 25%;">
                        Postal Code :
                    </td>
                    <td style="width: 35%;">
                        <input id="txtPostalCode" type="text" value="" />
                    </td>
                    <td style="width: 40%;">
                    </td>
                </tr>
                <tr>
                    <td style="width: 25%;">
                        Phone Number<span class="required">*</span> :
                    </td>
                    <td style="width: 35%;">
                        <input id="txtPhoneNumber" type="text" value="" />
                    </td>
                    <td style="width: 40%;">
                    </td>
                </tr>
                <tr>
                    <td style="width: 25%;">
                        Membership:<span class="required">*</span> :
                    </td>
                    <td style="width: 35%;">
                        <select class="" name="ddlMembership" id="Select2">
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
                        Subjects Experience<span class="required">*</span> :
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
                        Language Ability<span class="required">*</span> :
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
                    <td style="width: 40%;">
                    </td>
                </tr>
                <tr>
                    <td style="width: 25%;">
                        Rate/hour :
                    </td>
                    <td style="width: 35%;">
                        <input id="txtRate" type="text" value="" />
                    </td>
                    <td style="width: 40%;">
                    </td>
                </tr>
                <tr>
                    <td style="width: 25%; vertical-align: top;">
                        Additional Information :
                    </td>
                    <td style="width: 35%;">
                        <textarea id="txtAdditionalInformation" cols="20" rows="4"></textarea>
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
                                    Satuday
                                </td>
                                <td class="time">
                                    Sunday
                                </td>
                            </tr>
                            <tr>
                                <td class="time" style="width: 18%;">6 - 9 AM
                                </td>
                                <td class="time">
                                    <input id="Checkbox7" type="checkbox" />
                                </td>
                                <td class="time">
                                    <input id="Checkbox8" type="checkbox" />
                                </td>
                                <td class="time">
                                    <input id="Checkbox9" type="checkbox" />
                                </td>
                                <td class="time">
                                    <input id="Checkbox10" type="checkbox" />
                                </td>
                                <td class="time">
                                    <input id="Checkbox11" type="checkbox" />
                                </td>
                                <td class="time">
                                    <input id="Checkbox12" type="checkbox" />
                                </td>
                                <td class="time">
                                    <input id="Checkbox1" type="checkbox" />
                                </td>
                            </tr>
                            <tr>
                                <td class="time" style="width: 18%;">9 - 12 AM
                                </td>
                                <td class="time">
                                    <input id="Checkbox2" type="checkbox" />
                                </td>
                                <td class="time">
                                    <input id="Checkbox3" type="checkbox" />
                                </td>
                                <td class="time">
                                    <input id="Checkbox4" type="checkbox" />
                                </td>
                                <td class="time">
                                    <input id="Checkbox5" type="checkbox" />
                                </td>
                                <td class="time">
                                    <input id="Checkbox6" type="checkbox" />
                                </td>
                                <td class="time">
                                    <input id="Checkbox13" type="checkbox" />
                                </td>
                                <td class="time">
                                    <input id="Checkbox14" type="checkbox" />
                                </td>
                            </tr>
                            <tr>
                                <td class="time" style="width: 18%;">12- 3 PM
                                </td>
                                <td class="time">
                                    <input id="Checkbox15" type="checkbox" />
                                </td>
                                <td class="time">
                                    <input id="Checkbox16" type="checkbox" />
                                </td>
                                <td class="time">
                                    <input id="Checkbox17" type="checkbox" />
                                </td>
                                <td class="time">
                                    <input id="Checkbox18" type="checkbox" />
                                </td>
                                <td class="time">
                                    <input id="Checkbox19" type="checkbox" />
                                </td>
                                <td class="time">
                                    <input id="Checkbox20" type="checkbox" />
                                </td>
                                <td class="time">
                                    <input id="Checkbox21" type="checkbox" />
                                </td>
                            </tr>
                            <tr>
                                <td class="time" style="width: 18%;">3 - 6 PM
                                </td>
                                <td class="time">
                                    <input id="Checkbox22" type="checkbox" />
                                </td>
                                <td class="time">
                                    <input id="Checkbox23" type="checkbox" />
                                </td>
                                <td class="time">
                                    <input id="Checkbox24" type="checkbox" />
                                </td>
                                <td class="time">
                                    <input id="Checkbox25" type="checkbox" />
                                </td>
                                <td class="time">
                                    <input id="Checkbox26" type="checkbox" />
                                </td>
                                <td class="time">
                                    <input id="Checkbox27" type="checkbox" />
                                </td>
                                <td class="time">
                                    <input id="Checkbox28" type="checkbox" />
                                </td>
                            </tr>
                            <tr>
                                <td class="time" style="width: 18%;">6 - 9 PM
                                </td>
                                <td class="time">
                                    <input id="Checkbox29" type="checkbox" />
                                </td>
                                <td class="time">
                                    <input id="Checkbox30" type="checkbox" />
                                </td>
                                <td class="time">
                                    <input id="Checkbox31" type="checkbox" />
                                </td>
                                <td class="time">
                                    <input id="Checkbox32" type="checkbox" />
                                </td>
                                <td class="time">
                                    <input id="Checkbox33" type="checkbox" />
                                </td>
                                <td class="time">
                                    <input id="Checkbox34" type="checkbox" />
                                </td>
                                <td class="time">
                                    <input id="Checkbox35" type="checkbox" />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
            <div class="send-button">
                <br />
                <input type="button" value="Update" />
            </div>
        </div>
    </div>
    <br />
    </form>
</body>
</html>