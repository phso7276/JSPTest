<%--
  Created by IntelliJ IDEA.
  User: iot29
  Date: 2022-08-25
  Time: 오후 7:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%> 


<html>
<head>
  <meta charset="utf-8">
  <title>주문 등록</title>
</head>
<body>

<fmt:setLocale value="en" scope="page"/>
<%@ include file="dbconn.jsp"%>
<%--유저ID도 장바구니 집어넣기--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core"%>
<%
  String name = (String) session.getAttribute("name");
  String zipCode = (String) session.getAttribute("zipCode");
  String addressName = (String) session.getAttribute("addressName");
  String phone = (String) session.getAttribute("phone");
  System.out.println("세션 저장되었나 확인 좀 우편번호 : " + zipCode + ", 이름 : " + name );
  String user_id = (String) session.getAttribute("userid");
  System.out.println("주문 창 " + user_id);
  
  
  ArrayList<String> list = (ArrayList<String>)session.getAttribute("checkList");
for(int i=0;i<list.size(); i++) {

  session.removeAttribute(list.get(i));
  System.out.println(list.get(i) + "의 세션 삭제");
}
  
  
  if (user_id == null) {
    System.out.println("아이디 없음 로그인 해주세요!!"); %>
<script>
  alert("유저 아이디가 없습니다. 로그인해주세요");
  document.location.href='login.jsp';
</script>

<%
}
else if (user_id != null){
  //primary key 생성위해 order count해주는 db설정
  request.setCharacterEncoding("utf-8");
  Statement stmt0 = conn.createStatement();
  String query0 = "SELECT * FROM ordercount WHERE id = 'a'";
  rs = stmt0.executeQuery(query0);
  int count =0;
  while(rs.next()) {
    count = rs.getInt("num");
    System.out.println(count);
  }
  count = Integer.valueOf(count) + 1;
  System.out.println("order 아이디 변환후"+count);
//  //orderlist db에 넣기
//  String num = (String)request.getParameter("btn_addCart");
//  System.out.println(num);
//
//  Statement stmt = conn.createStatement();
//  String query = "INSERT INTO cart(c_num,u_id,p_num,c_quan) VALUES ( "+ count +",'" + user_id + "'," + num + ",'1234')";
//
//  rs = stmt.executeQuery(query);
  //pnum 찾기
  String queryp_num = "select c.c_num, p.p_num,p.p_name,p.p_price,c.c_quan,c.c_order,p.p_quan "+
          "from product As p, cart AS c where c.c_order='1' AND c.p_num=p.p_num AND c.u_id = '" +user_id +"' ;";
  System.out.println("[상세 보기 쿼리] : " + queryp_num);
  Statement stmtp_num = null;
  stmtp_num = conn.createStatement();
  rs = stmtp_num.executeQuery(queryp_num);
  int pnum = 0;
  int cquan=0;
  int pquan =0;
  int price =0;
  int r_price=0;
  Statement stmt2 = null;
  Statement stmt3 =null;
  ResultSet rs2 = null;
  ResultSet rs3 = null;
  String code= null;
  String query3 = "SELECT LEFT(UUID(), 4) AS code;";  //고유성 있는 무작위 코드
  stmt3 = conn.createStatement();
  rs3 = stmt3.executeQuery(query3);
  while(rs3.next()){
    code= rs3.getString("code");
  }
  System.out.println("[code] : " + code);
  while(rs.next()){
    pnum = rs.getInt("p.p_num");
    cquan = rs.getInt("c.c_quan");
    price = rs.getInt("p.p_price");
    pquan = rs.getInt("p.p_quan");
    r_price += (price * cquan);
    //order_list
    stmt2 = conn.createStatement();
    String query2 = "INSERT INTO order_list(o_code,u_id,p_num,o_quan,o_total) VALUES ('"+ code+"', '" + user_id+"', '" + pnum +"', '"+ cquan+"','"+ (price * cquan )+"' );";
    System.out.println("[상세 보기 쿼리] : " + query2);
    rs2 = stmt2.executeQuery(query2);
    //p_quan에서 빼기
    Statement stmt_d = conn.createStatement();
    String sql = " UPDATE product SET p_quan = " + (pquan-cquan)+ " WHERE p_num = "+pnum;
    rs2 = stmt_d.executeQuery(sql);
  }
//receipt 넣기
  Statement stmto_list = conn.createStatement();
  String queryo_list = "INSERT INTO receipt(r_code, u_id, r_total, r_name, r_address,r_zipcode, r_phone ) " +
          " VALUES (  '" + code+"', '" + user_id +"', '"+r_price+"', ' " + name +"','" + addressName +"','" + zipCode +"',' " + phone + " '  );";
  System.out.println("[상세 보기 쿼리] : " + queryo_list);
  rs = stmto_list.executeQuery(queryo_list);
  //cart 지우기
  Statement stmt = conn.createStatement();
  String query = "DELETE from cart where c_order='1' AND u_id = '" +user_id +"' ;";
  System.out.println("[상세 보기 쿼리] : " + query);
  rs = stmt.executeQuery(query);
  
  
  
%>

<script>
  alert("주문 완료");
  document.location.href='Main.jsp';
</script>

<%
  }
%>
</body>
</html>
