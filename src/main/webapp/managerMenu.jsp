<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
    <style>
    
		.top_menu{
		
		display:flex;
		align-items: center;
		width:100%;
		padding-top:10px;
		padding-bottom:10px;

		background-color:black;
		color:white;
		}
		
		.manage_menu{
			text-align: center;
			padding: 0 40px;
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
		<a class="manage_menu" href="showProducts.jsp">상품 목록(추가/삭제)</a>
		<a class="manage_menu" href="addProduct.jsp">상품 추가</a>
		<a class="manage_menu" href="showUsers.jsp">회원 목록</a>
		<a class="manage_menu" href="showOrders.jsp">주문 목록</a>
		<a class="manage_menu" href="jsp/welcome.jsp">홈페이지</a>
	</div>
	</body>