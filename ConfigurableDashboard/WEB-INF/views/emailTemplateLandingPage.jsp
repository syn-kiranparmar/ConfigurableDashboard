<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title><spring:message code="emailtemplatelandingpage.title"/></title>
</head>
<body>
	<a href="addCampaign"><spring:message code="emailtemplatelandingpage.href.addCampaign"/>:</a>

	<c:if test="${!empty campaignList}">
		<h2><spring:message code="emailtemplatelandingpage.emailtemplatedisplay"/>:</h2>
		<table align="left" border="1">
			<tr>

				<th><spring:message code="emailtemplatelandingpage.templatename"/></th>

				<th><spring:message code="emailtemplatelandingpage.emailstatus"/></th>
				<!--  <th> UpdatedBy</th>  -->

				<!--  <th> CreatedDate</th> 
   <th> UpdatedDate</th>  -->

				<th><spring:message code="emailtemplatelandingpage.actionsonrow"/></th>
			</tr>

			<c:forEach items="${campaignList}" var="emailTemplateJsp">
				<tr>


					<td><c:out value="${emailTemplateJsp.templateName}" /></td>
					<td><c:out value="${emailTemplateJsp.emailStatusId}" /></td>



					<%--   <td><c:out value="${emailTemplateJsp.createdBy}"/></td>  
    <td><c:out value="${emailTemplateJsp.updatedBy}"/></td>  

    <td><c:out value="${emailTemplateJsp.createdDate}"/></td>  
    <td><c:out value="${emailTemplateJsp.updatedDate}"/></td> --%>


					<td align="center"><a href="edit?id=${emailTemplateJsp.id}"><spring:message code="emailtemplatelandingpage.href.edit"/></a>
						| <a href="delete?id=${emailTemplateJsp.id}"><spring:message code="emailtemplatelandingpage.href.delete"/></a></td>
				</tr>
			</c:forEach>
		</table>
	</c:if>
</body>
</html>