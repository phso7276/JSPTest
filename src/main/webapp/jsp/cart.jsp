<%--
  Created by IntelliJ IDEA.
  User: iot29
  Date: 2022-08-19
  Time: 오후 6:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core"%> --%>
 --%>
 --%>
<%

String display= "none";
    String user_id = (String) session.getAttribute("userid");
    System.out.println("장바구니 창 아이디: "+user_id);
%>
<html>
<head>
<script src="http://code.jquery.com/jquery-1.11.3.js"></script>
<!--  <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> -->
<script>
function orderCheck(){
	alert('ordercheck');
	if(($("#check_cnum:checked").length)==0){
		
	    System.out.println('체크 안 된 상태');
	    alert('선택한 물건이 없습니다');
		location.href='cart.jsp';
	   
	}else{
		 console.log('체크된 상태');
		    document.selectCartForm.action = 'address.jsp';
			document.selectCartForm.submit(); 

	}

	
}

function cancelCheck(){
	 alert('선택한 물건이 없습니다');
		location.href='cart.jsp';
	
/* 	document.selectCartForm.action = 'Main.jsp';
	document.selectCartForm.submit(); */
}


</script>
<style type="text/css">
.my_box {
      display: flex;
    }
</style>
<meta charset="utf-8">
  <title>장바구니</title>
</head>

<body>
<%

    String cartId = session.getId();
%>
<jsp:include page="header.jsp" />
<%@ include file="dbconn.jsp"%>
<%
  int p_num =0;
  int sum =0;  


  request.setCharacterEncoding("utf-8");


  String query = "select c.c_num, p.p_num,p.p_name,p.p_price,c.c_quan,c.c_order from product As p, cart AS c where c.p_num=p.p_num AND c.u_id = '" +user_id +"' ;";
  System.out.println("[상세 보기 쿼리] : " + query);


  Statement stmt = null;

  stmt = conn.createStatement();
  rs = stmt.executeQuery(query);


%>
<div >
    <p style="height: 150px">장바구니</p>
</div>
<div class="my_box">
<div>
<jsp:include page="userCart.jsp" />
</div>
<div class="my_right">
  <div class="row">
  
  
   <!--  <table width="100%">
      <tr>
     <td align="left"><a href="removeAllCartProcess.jsp" class="btn btn-danger">삭제하기</a></td>
        <td align="right"><a href="./address.jsp" class="btn btn-success">주문하기</a></td>
      </tr>
    </table> -->
  </div>
  <div style="padding-top: 50px">
  		<form name="selectCartForm" class="selectCartForm">
    <table class="table table-hover">
      <tr>
       <th></th>
        <th>상품</th>
        <th>가격</th>
        <th>수량</th>
        <th>소계</th>

          <th>비고</th>
      </tr>

      <%
        while(rs.next()){
      %>
      <tr>
      	<td><input type="checkbox" name="check_cnum" id="check_cnum" value="<%=rs.getInt("c.c_num") %>" /></td>
        <td><%=rs.getString("p.p_name") %></td>
        <td><%=rs.getInt("p.p_price") %></td>
        <td><%=rs.getInt("c.c_quan") %></td>
        <td><%=rs.getInt("p.p_price") * rs.getInt("c.c_quan") %></td>


          <td><form name="deletecart" action="removeCartProcess.jsp" method="post" class="badge badge-danger">
		     <input type="hidden" name="btn_dcart" value=" <%=rs.getString("c_num") %>">	
            <input type="submit" value="삭제">
        </form></td>
      </tr>
     <%
     	 sum +=rs.getInt("p.p_price") * rs.getInt("c.c_quan");
        }
      %>
      <tr>
        <th></th>
        <th></th>
        <th>총액</th>
        <th>sum</th>
        <th><%=sum %></th>
      </tr>
    </table>
    
    <a href="./Main.jsp" class="btn btn-secondary"> &laquo; 쇼핑 계속하기</a>
 	 <a  class="btn btn-success"><input name="order" type="submit" value="주문하기" onclick="orderCheck()"></a>
	 <a  class="btn btn-success"><input name="delete" type="button" value="삭제하기" onclick="cancelCheck()" ></a>
   </form>

  </div>
  <hr>
</div>
</div>
<jsp:include page="footer.jsp" />
</body>

</html>
