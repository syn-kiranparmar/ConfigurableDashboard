<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@page session="true"%>

<html>
  <head>
	<title><spring:message code="contentauthor.dashboard.title"/></title>
	<link rel="stylesheet" type="text/css" href="resources/css/styles.css">	
	<link type="text/css" href="resources/css/jquery-ui.css" rel="stylesheet" />
	<link href="resources/css/sDashboard.css" rel="stylesheet">

	<script src="resources/js/contentAuthorDashboard.js" type="text/javascript"></script>	
	<script src="resources/js/thirdparty/jquery-1.8.2.min.js" type="text/javascript"> </script>
	<script src="resources/js/thirdparty/jquery-ui.js" type="text/javascript"> </script>
	<script src="resources/js/thirdparty/jquery.dataTables.min.js"> </script>
	<script src="resources/js/thirdparty/flotr2.js" type="text/javascript"> </script> 
	<script src="resources/js/thirdparty/jquery-sDashboard.js" type="text/javascript"> </script>
	<script src="resources/js/dashboardData.js" type="text/javascript"> </script>
	
	<script type="text/javascript">
		$(function() {			
			$.ajax({url: "getContentAuthorWidgets.json", success: function(result){
		        createDashboard(result);
		    }});				
			
			$("#config-loader").click(function(){
				// Load the page into the div
				$("#configure-dialog").load("configureDashboard");
				// Show the modal dialog
				$("#configure-dialog").dialog({
					width: 650,
					height: 250,
					modal: true,
					title: 'Configure dashboard',
					close: function () {
						//alert('closed');
					}
				});
			});
		});		  
	</script>		
  </head>
  
  <body>
 	<%@ include file="../template/tabs.jsp" %>
    <div id="configure-dialog" style="display: none"></div>
	<div><span style="cursor: pointer; cursor: hand; float: right;"><img src="resources/images/Configure.png" id="config-loader" title="Configure Dashboard"/>&nbsp;&nbsp;&nbsp;</span></div>
	  	 
 	<ul id="contentAuthorDashboard">
	
	<div id="remove-widget-confirm"></div>
  </body>
  
</html>
