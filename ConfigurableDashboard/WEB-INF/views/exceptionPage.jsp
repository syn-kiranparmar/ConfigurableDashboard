<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<html>
  <head>
	<title><spring:message code="pol.exception.page.title"/></title>
  </head>
  <body>
	<h2><spring:message code="polexception.app.error"/></h2>
	<h3><spring:message code="polexception.debug.info"/></h3>
	
	<c:choose>
      <c:when test="${exception.customExcp == 'true'}">
      	<spring:message code="polexception.exception"/> = <spring:message code="${exception.errorCode}" /><br><br>
      </c:when>
      <c:otherwise>
      	<spring:message code="polexception.exception"/> = ${exception.completeMsg}<br><br>
      </c:otherwise>
	</c:choose>

	<!--Stack Trace: <br>
	<c:forEach items="${exception.stackTraces}" var="ste">    
		${ste} <br>
	</c:forEach>-->
    
</body>
</html>