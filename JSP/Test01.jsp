<%@page import="java.util.ArrayList"%>
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
    	<% //参数设置
    		pageContext.setAttribute("first",10);
    		pageContext.setAttribute("second",20);
    		
    		//数组参数
    		int numList[]={1,2,3,4,5};
    		pageContext.setAttribute("pnumList",numList);
    		
    		//collection对象参数
    		ArrayList<Integer> sList = new ArrayList<Integer>();
    		sList.add(1);
    		sList.add(2);
    		sList.add(3);
    		pageContext.setAttribute("sList",sList);
    		
    	%>
    	
    	
    	
    	（1）if else逻辑,获取比较大的值:<br />
    	<c:choose>
    		<c:when test="${first>second}">
    			max=${first}
    		</c:when>
    		<c:otherwise>
    			max=${second}
    		</c:otherwise>
    	</c:choose>
    	<br /><br />
    	
    	（2）for循环：获取数组，collection对象中的数据：<br />
    	2.1获取数组中的数据<br />
    	<c:forEach var="x" varStatus="status" items="${pageScope.pnumList}">
			num${status.index}=${x}<br />
		</c:forEach>
    	
    	2.2获取collection对象中的数据:
    	<c:forEach var="y" varStatus="status" items="${pageScope.sList}">
    		num${status.index}=${y}<br />
    	</c:forEach>
 	</body>
</html>