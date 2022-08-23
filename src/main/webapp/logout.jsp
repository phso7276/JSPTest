<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title></title>
</head>
<body>

<%


/* 	String userid = (String)session.getAttribute("userid");
	String managerid = (String)session.getAttribute("managerid"); */
	session.invalidate(); //모든 세션 종료--> 로그아웃...
	response.sendRedirect("login.jsp");
	
%>





</body>
</html>