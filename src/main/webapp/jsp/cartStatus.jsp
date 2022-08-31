
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="java.sql.*"%> 
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>   
<%@page import="java.util.*"%> 

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>환영 페이지</title>

</head>
<%@ include file="dbconn.jsp"%>
<%

request.setCharacterEncoding("utf-8");
/* String[] checknum = request.getParameterValues("check_cnum");
 String order = (String)request.getParameter("order");
 String delete = (String)request.getParameter("delete");
System.out.println(order); */


Statement stmt1 = null;

String query = null;
ResultSet rs1 = null;

ArrayList<String> list = (ArrayList<String>)session.getAttribute("checkList");
for(int i=0;i<list.size(); i++) {
 System.out.println(list.get(i) + "<br>");
 query = "update cart set c_order = 1 where c_num = " + list.get(i);
	
	System.out.println("[주문완료 확인 쿼리 ] : " + query);

	stmt1 = conn.createStatement();
	stmt1.executeQuery(query);


}

	response.sendRedirect("orderConfirmation.jsp");


%>	


		

</body>
</html>