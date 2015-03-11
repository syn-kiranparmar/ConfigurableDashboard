<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <title><spring:message code="emailtemplate.add.title"/></title>

 <script type="text/javascript" src="resources/tinymce/js/tinymce/tinymce.min.js"></script> 
<script src="resources/js/tinyMce.js"></script>
	<script>
		window.onload = loadData();
	</script>


</head>
<body>


<%-- <form method="get" action="insertCampaignAction"> --%>
   <form:form action="insertCampaignAction" method="post" commandName="command">
   
   <spring:message code="add.email.template.jsp.template.name"/>:
   <form:select path="templateName">
  		<form:option value=""><spring:message code="add.email.template.jsp.template.name.option"/></form:option>
   		<form:option value="abcd"><spring:message code="add.email.template.jsp.template.name.option.value.abcd"/></form:option>
    	<form:option value="other"><spring:message code="add.email.template.jsp.template.name.option.value.other"/>
    	</form:option>
    </form:select>
    
    <form:textarea path="content" />
    <form:errors path="content" ></form:errors>
    
    <input type="submit" value="Save">
   </form:form>
<!--  Template Name: -->
<%--  <spring:message code="add.email.template.jsp.template.name"/>:
 <select name="templateName">
                <option><spring:message code="add.email.template.jsp.template.name.option"/></option>
                <option value="abcd"><spring:message code="add.email.template.jsp.template.name.option.value.abcd"/></option>
                <option value="other"><spring:message code="add.email.template.jsp.template.name.option.value.other"/></option>
 </select> --%>


	<!--  UserGroupId
	<input type="text" name="userGroupId">
	
	CreatedBy
	<input type="text" name="createdBy">
	
	UpdatedBy
	<input type="text" name="updatedBy"> 
	
	EmailStatusId
	<input type="text" name="emailStatusId">
	
 	CreatedDate
	<input type="text" name="createdDate">
	
	UpdatedDate
	<input type="text" name="updatedDate">
	
	TopicId
	<input type="text" name="topicId">  -->

<%-- 
 <br> <br>
 

    <textarea name="content" style="width:100%"></textarea>
    <br>
    <input type="submit" value="save">
</form> --%>



</body>
</html>