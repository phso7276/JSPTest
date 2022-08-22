<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
    <style>
    
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
    
    </style>
   
    <body>
    
   
	<div class="top_menu">
		<a class="manage_menu" href="#">처음으로</a>&nbsp;&nbsp;
		<a class="manage_menu" href="addProduct.jsp">상품 추가</a>&nbsp;&nbsp;
		<a class="manage_menu" href="#">사용자관리</a>&nbsp;&nbsp;
		<a class="manage_menu" href="logout.jsp">로그아웃</a>&nbsp;&nbsp; 
	</div>
	</body>