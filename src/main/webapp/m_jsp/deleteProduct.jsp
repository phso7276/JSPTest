<%@page import="java.io.File"%>
<%@page import="java.util.*"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="java.time.LocalDateTime"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>delete product</title>
</head>
<script type="script/javascript">
function alertForm(){
	if (confirm("정말 삭제하시겠습니까?")) {
	    alert("삭제 취소");
	    document.history.back();
	}
	else {
		 alert("삭제");	}
	
}
</script>
<body>
<%
 
out.println("<script>alert('저장되셨습니다');</script>");
	request.setCharacterEncoding("utf-8");

String p_num = request.getParameter("btn_delete");
System.out.println(p_num);

	/* int p_num = Integer.parseInt(request.getParameter("num")); */
/* 	int p_quan = Integer.parseInt(request.getParameter("quan"));
	char p_type = request.getParameter("type").charAt(0);
	String p_name = request.getParameter("name");
	String p_price = request.getParameter("price");
	String p_desc = request.getParameter("desc");
	String p_spec = request.getParameter("spec"); */

	String url = "jdbc:mysql://10.10.14.30:3306/webdev";
    String user = "webmaster";
    String password = "1234";

	Connection con = null;
	Statement stmt = null;
	Statement stmt2 = null;
	Statement stmt3 = null;
	Statement stmt4 = null;
	Statement stmt5 = null;
	int cnt = 0;
	
	System.out.println(p_num);

	try{
		
		Class.forName("org.mariadb.jdbc.Driver");
		con = DriverManager.getConnection(url, user,password);
	
		String query = "delete from product where p_num = " + p_num +";";
		String query2= "SELECT COUNT(*) as cnt FROM product;";
		String query4="SET @count=0;";
		String query5="UPDATE product SET product.p_num=@count:=@count+1;";
			
		
		
		System.out.println("[삭제 쿼리 ] : " + query);
	
		stmt = con.createStatement();
		stmt.executeUpdate(query);
		
		stmt2= con.createStatement();
		cnt = stmt2.executeUpdate(query2);
		
		stmt4 = con.createStatement();
		stmt4.executeUpdate(query4);
		
		stmt5 =con.createStatement();
		stmt5.executeUpdate(query5); 
		 
		String query3="ALTER TABLE product AUTO_INCREMENT =" +cnt;
		
		stmt3=con.createStatement();
		stmt3.executeUpdate(query3);
		
	
		
	
		
/* 		response.sendRedirect("displayProducts1.jsp?p_num=" + p_num); */
	
	stmt.close();
	stmt2.close();
	stmt3.close();
 	stmt4.close();
	stmt5.close(); 
	con.close();
	
	response.sendRedirect("showProducts.jsp?p_num=" + p_num);

	}catch(Exception e){
		e.printStackTrace();
		stmt.close();
		con.close();
	}

%>

</body>
</html>