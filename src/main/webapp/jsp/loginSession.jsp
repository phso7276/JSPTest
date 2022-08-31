<%--
  Created by IntelliJ IDEA.
  User: iot29
  Date: 2022-08-25
  Time: 오전 11:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page import="java.sql.*"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDateTime"%>
<%@page import="java.util.Locale"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%@ include file="dbconn.jsp"%>
<%
  int p_num =0;

  request.setCharacterEncoding("utf-8");


  String user_id = request.getParameter("sessionId");
  String user_pw = request.getParameter("sessionPw");



  Statement stmt1 = null;
  Statement stmt2 = null;
  Statement stmt5 = null;
  ResultSet rs1 = null;
  ResultSet rs2 = null;
  ResultSet rs5 = null;


  int u_id_cnt = 0;
  int u_pw_cnt = 0;



  String u_role = null;

  //LocalDateTime now = LocalDateTime.now();
  //String lastlogindate = now.format(DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss"));
  String lastlogindate = LocalDateTime.now().toString();

  //존재하는 아이디 인지 확인
  String query1 = "select count(*) as u_id_count from user where u_id= '" + user_id + "';";
  //패스워드가 틀렸는지 확인
  String query2 = "SELECT count(*) as u_id_count from user "
          + "WHERE u_id='" + user_id + "' and "
          + "u_pw='"+user_pw+"';";
  String query5 = "select role from user where u_id= '" + user_id + "';";
  //마지막 접속 시간 등록
/* 	String query3 = "update tbl_test set lastlogindate = '" + lastlogindate
			      + "' where userid = '" + userid + "'";
	String query4 = "insert into tbl_test_log (userid,lastlogindate) "
			      + "values ('" + userid + "','" + lastlogindate + "')";
	 */


    stmt1 = conn.createStatement();
    stmt2 = conn.createStatement();
    stmt5 = conn.createStatement();

    System.out.println(user_id);
    System.out.println(user_pw);

    rs1 = stmt1.executeQuery(query1);
    rs2 = stmt2.executeQuery(query2);
    rs5 = stmt5.executeQuery(query5);


    while(rs1.next()) u_id_cnt = rs1.getInt("u_id_count");
    while(rs2.next()) u_pw_cnt = rs2.getInt("u_id_count");


    //아이디가 존재하고 패스워드도 틀리지 않은 user계정
    if(u_id_cnt != 0 && u_pw_cnt !=0){
      while(rs5.next()){u_role = rs5.getString("role"); System.out.println("role:"+u_role);}

      session.setMaxInactiveInterval(3600*7); //세션 유지 기간 설정
      session.setAttribute("userid", user_id); //세션 생성
      session.setAttribute("role", u_role);
      stmt1.close();
      stmt2.close();
      stmt5.close();
      rs1.close();
      rs2.close();
      rs5.close();
      conn.close();
%>


<%
  Locale locale = request.getLocale();

  String lang = locale.getLanguage();
  System.out.println("로그인 언어 :" + lang);
  if(u_role.equals("user")){
    response.sendRedirect("Main.jsp");
  }
  else if (u_role.equals("manager")){
    response.sendRedirect("Main.jsp");
  }



} else if(u_id_cnt == 0){ //아이디가 존재하지 않는 사용자
  stmt1.close();
  stmt2.close();
  rs1.close();
  rs2.close();



  conn.close();

%>
<script>

  alert("사용자가 존재하지 않습니다.");
  document.location.href='login.jsp';

</script>
<%
}else if((u_id_cnt!=0 && u_pw_cnt == 0)){ //아이디는 있으나 패스워드가 틀린 사용자

  stmt1.close();
  stmt2.close();
  rs1.close();
  rs2.close();


  conn.close();
%>

<script>

  alert("패스워드를 잘못 입력 했습니다.");
  document.location.href='login.jsp';

</script>

<%
    }

%>

</body>
</html>
