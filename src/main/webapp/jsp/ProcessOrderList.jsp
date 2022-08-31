
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="java.sql.*"%> 
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>   
<%@page import="java.util.*"%> 

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



%>	

<%
  request.setCharacterEncoding("utf-8");


  String name = (String)request.getParameter("name");
  String zipCode = request.getParameter("zipCode");
  String addressName = request.getParameter("addressName");
  String phone = request.getParameter("phone");

  session.setMaxInactiveInterval(3600*7); //세션 유지 기간 설정
  session.setAttribute("name", name); //세션 생성
  session.setAttribute("zipCode", zipCode); //세션 생성
  session.setAttribute("addressName", addressName); //세션 생성
  session.setAttribute("phone", phone); //세션 생성
  response.sendRedirect("orderConfirmation.jsp");
%>

