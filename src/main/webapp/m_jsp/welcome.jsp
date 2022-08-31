
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="java.sql.*"%> 
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>   
    
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>환영 페이지</title>
<style>


.page{
display:flex;
 flex-direction: column;
  align-items: center;
}
.welcome{
font-size:5em;
padding-top:50px;
}
   

</style>
<!--  <link rel="stylesheet" href="../resources/css/common.css" />
    <link rel="stylesheet" href="../resources/css/main.css" /> -->
</head>
<body class ="page">
<jsp:include page="header.jsp"/>
<jsp:include page="managerMenu.jsp"/>
<%

	String userid = (String)session.getAttribute("userid");
	String role = (String)session.getAttribute("role");


	if(userid == null && !role.equals("manager")) response.sendRedirect("../jsp/Main.jsp");
	else if (userid != null && role.equals("manager")){%>
	
		<div class="welcome">관리자 전용 페이지 입니다.</div>
<%
	}
%>	
	


</div>
</body>
</html>