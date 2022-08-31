<%--
  Created by IntelliJ IDEA.
  User: iot29
  Date: 2022-08-19
  Time: 오후 6:56
  To change this template use File | Settings | File Templates.
--%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core"%>

<!DOCTYPE html>
<html>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="UTF-8">
<head>
  <link rel="stylesheet" type="text/css" href="css/show.css" />
  <script src="http://code.jquery.com/jquery-1.11.3.js"></script>
  <title>장바구니</title>
</head>

<%
  request.setCharacterEncoding("utf-8");
  String user_id = (String) session.getAttribute("userid");
  System.out.println("장바구니 창 아이디: "+user_id);

%>
<%@ include file="dbconn.jsp"%>
<body>
<div >
  <p style="height: 150px">장바구니</p>
</div>
<div class="tableDiv">

  <jsp:include page="header.jsp"/>

  <form name="selectForm" class="seletForm" action="deliveryStatus.jsp" method="post">
    <table class="orderlistTable">
      <tr>
        <th></th>
        <th>상품</th>


        <th>가격</th>


        <th>수량</th>


        <th>상품 번호 : 상품명</th>

        <th>주문 수량</th>
        <th>배송상태</th>
        <th>총액</th>

        <th>우편번호</th>
        <th>주소</th>
        <th>전화번호</th>
        <th>주문일</th>



      </tr>

      <tbody>


      <%
        String query = "SELECT o.o_num,o.o_quan,o.o_result,o.o_date,o.u_id,o.o_total, p.p_num,p.p_name,u.u_address,u_name,u.zip_code, u.u_phone "+
                "FROM order_list AS o,product AS p, user AS u "+
                "WHERE o.p_num=p.p_num "+
                "AND u.u_id = o.u_id "+
                "order BY o_date;";



        String color=null;
        Statement stmt = null;

          stmt = conn.createStatement();
          rs = stmt.executeQuery(query);


        String querycart = "select c.c_num, p.p_num,p.p_name,p.p_price,c.c_quan,c.c_order from product As p, cart AS c where c.p_num=p.p_num AND c.u_id = '" +user_id +"' ;";
        System.out.println("[카트 보기 쿼리] : " + querycart);


        Statement stmtcart = null;
        ResultSet rscart = null;
        stmtcart = conn.createStatement();
        rscart = stmt.executeQuery(querycart);




          while(rs.next()) {

            if(rs.getString("o.o_result").equals("배송완료")){
              color= "red";
            }
            else if(rs.getString("o.o_result").equals("배송중")){
              color= "blue";
            }
            else{
              color="black";
            }


      %>
      <tr onMouseover="this.style.background='#46D2D2';" onmouseout="this.style.background='white';">
        <td><input type="checkbox" name="checknum" value="<%=rs.getInt("o.o_num") %>" /></td>
        <td><%=rs.getInt("o.o_num") %></td>
        <td style="text-align:left;"><%=rs.getString("u.u_name") %></td>
        <td><%=rs.getString("o.u_id") %></td>
        <td><%=rs.getString("p.p_num") %> : <%=rs.getString("p.p_name") %> </td>
        <td><%=rs.getString("o.o_quan") %></td>
        <td style="color:<%=color %>"><%=rs.getString("o.o_result") %></td>
        <td><%=rs.getString("o.o_total") %></td>

        <td><%=rs.getString("u.zip_code") %></td>
        <td><%=rs.getString("u.u_address") %></td>
        <td><%=rs.getString("u.u_phone") %></td>
        <td><%=rs.getString("o.o_date") %></td>

      </tr>

      <%
          }


      %>

      </tbody>
    </table>

    <div>
      <form name="selectForm" class="CartForm" action="deliveryOrder.jsp" method="post">
<%--        <table class="orderlistTable">--%>
          <table >

          <tr>
            <th>상품</th>
            <th>가격</th>
            <th>수량</th>
            <th>소계</th>
            <th>선택</th>
            <th>비고</th>
          </tr>

          <tbody>
          <%
            while(rscart.next()){
          %>
          <tr onMouseover="this.style.background='#46D2D2';" onmouseout="this.style.background='white';">
            <td><input type="checkbox" name="checkcart" value="<%=rscart.getInt("c.c_num") %>" /></td>


            <td><%=rscart.getString("p.p_name") %></td>
            <td><%=rscart.getInt("p.p_price") %></td>
            <td><%=rscart.getInt("c.c_quan") %></td>
            <td><%=rscart.getInt("c.c_quan") %></td>
            <td>example</td>
            <td>example</td>


          </tr>
          <%
            }
          %>
          </tbody>
        </table>
      </form>


    </div>

    <div class="select-list">
      <div>
        선택 항목의 배송 상태를
        <select name="status">
          <option value="주문확인중">주문확인중</option>
          <option value="배송전">배송전</option>
          <option value="배송중">배송중</option>
          <option value="배송완료">배송완료</option>
        </select> (으)로 변경하기
      </div>
      <div class="buttons">
        <input type="submit" name="save_btn" value="저장" />
        <input type="button" class="btn_cancel" value="취소" onclick="document.location.href='showOrders.jsp" />
      </div>
    </div>
  </form>
</div>

<div>

</div>
</body>
</html>