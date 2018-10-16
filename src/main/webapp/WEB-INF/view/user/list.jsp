<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'list.jsp' starting page</title>
    
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
	    This is my JSP page. <br>
	   <form action="${pageContext.request.contextPath}/index/requestList" method="post">
	    	兴趣爱好：
	    	<input type="checkbox" name="hobby" value="basktball" /> 打篮球
	    	<input type="checkbox" name="hobby" value="football" /> 踢足球
	    	<input type="checkbox" name="hobby" value="tennis" /> 打网球
	    	<input type="checkbox" name="hobby" value="run" /> 跑步<br>
	    	<input type="submit">
	   </form>
  </body>

</html>
