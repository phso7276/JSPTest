<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="UTF-8">
<head>
<script src="http://code.jquery.com/jquery-1.11.3.js"></script>
<script>


</script>


<title>퍼퓸 튜브 </title>

<style>
body { display:flex;
 flex-direction: column;
  align-items: center;}
  
  .prd-list {
    display: flex;
    flex-wrap: wrap;
    width: calc(100% + 33px);
    margin-left: -16.5px;
}
  
 
  
  .prd-list__item {
    width: calc(25% - 33px);
    margin: 0 16.5px 80px;
}
.img{ width: 350px;
    height: 400px;}

.top_menu{

display:flex;
align-items: center;
width:100%;
padding-top:10px;
padding-bottom:10px;
justify-content:space-between;
background-color:black;
color:white;
}

.manage_menu:visited{
color:white;
text-decoration:none;
}
.manage_menu:link {
  color : white;
  text-decoration: none;
}

@media(max-width:1200px){

  .prd-list {
    display: flex;
    flex-wrap: wrap;
    width: calc(100% + 33px);
    margin-left: -16.5px;
}
  
 
  
  .prd-list__item {
    width: calc(25% - 33px);
    margin: 0 16.5px 80px;
}

}

@media(max-width:414px){

  .prd-list {
    flex-wrap: wrap;
    width: calc(100% + 33px);
    margin-left: -16.5px;
}
  
 
  
  .prd-list__item {
    width: calc(25% - 33px);
    margin: 0 16.5px 80px;
}

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



	<h1>상품 목록 보기</h1>
<div class="prd-list">
 				
<%  
 	String url = "jdbc:mariadb://127.0.0.1:3306/webdev";
	String uid = "webmaster";
	String pwd = "1234";
	String query = "SELECT p_name,p_desc,p_price,p_image from product WHERE p_type = '1' order by p_num;";
	
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

 <div class="prd-list_item">
 <a href="#" >
 <div> <!-- img -->
 	<img class="img" src="<%=rs.getString("p_image") %>" />
 </div>
 <div class="prd-list_info">
 <!-- 이름,가격,설명 -->
 	<div class="prd-list_desc"><%=rs.getString("p_desc") %></div>
 	<div class="prd-list_name"><%=rs.getString("p_name") %></div>
 	<div class="prd-list_price"><%=rs.getInt("p_price") %></div>
 </div>
 </a>
 </div>

<% 
		}
	}catch(Exception e)	 {
		e.printStackTrace();
	}
	
	stmt.close();
	rs.close();
	con.close();
	
%>
	



</div>


</body>
</html>