<%@ page session="true" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Payment</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
        function Redirect() {
           window.location.href = "https://www.paypal.com/signin/?country.x=IN&locale.x=en_IN";
        }
       
    </script>
</head>
<body>

<form >
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
        <h5>Pay with PayPal</h5>
            <table style="width: 100%; margin-left: 20px; margin-right: 20px;">
                <tr>
		            <td colspan="3">
		            	<span id="message" class="message"></span>
		            </td>
	            </tr>
	            
                <tr>
                    <td style="width: 25%;">
                        Amount<span class="required">*</span> :
                    </td>
                    <td style="width: 35%;">
                        <input id="amount" name="amount" type="text" value="" />
                    </td>
                    <td style="width: 40%;">
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
               
            </table>
            <div class="send-button">
                <br />
                <input type="button" value="Pay Now" onclick=Redirect(); />
            </div>
        </div>
    </div>
    <br />
    </form>
</body>
</html>