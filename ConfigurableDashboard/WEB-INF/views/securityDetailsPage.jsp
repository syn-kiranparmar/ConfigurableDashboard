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
	padding: 15px;
	margin-bottom: 20px;
	border: 1px solid transparent;
	border-radius: 4px;
	color: #31708f;
	background-color: #d9edf7;
	border-color: #bce8f1;
}
 
#login-box {
	width: 300px;
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
		var username=document.userForm.username.value;
		var sec_ques_id=document.userForm.sec_ques_id.value;
		var sec_ques_answer=document.userForm.sec_ques_answer.value;
	  
		if (username==null || username=="")
		{  
		  	alert("User Name can't be blank");
		 	document.userForm.username.focus();
		  	return false;  
		}else if(sec_ques_id == 0)
		{
			alert("Select any Sequrity Question");
			document.userForm.sec_ques_id.focus();
			return false;
		}else if(sec_ques_answer==null || sec_ques_answer=="")
		{  
		  	alert("Answer can't be blank"); 
		  	document.userForm.sec_ques_answer.focus();
		 	return false;  
	  	} 
		
		return confirm('Are you confirm to save this answer?');
	}   
</script>  

</head>
<body>
    <div align="center">

        <form:form action="saveSecurityDetails" method="post" name="userForm" modelAttribute="securityQuestionAns" onsubmit="return validateform()" >
        
			<div class="msg">${msg}</div>
            <table border="0">
            	<tr>
                    <td colspan="2" align="left"><h2>Hello!</h2></td>
                </tr>
                <tr>
                    <td colspan="2" align="center"><h2>Please answer the Security Question</h2></td>
                </tr>
                
                <tr>
                	<td>User Name:</td>
                	<td><form:input path="username" readonly="true" /></td>
                	<td><form:errors path="username" cssClass="error"/> 
                	</td>
                </tr>   
                <tr>
              
                <td></td>
                
                </tr>
                            
                <tr>
                    <td>Security Question:</td>
                    
                    <td><form:select path="sec_ques_id" >
                    	<form:option value="0">Select Security Question</form:option>
                    	
                    	<c:forEach var="question" items="${questionsList}">
   	
							<option value="${question.id}">${question.sec_question}</option>
						</c:forEach>
                       	</form:select> 
                	</td>
                	<td><form:errors path="sec_ques_id" cssClass="error"/></td>
                </tr>
              	<tr>
                    <td>Answer:</td>
                    <td><form:input path="sec_ques_answer"/></td>
                    <td><form:errors path="sec_ques_answer" cssClass="error"/></td>
                </tr>
                
                <tr>
                    <td colspan="2" align="center"><input type="submit" value="Submit" /></td>
                    <td colspan="2" align="center"><input type="submit" value="Skip" /></td>
                </tr>
                    
            </table>
        </form:form>
    </div>
   				
</body>
</html>

