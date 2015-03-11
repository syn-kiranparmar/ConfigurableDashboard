<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
    
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Security Page</title>
<style>

.error {
	color: #ff0000;
}
 
.msg {
/* 	padding: 15px; */
/* 	margin-bottom: 20px; */
/* 	border: 1px solid transparent; */
/* 	border-radius: 4px; */
/*  	color: #31708f; 	 */
/* 	background-color: #d9edf7; */
/* 	border-color: #bce8f1; */

	color: #31708f;
}
 
#login-box {
	width: 500px;
	padding: 20px;
	margin: 100px auto;
	background: #fff;
	-webkit-border-radius: 2px;
	-moz-border-radius: 2px;
	border: 1px solid #000;
}
</style>
<script type="text/javascript" language="javascript">  
	function validateform()
	{  
		var user_answer = document.userForm.user_answer.value;
			  
		if (user_answer == null || user_answer == "")
		{  
		  	alert("Answer can't be blank");
		 	document.userForm.user_answer.focus();
		  	return false;  
		}
		return true;
	}   
</script>  

</head>
<body>

	<h1>Reset Password</h1>
    <div id="login-box" align="center">
    
    	<div class="msg">${errorMsg}</div>
    	<div class="msg">${success}</div>    	
<%-- 			${success} --%>
    	<div class="msg">${newPassword}</div>
<%-- 			${newPassword} --%>

        <form:form action="forgotPasswordQuesAnswer" method="post" name="userForm" modelAttribute="forgotPasswordQuesAns" onsubmit="return validateform()" >
        
			<p>To Reset Password, please enter Security Question Answer and click 'Submit'</p>	
            <table >
            	<tr>
            		<form:input type="hidden" path="username"/>
					<form:input type="hidden" path="sec_ques_answer"/>
					<form:input type="hidden" path="user_question"/>
					
                	<td><form:label path="user_question" >Security Question:</form:label></td>
					<td><form:input path="user_question" disabled="true" size="50" /></td>
					<td><form:errors path="user_question" cssClass="error"/></td>
                </tr>   
                <tr>                	
                	<td><form:label path="user_answer">Answer:</form:label></td>
                	<td><form:input path="user_answer" size="50"/></td>
                	<td><form:errors path="user_answer" cssClass="error"/></td>                	
                </tr>
                                               
                <tr>
                	<td></td>
                    <td colspan="2" align="center"><input type="submit" value="Submit" /></td>
                    <td></td>
                </tr>
                    
            </table>
        </form:form>
    </div>
   				
</body>
</html>