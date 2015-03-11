<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<html>
  <head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="shortcut icon" type="image/x-icon" href="resources/images/pol_icon.png">
	<link rel="stylesheet" type="text/css" href="resources/css/styles.css">
  </head>

  <body>
  
   <div>
        <div class="headerTile">
            <tiles:insertAttribute name="header" />
        </div>
        <div class="bodyTile">
            <tiles:insertAttribute name="body" />
        </div>
        <div class="footerTile">
            <tiles:insertAttribute name="footer" />
        </div>
    </div>		
		
  </body>
</html>	