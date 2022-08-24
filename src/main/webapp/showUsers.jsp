<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="UTF-8">
<head>
<link rel="stylesheet" type="text/css" href="css/show.css" />
<script src="http://code.jquery.com/jquery-1.11.3.js"></script>

<title>회원 목록</title>

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
	<table class="userTable">
  		<tr>
   			<th>번호</th>
   			<th>이름</th>
   			<th>회원 아이디</th>
   			<th>비밀번호</th>
   			
   			<th>이메일</th>
   			<th>우편번호</th>
   			<th>주소</th>
   			<th>전화번호</th>
   			<th>가입일</th>
   			<th>가입 / 탈퇴</th>

  		</tr>

 		<tbody>

 				
<%  
 	String url = "jdbc:mariadb://127.0.0.1:3306/webdev";
	String uid = "webmaster";
	String pwd = "1234";
	String query = "SELECT * from user";
	
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
  					<td><%=rs.getRow() %></td>
  					<td style="text-align:left;"><%=rs.getString("u_name") %></td>
  					<td><%=rs.getString("u_id") %></td>
  					<td><%=rs.getString("u_pw") %></td>
  					<td><%=rs.getString("u_email") %></td> 
  						<td><%=rs.getString("zip_code") %></td>
  						<td><%=rs.getString("u_address") %></td>
  					<td><%=rs.getString("u_phone") %></td>
  					<td><%=rs.getString("u_regdate") %></td> 
  					<td><%=rs.getString("u_useyn") %></td> 
  					
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
		


</div>
</body>
</html>