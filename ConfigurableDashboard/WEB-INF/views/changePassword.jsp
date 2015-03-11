
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<html>
<head>
<title>Change Password Page</title>
<script type="text/javascript">

function validatePassword() 
{
	var current_password=document.changePassForm.current_password.value;
    var new_password = document.changePassForm.new_password.value;
    var confirm_password=document.changePassForm.confirm_password.value;       
    var result = true;
    if(current_password==null||current_password=="")
    {
    	alert("Current Password cannot be null");
    	//current_password.focus();
    	return false;
    }
    if(new_password==null||new_password=="")
    {
    	alert("New Password cannot be null");
    	return false;
    }
    if(confirm_password==null||confirm_password=="")
    {
    	alert("Confirm Password cannot be null");
    	return false;
    }
    if (new_password!=confirm_password) 
    {
        alert("Passwords Do not match.Please re-enter password"); 
        return false;
    } 
    return result; 
}

</script> 

<style>
/* .error {
	padding: 15px;
	margin-bottom: 10px;
	border: 1px solid transparent;
	border-radius: 4px;
	color: #a94442;
	background-color: #f2dede;
	border-color: #ebccd1;
} */
.error
{
 color: #ff0000;
 }
.msg {
	padding: 15px;
	margin-bottom: 20px;
	border: 1px solid transparent;
	border-radius: 4px;
	color: #31708f;
	background-color: #d9edf7;
	border-color: #bce8f1;
}
 
#login-box {
	width: 600px;
	padding: 20px;
	margin: 100px auto;
	background: #fff;
	-webkit-border-radius: 2px;
	-moz-border-radius: 2px;
	border: 1px solid #000;
}
</style>
</head>
<body onload='document.loginForm.current_password.focus();'>
 
	<h1>Change Password Form</h1>
 
	<div id="login-box">
 
		<h3>Change Password</h3>
 		<c:if test="${not empty msg}">
			<div class="msg">${msg}</div>
		</c:if>
	
		
   
		<form:form name="changePassForm" action="savepass" method="post" modelAttribute="changePassword" onsubmit ="return validatePassword()">
		  <table border="0">
		  	<tr>
				<td>UserName:</td>
				<td><B><form:input path="userName" readonly="true"/></B></td>	
				<td><form:errors path="userName" cssClass="error"/></td> 			
			</tr>
			<tr>
			<tr>
					<td>Current Password:</td>
                	<td><form:password path="current_password" /></td>
                	<td><form:errors path="current_password" cssClass="error"/></td> 
			</tr>
			<tr>
					<td>New Password:</td>
                	<td><form:password path="new_password" /></td>
                	<td><form:errors path="new_password" cssClass="error"/></td> 			
			</tr>
			<tr>
					<td>Confirm Password:</td>
                	<td><form:password path="confirm_password" /></td>
                	<td><form:errors path="confirm_password" cssClass="error"/></td> 
			</tr>
			<tr>
				<td colspan='2'><input type="submit"
					value="submit" /></td>
			</tr>
		  </table>
		</form:form>
	</div>
</body>
</html>