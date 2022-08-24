<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Product"%>
<%@ page import="dao.ProductRepository"%>
<html>
<head>
  <link rel = "stylesheet" href = "https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
  <%
    String cartId = session.getId();
  %>
  <title>장바구니</title>
  	<script>location.href ="showCarts.jsp";</script>	
</head>
<body>
<jsp:include page="menu.jsp" />
<%@ include file="dbconn.jsp"%>

<div class="jumbotron">
  <div class="container">
    <h1 class="display-3">장바구니</h1>
  </div>
</div>
<div class="container">
  <div class="row">
    <table width="100%">
      <tr>
        <td align="left"><a href="./deleteCart.jsp?cartId=<%=cartId%>" class="btn btn-danger">삭제하기</a></td>
        <td align="right"><a href="./shippingInfo.jsp?cartId=<%= cartId %>" class="btn btn-success">주문하기</a></td>
      </tr>
    </table>
  </div>
  <div style="padding-top: 50px">
    <table class="table table-hover">
      <tr>
        <th>상품</th>
        <th>가격</th>
        <th>수량</th>
        <th>소계</th>
        <th>비고</th>
      </tr>
<%
request.setCharacterEncoding("utf-8");

//로그인 창에서 파리미터로 받은 값
String userid = (String)session.getAttribute("userid");
System.out.println(userid);

//DB에서 사용자 정보(아이디랑 패스워드 가져 오기)



  String num = request.getParameter("p_num");
  System.out.println("[p_num] : " + num);

  String sql = "insert into cart (p_num, u_id,c_quan) values "
			+ "('" + num + "', '" + userid+ "', '" + 1 + "')"; 
  

  try{

				
	  pstmt = conn.prepareStatement(sql);
		pstmt.executeQuery();

		
 		if(pstmt != null) pstmt.close(); 
		
  }catch(Exception e){
		e.printStackTrace();
	}

%>
		

		
		

</body>
</html>