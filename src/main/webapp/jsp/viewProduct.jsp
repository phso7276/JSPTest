<%@page import="java.sql.*"%>
<%@ page contentType="text/html; charset=utf-8"%>

<html>
<head>
    <script src="http://code.jquery.com/jquery-1.11.3.js"></script>
    <script>
    </script>

    <title>상품 상세</title>
    <style>

        .container{
            width: 100%;
            display: flex;
            padding-bottom: 10px;
            padding-top: 10px;
            overflow: auto;
            font-weight: bold;
        }


        .jumbotron{
            width: auto;
            display: flex;
            flex-direction: row;
            padding-top: 10px;
            padding-bottom: 10px;
            font-weight: bold;
            font-size: 30px;
            text-indent: 13.5em;
            overflow: auto;
        }


        .col-md-5 {
            width: 50%;
            display: flex;
            float: left;
            padding: 20px;
            overflow: auto;
        }

        .col-md-6{
            width: 40%;
            float: right;
            padding: 20px;
            overflow: auto;
            position:relative;
            font-weight: bold;
            cursor:pointer;
        }






    </style>



</head>
<body>
<div >
    <p style="height: 150px">상세보기</p>
</div>
<%
    String user_id = (String) session.getAttribute("userid");
    if (user_id == null){  %>
<!-- <p>아이디 없음 -->
<%
}else if (user_id != null){  %>

<!-- 아이디 있음 -->

<%
    }
%>

<%@ include file="dbconn.jsp"%>

<%
    int p_num =0;
    String p_name = "";
    String p_type = "";
    String p_price = "";
    String p_desc = "";
    String p_spec = "";
    String p_image = "";
    int p_quan = 0;

    request.setCharacterEncoding("utf-8");
    String num = (String)request.getParameter("btn_view");
    System.out.println(num);


    String query = "select * from product where p_num=" + num+";";
    System.out.println("[상세 보기 쿼리] : " + query);


    Statement stmt = null;

    stmt = conn.createStatement();
    rs = stmt.executeQuery(query);

    while(rs.next()){

        p_num= rs.getInt("p_num");
        p_name = rs.getString("p_name");
        p_type = rs.getString("p_type");
        p_price= rs.getString("p_price");
        p_desc = rs.getString("p_desc");
        p_spec = rs.getString("p_spec");
        p_price= rs.getString("p_price");
        p_image = rs.getString("p_image");
        p_quan= rs.getInt("p_quan");

        System.out.println(p_desc);
    }


%>
<script type="text/javascript">
    function addToCart() {
        if (confirm("상품을 장바구니에 추가하시겠습니까?")) {
            document.addForm.submit();
        } else {
            document.addForm.reset();
        }
    }
</script>
<jsp:include page="header.jsp" />
<div class="jumbotron">
    <div class="container">
        <h1 class="display-3">상품 정보</h1>
    </div>
</div>

<div class="container">
    <div class="row">
        <div class ="col-md-5">
            <img src="<%=p_image%>" alt="이미지"  style="width: 100%"  />
        </div>
        <div class="col-md-6">
            <h3>상품 : <%=p_name %></h3>
            <%--      <p><%=product.getDescription()%>--%>
            <p><b>상품 코드 : </b><span class="badge badge-danger"> p<%=p_num %></span>
            <p><b>타입</b> : <%=p_type %>
            <p><b>설명</b> : <%=p_desc%>
            <p><b>용량</b> : <%=p_spec%>
            <p><b>가격</b> : <%=p_price%> 원

            <p><form name="addForm" action="addCartProcess.jsp" method="post">
            <br><a href="#" class="btn btn-info" onclick="addToCart()">
            <input type="hidden" name="btn_addCart" value="<%=p_num %>">
            상품 추가 &raquo;</a>
            <br><a href="./products.jsp" class="btn btn-secondary"> 상품 목록 &raquo;</a>
        </form>

        </div>
    </div>
</div>


<jsp:include page="footer.jsp" />
</body>
</html>