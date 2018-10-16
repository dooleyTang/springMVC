<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    
    <title>My JSP 'show.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    This is my pet JSP page. <br>
    ${number}<br>
    user : ${user.userId}<br>
    		${user.username}<br>
    		
   <table border="1">
   	<tr>
   		<td>id</td>
   		<td>username</td>
   	</tr>
   	<c:forEach items="${users}" var="u">
   		<tr>
   		<td>${u.userId}</td>
   		<td>${u.username}</td>
   		</tr>
   	</c:forEach>
   </table>
  </body>
</html>
