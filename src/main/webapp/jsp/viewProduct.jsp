<%@page import="java.sql.*"%>
<%@ page contentType="text/html; charset=utf-8"%>

<html>
<head>
  <script src="http://code.jquery.com/jquery-1.11.3.js"></script>
  <script>
  </script>

  <link rel="stylesheet"	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">

  <title>상품 상세</title>

  <style>
    body { font-family: "나눔고딕", "맑은고딕" }
  </style>

</head>

<style>
  a:link { color: black; }
  a:visited { color: black; }
  a:hover { color: red; }
  a:active { color: red; }
  #hypertext { text-decoration-line: none; cursor: hand; }
  .center{ display:flex;
    align-items: center;
  }
  .image-display{
    width: 30%;
    height: 30%;
    padding:0px 50px 50px 50px;
  }
  input, textarea{
    padding: 5px;
    margin:10px;
  }
  .list{display: flex;
    align-items: center;}
  #mcontent{
    width: 850px;
    height: 300px;
    padding: 10px;
    box-sizing: border-box;
    border: solid #adadad;
    font-size: 16px;
    resize: both;
  }
  .btn_write  {
    position:relative;
    left:20%;
    transform: translateX(-50%);
    margin-top: 20px;
    margin-bottom: 10px;
    width:40%;
    height:40px;
    background: red;
    background-position: left;
    background-size: 200%;
    color:white;
    font-weight: bold;
    border:none;
    cursor:pointer;
    transition: 0.4s;
    display:inline;
  }
  .btn_cancel{
    position:relative;
    left:20%;
    transform: translateX(-50%);
    margin-top: 20px;
    margin-bottom: 10px;
    width:40%;
    height:40px;
    background: pink;
    background-position: left;
    background-size: 200%;
    color:white;
    font-weight: bold;
    border:none;
    cursor:pointer;
    transition: 0.4s;
    display:inline;
  }
</style>

</head>
<body>

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
  
  String test= null;
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
<jsp:include page="menu.jsp" />
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
<%--       <p><b>상품 코드 : </b><span class="badge badge-danger"> p<%=p_num %></span> --%>
      <p><b>타입</b> : <%=p_type %>
      <p><b>설명</b> : <%=p_desc%>
      <p><b>용량</b> : <%=p_spec%>
      <h4><%=p_price%></h4>

      <form name="addForm" action="addCartProcess.jsp" method="post">
      <a href="#" class="btn btn-info" onclick="addToCart()">
        <input type="hidden" name="btn_addCart" value="<%=p_num %>">
        상품 주문 &raquo;</a>
      <a href="cart.jsp?p_num=<%=p_num%>" class="btn btn-warning"> 장바구니 &raquo;</a>
      <a href="./products.jsp" class="btn btn-secondary"> 상품 목록 &raquo;</a>
    </form>

    </div>
  </div>
  <hr>
</div>


<jsp:include page="footer.jsp" />
</body>
</html>