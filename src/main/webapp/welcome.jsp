
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
</head>
<body class ="page">
<jsp:include page="header.jsp"/>
<jsp:include page="managerMenu.jsp"/>
<%

	String userid = (String)session.getAttribute("userid");


	if(userid == null) response.sendRedirect("index.jsp");
	else if (userid != null){%>
	
		<div class="welcome">관리자 전용 페이지 입니다.</div>
<%
	}
%>	
	


<!-- <fmt:setLocale value="ko" /> --> 

<%-- <div>
<fmt:setBundle basename="Bundle.message" var="resourceBundle" />

<div><%=person %>, <fmt:message key="hello" bundle="${resourceBundle}"/> </div>

<fmt:setLocale value="en" />
<fmt:setBundle basename="Bundle.message" var="resourceBundle" />

<div><%=person %>, <fmt:message key="hello" bundle="${resourceBundle}"/></div> --%>


<%-- <h1>회원 가입일 : <%=regdate %></h1>
<h1>마지막 로그인 날짜 : <%=lastlogindate %></h1> --%>

<!-- <h1>[ <a href="showProducts.jsp">게시판 가기</a> ] | [ <a href="logout.jsp">로그아웃</a> ]</h1> -->
</div>
</body>
</html>