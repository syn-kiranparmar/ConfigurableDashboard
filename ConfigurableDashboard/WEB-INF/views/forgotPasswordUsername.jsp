<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
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
	/* padding: 15px;
	margin-bottom: 20px;
	border: 1px solid transparent;
	border-radius: 4px;
	color: #31708f;
	background-color: #d9edf7;
	border-color: #bce8f1; */
	
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

table{
	border-spacing: 2px;
}
</style>
<script type="text/javascript" language="javascript">  
	function validateform()
	{  
		var username=document.userForm.username.value;
			  
		if (username==null || username=="")
		{  
		  	alert("User Name can't be blank");
		 	document.userForm.username.focus();
		  	return false;  
		}
		return true;
	}   
</script>  

</head>
<body>

	<h1>Reset Password</h1>
	
    <div id="login-box" align="center">
    
    	<div class="msg">${unameError}</div>

        <form:form action="forgotPasswordUsername" method="post" name="userForm" modelAttribute="forgotPasswordQuesAns" onsubmit="return validateform()" >
			
			<p>To Reset Password, please enter UserName and click 'Next'</p>
			
            <table>
            	<tr>            		
					<td>UserName:</td>
					<td align="left"><B><form:input path="username" size="35"/> </B><td>
				   	<td><form:errors path="username" cssClass="error"/> 
                	</td>
                </tr>   
                                
                <tr>
                    <td colspan="2" align="right"><input type="submit" value="Next" align="right"/></td>
                </tr>
        	</table>
           
        </form:form>
    </div>
   				
</body>
</html>