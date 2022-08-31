<%--
  Created by IntelliJ IDEA.
  User: iot29
  Date: 2022-08-19
  Time: 오후 7:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.sql.*"%>
<%
    Connection conn = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;

    try {
        String url = "jdbc:mysql://10.10.14.30:3306/webdev";
        String user = "webmaster";
        String password = "1234";

        Class.forName("org.mariadb.jdbc.Driver");
        conn = DriverManager.getConnection(url, user, password);

    } catch (SQLException ex) {
        out.println("데이터베이스 연결이 실패되었습니다.<br>");
        out.println("SQLException: " + ex.getMessage());
    }

%>