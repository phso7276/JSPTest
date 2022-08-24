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



	int sum =0;


  String num = request.getParameter("p_num");
  System.out.println("[p_num] : " + num);

  
  
  String sql="SELECT  p.p_num,p.p_name,p.p_price,c.c_quan "+
		  "FROM product AS p, cart AS c "+
		  "WHERE c.p_num=p.p_num AND c.u_id = '"+userid +"'";
  
  System.out.println("[상세 보기 쿼리] : " + sql);
  try{
		
	  pstmt = conn.prepareStatement(sql);
      rs = pstmt.executeQuery();

		
 		if(pstmt != null) pstmt.close(); 

	while(rs.next()){
		
%>
   <tr>
        <td><%=rs.getInt("p.p_num") %>:<%=rs.getString("p.p_name") %></td>
        <td><%=rs.getInt("p.p_price") %> 원</td>
        <td><%=rs.getInt("c.c_quan") %></td>
        <td><%=rs.getInt("p.p_price") * rs.getInt("c.c_quan") %></td>
        <td><a href="./removeCart.jsp" class="badge badge-danger">삭제</a></td>
      </tr>

<% 
	sum +=rs.getInt("p.p_price") * rs.getInt("c.c_quan");
		
	}

						
%>			
	
<% 	
}catch(Exception e){
		e.printStackTrace();
	}
%>


   

      <tr>
        <th></th>
        <th></th>
        <th>총액</th>
        <th><%=sum %></th>
        <th></th>
      </tr>
    </table>
    <a href="products1.jsp" class="btn btn-secondary"> &laquo; 쇼핑 계속하기</a>
  </div>
  <hr>
</div>
<jsp:include page="footer.jsp" />
</body>
</html>