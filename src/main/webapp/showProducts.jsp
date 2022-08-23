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

 function goDelete(){

     if (!confirm("정말 삭제하시겠습니까?")) {
         alert("삭제 취소");
     }
     else {
    	 alert("삭제");	

    	 document.deleteForm.action ='deleteProduct.jsp';
    	document.deleteForm.submit();
     }
	 

 }

</script>


<title>상품 목록</title>

<style>
body { display:flex;
 flex-direction: column;
  align-items: center;}

td{text-align: center;}


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
	<table class="productTable">
  		<tr>
   			<th>품번</th>
   			<th>상품명</th>
   			<th>타입(1:튜브 2: 퍼퓸 3: 손소독제 4: 캔들)</th>
   			<th>가격</th>
   			<th>설명</th>
   			<th>용량</th>
   			<th>수량</th>
   			<th>등록 / 삭제</th>
   			<th>등록일</th>
   			<th>이미지 주소</th>
   			<th>상품 수정</th>
   			<th>상품 삭제</th>
  		</tr>

 		<tbody>

 				
<%  
 	String url = "jdbc:mariadb://127.0.0.1:3306/webdev";
	String uid = "webmaster";
	String pwd = "1234";
	String query = "SELECT * from product";
	
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
  					<td><%=rs.getInt("p_num") %></td>
  					<td style="text-align:left;"><a id="hypertext" href="#" onMouseover='this.style.textDecoration="underline"'  
  							onmouseout="this.style.textDecoration='none';"><%=rs.getString("p_name") %></a></td>
  					<td><%=rs.getString("p_type") %></td>
  					<td><%=rs.getString("p_price") %></td>
  					<td><%=rs.getString("p_desc") %></td> 
  						<td><%=rs.getString("p_spec") %></td>
  						<td><%=rs.getInt("p_quan") %></td>
  					<td><%=rs.getString("p_useyn") %></td> 
  					<td><%=rs.getString("p_regdate") %></td> 
  					<td><%=rs.getString("p_image") %></td> 
  					<td>
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
  					</td>
  					
  						
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