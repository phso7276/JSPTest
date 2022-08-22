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
<title>Insert title here</title>
</head>
<body>

<%
 
	request.setCharacterEncoding("utf-8");
	int p_num = Integer.parseInt(request.getParameter("num"));
	int p_quan = Integer.parseInt(request.getParameter("quan"));
	char p_type = request.getParameter("type").charAt(0);
	String p_name = request.getParameter("name");
	String p_price = request.getParameter("price");
	String p_desc = request.getParameter("desc");
	String p_spec = request.getParameter("spec");

	String url = "jdbc:mariadb://127.0.0.1:3306/webdev";
	String user = "webmaster";
	String pwd = "1234";

	Connection con = null;
	Statement stmt = null;

	try{
		
		Class.forName("org.mariadb.jdbc.Driver");
		con = DriverManager.getConnection(url, user, pwd);
	
		String query = "update product set p_name = '" + p_name + "',"
				      + "p_type = '" + p_type + "',"
					  + "p_price = '" + p_price + "',"
					  + "p_desc = '" + p_desc + "',"
					  + "p_quan = '" + p_quan + "',"
					  + "p_spec = '" + p_spec + "' where p_num = " + p_num;
		
		System.out.println("[게시판 수정 쿼리 ] : " + query);
	
		stmt = con.createStatement();
		stmt.executeUpdate(query);
		
	
		
/* 		response.sendRedirect("displayProducts1.jsp?p_num=" + p_num); */
	
	stmt.close();
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