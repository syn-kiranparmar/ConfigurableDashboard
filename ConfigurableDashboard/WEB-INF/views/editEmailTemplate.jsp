<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title><spring:message code="emailtemplatedisplaypage.title"/></title>

<script type="text/javascript" src="resources/tinymce/js/tinymce/tinymce.min.js"></script>
<script src="resources/js/tinyMce.js"></script>
	<script>
		window.onload = loadData();
	</script>

</head>
<body>
	<form:form method="get" action="fromDisplayPage">

		<form:hidden path="id" value="${sendingDataToEmailTemplateDisplay.id}"
			readonly="true" /> 


   <spring:message code="emailtemplatedisplaypage.templatename"/>:
   				<form:input path="templateName"
			value="${sendingDataToEmailTemplateDisplay.templateName}" />



		<%--   UserGroupId
   				<form:input path="userGroupId"
			value="${sendingDataToEmailTemplateDisplay.userGroupId}" />

	
   CreatedBy
				<form:input path="createdBy"
			value="${sendingDataToEmailTemplateDisplay.createdBy}" />
	
	
	UpdatedBy
				<form:input path="updatedBy"
			value="${sendingDataToEmailTemplateDisplay.updatedBy}" /> --%>
	
	

	<spring:message code="emailtemplatedisplaypage.emailstatusid"/>:
				<form:input path="emailStatusId"
			value="${sendingDataToEmailTemplateDisplay.emailStatusId}" />


		<%-- CreatedDate
				<form:input path="createdDate"
			value="${sendingDataToEmailTemplateDisplay.createdDate}" />

	
	UpdatedDate
				<form:input path="updatedDate"
			value="${sendingDataToEmailTemplateDisplay.updatedDate}" />

	
	TopicId
				<form:input path="topicId"
			value="${sendingDataToEmailTemplateDisplay.topicId}" /> --%>



		<br>
		<br>
		<textarea name="content" style="width: 100%" rows="5">${sendingDataToEmailTemplateDisplay.content}</textarea>

		<br>
		<input type="submit" value="Update">
	</form:form>


</body>
</html>