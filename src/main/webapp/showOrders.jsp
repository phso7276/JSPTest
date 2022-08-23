<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="UTF-8">
<head>
<script src="http://code.jquery.com/jquery-1.11.3.js"></script>
<script>
/* function goEdit(){
	alert("수정(아니오)");
	document.location.href = 'editProduct.jsp';
	document.editForm.submit();

} */



</script>


<title>주문 목록</title>

<style>
body { display:flex;
 flex-direction: column;
  align-items: center;}

td{text-align: center;

padding:0 20px;
}

</style>

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
	<table class="orderlistTable">
  		<tr>
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
    

        
	try{
	    
		Class.forName("org.mariadb.jdbc.Driver");
		con = DriverManager.getConnection(url, uid, pwd);

		stmt = con.createStatement();
		rs = stmt.executeQuery(query);
		
		while(rs.next()) {
		
			 
%>
<tr onMouseover="this.style.background='#46D2D2';" onmouseout="this.style.background='white';">
  					<td><%=rs.getInt("o.o_num") %></td>
  					<td style="text-align:left;"><a id="hypertext" href="#" onMouseover='this.style.textDecoration="underline"'  
  							onmouseout="this.style.textDecoration='none';"><%=rs.getString("u.u_name") %></a></td>
  					<td><%=rs.getString("o.u_id") %></td>
  					<td><%=rs.getString("p.p_num") %> : <%=rs.getString("p.p_name") %> </td>
  					<td><%=rs.getString("o.o_quan") %></td> 
  					<td><%=rs.getString("o.o_result") %></td> 
  					<td><%=rs.getString("o.o_total") %></td> 
  						<td><%=rs.getString("u.zip_code") %></td>
  						<td><%=rs.getString("u.u_address") %></td>
  					<td><%=rs.getString("u.u_phone") %></td>
  					<td><%=rs.getString("o.o_date") %></td> 
  				
  					
  					<%-- <td>
  						<form name="editForm"  action="editProduct.jsp" method="post">
  						    <input type="hidden" name="btn_edit" value="<%=rs.getInt("p_num") %>">
  							<input type="submit" value="edit">
  						</form>
  						</td>
  					<td>
  					<form name="deleteForm" action="deleteProduct.jsp" method="get">
  					 <input type="hidden" id="btn_delete" name="btn_delete" value="<%=rs.getInt("p_num") %>">
  					<input type="submit" class="deleteProduct" value="delete">
  					</form>
  					</td> --%>
  					
  						
 				</tr>
 						
		</tbody>
<% 
		}
	}catch(Exception e)	 {
		e.printStackTrace();
	}
	
	stmt.close();
	rs.close();
	con.close();
	
%>
	

	</table>
	<br>
<br><br>	


</div>
</body>
</html>