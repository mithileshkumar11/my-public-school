
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
    
    
    <main class="container-fluid">
    
    	<c:if test="${userClickOnHome == true}">
			<!-- This is a myCarousel jsp file added -->
			<%@ include file="include/myCarousel.jsp"%>	
					
			<!-- This is a main jsp file added -->	 
		 	<%@ include file="pages/main.jsp"%>	
		 </c:if> 
    	
    	<c:if test="${userClickOnAboutUs == true}">
			<!-- This is a About_us jsp file added -->
			<%@ include file="pages/about_us.jsp"%>	
		 </c:if> 
		 
		 <c:if test="${userClickOnContactUs == true}">
			<!-- This is a Contact_us jsp file added -->
			<%@ include file="pages/contact_us.jsp"%>	
		 </c:if> 
		 
		 <c:if test="${userClickOnLogin == true}">
			<!-- This is a login jsp file added -->
			<%@ include file="pages/login.jsp"%>	
		 </c:if>
    </main>
    
    
    
    
		<!-- This is a footer jsp file added -->
    	<jsp:include page="include/footer.jsp"></jsp:include>
      	
		<script src="${contextRoot}/assets/js/bootstrap.bundle.min.js"></script>
		<script src="${contextRoot}/assets/js/custom.js"></script>
    </body>
</html>