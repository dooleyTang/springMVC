<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
 
    
    <title>My JSP 'addAjax.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript" src="/mvc/js/jquery-3.3.1.js"></script>
	<script type="text/javascript">
		$(function(){
			var jsonData={
					'userId':1,
					'username':'发',
			}
			var jsonString= JSON.stringify(jsonData);
			$.ajax({
				'type':'POST',
				'url':'adduser',
				'data':jsonString,
				'success':function(){
					alert('数据发送')
				},
				'contentType':'application/json',
			});
		});
	</script>
  </head>
  
  <body>
    This is my addAjax JSP page. <br>
  </body>
</html>
