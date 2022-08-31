<%--
  Created by IntelliJ IDEA.
  User: iot29
  Date: 2022-08-26
  Time: 오후 2:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<html lang="ko">
<head>
  <meta charset="utf-8">
  <title>CSS</title>
  <style>
    .sidemenu {
      margin-bottom: 100px;
    }
    .sidemenu ul {
      list-style-type: none;
      margin-left: 250px;
      padding: 0;
      width: 200px;
      background-color: #f1f1f1;
    }
    .sidemenu li a {
      display: block;
      color: #000;
      padding: 8px 16px;
      text-decoration: none;
    }
    .sidemenu li a.active {
      background-color: #f3d967;
      color: white;
    }
    .sidemenu li a:hover:not(.active) {
      background-color: #555;
      color: white;
    }
    .my_right {
      list-style-type: none;
      margin-left: 50px;
      margin-bottom: 100px;
      padding: 0;
      width: 1000px;
      background-color: #f1f1f1;
      border: 1px solid #bcbcbc;
    }
    .my_right li a {
      display: block;
      color: #000;
      padding: 8px 16px;
      text-decoration: none;
    }
    .my_right li a.active {
      background-color: #f3d967;
      color: white;
    }
    .my_right li a:hover:not(.active) {
      background-color: #555;
      color: white;
    }
    .my_box {
      display: flex;
    }
  </style>
</head>
<body>
<!--HEADER-->
<jsp:include page="header.jsp" />


<div >
  <p style="height: 150px">마이페이지</p>
</div>


  <div class="my_box">
  <div class = "sidemenu">
  <ul>
    <li><a class="active" href="myPage.jsp">My Page</a></li>
    <li><a href="userInfo.jsp">회원 정보 수정 </a></li>
    <li><a href="userCart.jsp">장바구니</a></li>
    <li><a href="orderResult.jsp">주문확인</a></li>
  </ul>
  </div>
  <div class = "my_right">
    <h4>마이페이지</h4>
  </div>
  </div>

<!--FOOTER-->
<jsp:include page="footer.jsp" />
</body>
</html>