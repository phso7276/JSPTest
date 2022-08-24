<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Product"%>
<%@ page import="dao.ProductRepository"%>
<%@ page import="java.sql.*" %>

<html>
<html>
<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">

  <!--Google Material Icons-->
  <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons" />


  <title>Title</title>
</head>


<body>
<jsp:include page="menu.jsp" />


<div class="navbar navbar-dark bg-dark shadow-sm">
  <div class="container">
    <a href="#" class="navbar-brand d-flex align-items-center">
      <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" aria-hidden="true" class="me-2" viewBox="0 0 24 24"><path d="M23 19a2 2 0 0 1-2 2H3a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2h4l2-3h6l2 3h4a2 2 0 0 1 2 2z"/><circle cx="12" cy="13" r="4"/></svg>
      <strong>상세</strong>
    </a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarHeader" aria-controls="navbarHeader" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
  </div>
</div>

<div class="collapse bg-dark" id="navbarHeader">
  <div class="container">
    <div class="row">
      <div class="col-sm-8 col-md-7 py-4">
        <h4 class="text-white">연습용 페이지</h4>
        <p class="text-muted">이 페이지의 뼈대는 부트스트랩5.0의 example album에서 가져왔습니다. 디자인에 관한 자세한 내용은 우측 링크에서 확인하세요</p>
      </div>
      <div class="col-sm-4 offset-md-1 py-4">
        <h4 class="text-white">디자인 관련 참고 링크</h4>
        <ul class="list-unstyled">
          <li><a href="https://getbootstrap.com/" class="text-white">부트스트랩 공식 홈페이지</a></li>
          <li><a href="https://getbootstrap.com/docs/5.0/getting-started/introduction/" class="text-white">부트스트랩 공식 문서</a></li>
          <li><a href="https://getbootstrap.com/docs/5.0/examples/" class="text-white">부트스트랩 각종 예시</a></li>
          <li><a href="https://getbootstrap.com/docs/5.0/examples/cheatsheet/" class="text-white">부트스트랩 치트 시트</a></li>
        </ul>
      </div>
    </div>
  </div>
  <ul class="nav nav-tabs">
    <li class="nav-item">
      <a class="nav-link active" aria-current="page" href="#">Active</a>
    </li>
    <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#" role="button" aria-expanded="false">Dropdown</a>
      <ul class="dropdown-menu">
        <li><a class="dropdown-item" href="#">Action</a></li>
        <li><a class="dropdown-item" href="#">Another action</a></li>
        <li><a class="dropdown-item" href="#">Something else here</a></li>
        <li><hr class="dropdown-divider"></li>
        <li><a class="dropdown-item" href="#">Separated link</a></li>
      </ul>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="#">Link</a>
    </li>
    <li class="nav-item">
      <a class="nav-link disabled">Disabled</a>
    </li>
  </ul>
</div>

<section class="py-5 text-center container">
  <div class="row py-lg-5">
    <div class="col-lg-6 col-md-8 mx-auto">
      <h1 class="fw-light">메인 연습 페이지입니다.</h1>
      <p class="lead text-muted">이 페이지에는 온갖 예제가 들어올 예정입니다. DB불러오기, DB전송하기, 부트스트랩, 제이쿼리 등 연습용 페이지로 활용될 계획이며, 만약에 더 괜찮은 연습 자료가 있다면 수정해서 Push해주세요. 감사합니다.</p>
      <p>
        <a href="#" class="btn btn-primary my-2">버튼을 눌렀을 때 Modal 페이지 띄우는 예제(미구현)</a>
        <a href="index.jsp" class="btn btn-secondary my-2">홈으로 돌아가기</a>
      </p>
    </div>
  </div>
</section>

    <%@ include file="dbconn.jsp"%>
    <%
        String sql = "select * from product where p_type =3";
        pstmt = conn.prepareStatement(sql);
        rs = pstmt.executeQuery();

    %>

  <div class="album py-5 bg-light">
    <div class="container">

      <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">

          <%
            while(rs.next()){
          %>
          <div class="col">
          <div class="card shadow-sm">
              <img src="<%=   rs.getURL("p_image") %>" style="width: 100%" />

            <div class="card-body">
              <p class="card-text">
                <tr>

                  <td><%=rs.getString("p_num") %></td>
                  <td><%=rs.getString("p_name") %></td>
                  <td><%=rs.getString("p_price") %></td>
                </tr>
              </p>
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">

            <form name="editForm" action="viewProduct.jsp" method="post">
                <input type="hidden" name="btn_view" value="<%=rs.getInt("p_num") %>">
                <input type="submit" value="view">
            </form>

                  <button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>
                </div>

                <div class="col-md-4">

             </div>
              </div>
            </div>
          </div>
          </div>
          <%
            }
          %>

          </div>
        </div>
      </div>

<jsp:include page="footer.jsp" />
</body>
</html>
