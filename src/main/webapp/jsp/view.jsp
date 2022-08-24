<%--
  Created by IntelliJ IDEA.
  User: iot29
  Date: 2022-08-19
  Time: 오후 7:25
  To change this template use File | Settings | File Templates.
--%>
<%--
  Created by IntelliJ IDEA.
  User: iot29
  Date: 2022-08-19
  Time: 오후 4:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
</head>
<body>

<%
    //mariaDB 준비
    Class.forName("org.mariadb.jdbc.Driver");
    System.out.println("mariadb");

    // mariaDB 연결
    Connection conn = DriverManager.getConnection("jdbc:mysql://192.168.1.216:3306/shop_db", "shopManager","1234");
    System.out.println(conn + "<-- conn");

    // 쿼리
    PreparedStatement stmt = conn.prepareStatement("select * from product");
    System.out.println(stmt + "<-- stmt");

    // 쿼리 실행
    ResultSet rs = stmt.executeQuery();

%>
<table border="1">
    <tr>
        <td>아이디</td>
        <td>비밀번호</td>
        <td>이름</td>
    </tr>

    <%
        while(rs.next()){
    %>
    <tr>
        <td><%=rs.getString("p_num") %></td>
        <td><%=rs.getString("p_name") %></td>
        <td><%=rs.getString("p_price") %></td>
    </tr>

    <%
        }
    %>
</table>

</body>
</html>

<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*"%> 
<%
    conn = null;
    PreparedStatement pstmt = null;
    rs = null;

    try {
        String url = "jdbc:mysql://192.168.1.216:3306/shop_db";
        String user = "shopManager";
        String password = "1234";

        Class.forName("com.mysql.jdbc.Driver");
        conn = DriverManager.getConnection(url, user, password);

    } catch (SQLException ex) {
        out.println("데이터베이스 연결이 실패되었습니다.<br>");
        out.println("SQLException: " + ex.getMessage());
    }

%>