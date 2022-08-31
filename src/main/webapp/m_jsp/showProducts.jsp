<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="UTF-8">
<head>
<link rel="stylesheet" type="text/css" href="../resources/m_css/show.css" />
<link rel="stylesheet" type="text/css" href="../resources/m_css/tooltip.css" />

 <script src="http://code.jquery.com/jquery-1.11.3.js"></script> 
<script type="text/javascript">
 

function goEdit(val){

	 
	  if(confirm("수정하시겠습니까?")){	 

	 
	$('#editForm'+val).attr("action", "editProduct.jsp").submit(); 

	  		}
	  else{
		  return false
	  }


     
/*    document.selectCartForm.action = 'address.jsp';
  document.selectCartForm.submit(); */
}

function goDelete(val){
	
	if(confirm("정말로 삭제하시겠습니까?")){	 
		$('#deleteForm'+val).attr("action", "deleteProduct.jsp").submit(); 
	  		}
	  else{
		  return false
	  }

/*   alert("아이디를 입력하세요");

  document.checkForm.action = 'Main.jsp';
  document.checkForm.submit(); */
}
/*  function goDelete(){
		var form = confirm("삭제하시겠습니까?");
		if(form ==true){
			
			console.log("삭제함");
			 document.deleteForm.action ='deleteProduct.jsp';
		    document.deleteForm.submit();
		}
		else{
			System.out.println("삭제 안 함");
			
		}
    	
 } */
</script>
<title>상품 목록</title>
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
		
<!--   <form name="checkForm" > --> 
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
String url = "jdbc:mysql://10.10.14.30:3306/webdev";
String user = "webmaster";
String password = "1234";
	String query = "SELECT * from product";
	
	Connection con = null;
    Statement stmt = null;
    ResultSet rs = null;
    

        
	try{
	    
		Class.forName("org.mariadb.jdbc.Driver");
		con = DriverManager.getConnection(url, user, password);

		stmt = con.createStatement();
		rs = stmt.executeQuery(query);
		
		while(rs.next()) {
		
			 
%>
		
<tr onMouseover="this.style.background='#46D2D2';" onmouseout="this.style.background='white';">

  					<td class="p_num[]"><%=rs.getInt("p_num") %></td>
  					<td style="text-align:left;"><%=rs.getString("p_name") %></td>
  					<td><%=rs.getString("p_type") %></td>
  					<td><%=rs.getString("p_price") %></td>
  					<td><%=rs.getString("p_desc") %></td> 
  						<td><%=rs.getString("p_spec") %></td>
  						<td><%=rs.getInt("p_quan") %></td>
  					<td><%=rs.getString("p_useyn") %></td> 
  					<td><%=rs.getString("p_regdate") %></td> 
  					<td><span class="tooltip"><%=rs.getString("p_image") %>
  					<span class="tooltip-img">
  						<img class="t-img" src="<%=rs.getString("p_image") %>"/>
  					</span>
  					</span></td> 
  					<td>
  						  <form name="editForm" id="editForm<%=rs.getInt("p_num") %>" method="post">  
  						    <input type="hidden" name="btn_edit" value="<%=rs.getInt("p_num") %>">
  							<input type="submit" name="edit_submit" id="<%=rs.getInt("p_num") %>" class="edit" value="edit" onclick="goEdit(this.id)">
  				 		  </form>  
  						</td>
  					<td>
  					 <form name="deleteForm" id="deleteForm<%=rs.getInt("p_num") %>" method="post">
  					 <input type="hidden"  name="btn_delete" value="<%=rs.getInt("p_num") %>">
  					<input type="submit" name="delete_submit" id="<%=rs.getInt("p_num") %>" value="delete" onclick="goDelete(this.id)"  >
  					</form>
  					</td>
  					
  					
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
 	<!-- </form> -->	 



</div>
</body>
</html>