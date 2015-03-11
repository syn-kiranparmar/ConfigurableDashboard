<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script src= "resources/js/header.js"></script>
<link rel="stylesheet" type="text/css" href="resources/css/styles.css">
	
<c:url value="/j_spring_security_logout" var="logoutUrl" />
	
<table class="headerTable">
	<tbody>
		<tr>
			<td class="header">
				<table class="headerItems">
					<tr>
						<td>
							<!-- csrt for log out-->
							<form action="${logoutUrl}" method="post" id="logoutForm">
								<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
							</form>
						</td>
						<td>
							<img src="resources/images/user.png"/><span class="hdrText"><spring:message code="header.hello"/> ${username}</span>
						</td>
						<td>
							<a href="#">
								<img src="resources/images/email.png"/>
								<!--if there are unread notitications, show the number of noti. as overlay image -->
							</a>
						</td>
						<td>
							<a href="#">
								<img src="resources/images/settings.png"/>
							</a>
						</td>
						<td>
							<a href="javascript:formSubmit()" class="hdrLink"> 
								<span class="hdrText"><spring:message code="logout.label"/></span>
							</a>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</tbody>	
</table>