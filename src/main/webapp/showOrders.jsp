<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="UTF-8">
<head>
<link rel="stylesheet" type="text/css" href="css/show.css" />
<script src="http://code.jquery.com/jquery-1.11.3.js"></script>

<title>주문 목록</title>

</head>

 <%
/* 
	String userid = (String)session.getAttribute("userid");
	if(userid == null) response.sendRedirect("index.jsp"); */

	request.setCharacterEncoding("utf-8");
%>	

<body>
<div class="tableDiv">

	<jsp:include page="header.jsp"/>
		<jsp:include page="managerMenu.jsp"/>
		
		<form name="selectForm" class="seletForm" action="deliveryStatus.jsp" method="post">
	<table class="orderlistTable">
  		<tr>
  		<th></th>
   			<th>주문 번호</th>
   			<th>주문자명</th>
   			<th>회원 아이디</th>
   			
   			
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
 	String url = "jdbc:mariadb://127.0.0.1:3306/webdev";
	String uid = "webmaster";
	String pwd = "1234";
	String query = "SELECT o.o_num,o.o_quan,o.o_result,o.o_date,o.u_id,o.o_total, p.p_num,p.p_name,u.u_address,u_name,u.zip_code, u.u_phone "+
			"FROM order_list AS o,product AS p, user AS u "+
			"WHERE o.p_num=p.p_num "+
			"AND u.u_id = o.u_id "+
			"order BY o_date;";
	
	Connection con = null;
    Statement stmt = null;
    ResultSet rs = null;
    
    String color=null;
	        
	try{
	    
		Class.forName("org.mariadb.jdbc.Driver");
		con = DriverManager.getConnection(url, uid, pwd);

		stmt = con.createStatement();
		rs = stmt.executeQuery(query);
		
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
	}catch(Exception e)	 {
		e.printStackTrace();
	}
	
	stmt.close();
	rs.close();
	con.close();
	
%>
		
	</tbody>
	</table>

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
</body>
</html>