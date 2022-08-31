<%--
  Created by IntelliJ IDEA.
  User: iot29
  Date: 2022-08-25
  Time: 오전 11:50
  To change this template use File | Settings | File Templates.
--%>
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
  response.sendRedirect("Main.jsp");

%>





</body>
</html>
