
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
<%

	String userid = (String)session.getAttribute("userid");
	String managerid = (String)session.getAttribute("managerid");
	String person = null;

	if(userid == null && managerid==null) response.sendRedirect("index.jsp");
	else if (userid != null){
		person = userid;%>
		<div class="welcome">회원 전용 페이지 입니다.</div>
		<% 
	}
	else if (managerid != null){
		person =managerid;%>
		<jsp:include page="managerMenu.jsp"/>
		<div class="welcome">관리자 전용 페이지 입니다.</div>
<% }%>	
	


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