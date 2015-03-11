<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<html>
<title><spring:message code="configuredashboard.title"/></title>
<link type="text/css" href="resources/css/jquery-ui.css" rel="stylesheet" />

<script>
	function saveConfig() {
		document.forms['dashboardConfigureForm'].submit();
	}
</script>
</head>
 
<body class="configure-dashboard">
    <form:form name='dashboardConfigureForm' method="POST" commandName="dashboardConfigure" >  
	<table>  
	    <tbody>
		  <tr>
			<td>
				<spring:message code="configuredashboard.select.components"/>:
			</td>
		  </tr>
		  <tr>  
			<td>  
				<ul>  
					<form:checkboxes element="li" path="widgets" items="${widgetsMap}"/></ul>  
			</td>  
	      </tr>  
	    <tr>  
	        <td>  
	            <input value="Save" type="button" onclick="saveConfig()">  
	        </td>  
	    </tr>  
	</tbody></table>  
	</form:form>  
 
</body>	
</html>