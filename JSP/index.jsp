<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    	<c:choose>
    		<c:when test="1<3">
    			1<3
    		</c:when>
    		<c:when test="1>2">
    			1>2
    		</c:when>
    		<c:otherwise>
    			error!!!
    		</c:otherwise>
    	</c:choose>
 	</body>
</html>