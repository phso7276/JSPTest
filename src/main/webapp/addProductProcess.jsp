<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>      
<%@page import="java.sql.*"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDateTime"%>
<%@page import="java.util.Locale"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>상품 등록 체크</title>
</head>
<body>

<fmt:setLocale value="en" scope="page"/>

<%
	request.setCharacterEncoding("utf-8");
	
	//로그인 창에서 파리미터로 받은 값
	String p_name = request.getParameter("name");
	String p_type = request.getParameter("type");
	String p_price = request.getParameter("price");
	String p_desc = request.getParameter("desc");
	String p_spec = request.getParameter("spec");
	String p_image = request.getParameter("image_src");
	String p_quan= request.getParameter("quan");

	
	//DB에서 사용자 정보(아이디랑 패스워드 가져 오기)
	String url = "jdbc:mariadb://127.0.0.1:3306/webdev";
	String user = "webmaster";
	String pwd = "1234";

	Connection con = null;
	
	Statement stmt1 = null;
	Statement stmt2 = null;


	int quan = Integer.parseInt(p_quan);

	

	String lastlogindate = LocalDateTime.now().toString();
	

String sql1 = "insert into product (p_name, p_type,p_price, p_desc,p_spec,p_image,p_quan) values "
    				+ "('" + p_name + "', '" + p_type + "', '" + p_price + "', '" 
    				+ p_desc + "', '" + p_spec + "', '" + p_image + "',"+ quan + ")";

/* String sql2="SET @count=0;";
String sql3 */
	//마지막 접속 시간 등록
/* 	String query3 = "update tbl_test set lastlogindate = '" + lastlogindate 
			      + "' where userid = '" + userid + "'";
	String query4 = "insert into tbl_test_log (userid,lastlogindate) " 
			      + "values ('" + userid + "','" + lastlogindate + "')";
	 */
	try{
		
		Class.forName("org.mariadb.jdbc.Driver");
		con = DriverManager.getConnection(url, user, pwd);
				
		stmt1 = con.createStatement();
/* 		stmt2 = con.createStatement(); */
		stmt1.executeUpdate(sql1);
		
		con.commit();
		
/* 		stmt2.executeUpdate(sql2); */
		
   		if(stmt1 != null) stmt1.close(); /* stmt2.close(); */
		if(con != null) con.close(); 


 	
}catch(Exception e){
		e.printStackTrace();
	}

%>

</body>
</html>