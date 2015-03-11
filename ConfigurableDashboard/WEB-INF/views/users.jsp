<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>Users Page</title>
<style>
.error {
	padding: 15px;
	margin-bottom: 20px;
	border: 1px solid transparent;
	border-radius: 4px;
	color: #a94442;
	background-color: #f2dede;
	border-color: #ebccd1;
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
</head>
<body>
 
	<h1>Users in table </h1>
 
	<div id="Users List">
 
		<h3>All users</h3>
 
		
		<c:if test="${not empty emptyListMsg}">
			<div class="msg">${emptyListMsg}</div>
		</c:if>
 
 		<table>
			<tr>
				<td>username:</td>
			
			
				<td>password:</td>
				
				<td>email:</td>
				
			</tr>
		
				  
		 <c:forEach var="usersRecord" items="${usersList}">
			 <tr>
			   <td> <c:out value="${usersRecord.username}"/></td>
			   <td> <c:out value="${usersRecord.password}"/></td>
			   <td> <c:out value="${usersRecord.email}"/></td>
			 </tr> 
			 <tr></tr>   
		</c:forEach>
		  </table>
		  
		
		
		
	</div>
 
</body>
</html>