
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="contextRoot" value="${pageContext.request.contextPath}" />

<html>
    <head>
    	<meta charset="utf-8">
    	<meta name="viewport" content="width=device-width, initial-scale=1">
        
        <title>View Items</title>
		<link href="${contextRoot}/assets/css/bootstrap.min.css" rel="stylesheet">
		<link href="${contextRoot}/assets/css/custom.css" rel="stylesheet">
    </head>
    <body> 
   
    <!-- This is a header jsp file added -->
	 <jsp:include page="include/header.jsp"></jsp:include>
    
    
    
          
		
		<script src="${contextRoot}/assets/js/bootstrap.bundle.min.js"></script>
		<script src="${contextRoot}/assets/js/custom.js"></script>
    </body>
</html>