<%--
  Created by IntelliJ IDEA.
  User: iot29
  Date: 2022-08-23
  Time: 오후 6:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page import="java.sql.*"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDateTime"%>
<%@page import="java.util.Locale"%>
<%@ page import="static java.lang.Integer.*" %>

<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>카트 삭제</title>
</head>
<body>

<fmt:setLocale value="en" scope="page"/>
<%@ include file="dbconn.jsp"%>
<%

  request.setCharacterEncoding("utf-8");


  Statement stmt = conn.createStatement();
  String query = "DELETE FROM cart ";

  rs = stmt.executeQuery(query);


%>

<script>

  alert("삭제 완료");
  document.location.href='cart.jsp';

</script>

</body>
</html>

