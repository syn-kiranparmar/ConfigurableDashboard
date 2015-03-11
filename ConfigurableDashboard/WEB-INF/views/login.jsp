<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<html>
  <head>
	<title><spring:message code="pol.page.title"/></title>
	<link rel="shortcut icon" type="image/x-icon" href="resources/images/pol_icon.png">
	<link rel="stylesheet" type="text/css" href="resources/css/styles.css">
  </head>
  
  <body class="loginBody" onload='document.loginForm.username.focus();'>

  <section class="loginContainer">
    <div>
	  <c:if test="${not empty error}">
		<div class="loginError">${error}</div>
	  </c:if>
	  <c:if test="${not empty msg}">
		<div class="loginMsg">${msg}</div>
	  </c:if>
	</div>
    <div class="loginDiv">
      <h1><spring:message code="login.label"/></h1>
      <form name='loginForm' action="<c:url value='j_spring_security_check' />" method='POST'>
        <p><spring:message code="login.username"/>: <input class="loginInput" type="text" name="username"/></p>
        <p><spring:message code="login.password"/>: &nbsp;<input class="loginInput" type="password" name="password"/></p>
		<c:if test="${empty loginUpdate}">
			<tr>
				<td></td>
				<td>Remember Me: <input type="checkbox" name="remember-me" /></td>
			</tr>
		</c:if>
			
		<p class="submit" align="middle"><input class="loginSubmit" type="submit" value="Login"></p>
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
		
		<a  href="${pageContext.request.contextPath}/forgotPasswordUsername" target="_blank">Forgot Password</a>
 
      </form>
    </div>	
  </section>	

 
 
</body>
</html>