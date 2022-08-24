<%@ page contentType="text/html; charset=utf-8" %>

<head>
  <!-- Required meta tags -->
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

  <!--Google Material Icons-->
  <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons" />

</head>

<nav class = "navbar navbar-expand navbar-dark bg-dark">
	<div class="container">
		<div class = "navbarheader">
			<a class = "navbar-brand" href="./welcome.jsp">HOME</a>
		</div>
		<div>
			<ul class="navbar-nav mr-auto">
				<li class="nav-item"><a class="nav-link" href="showCarts.jsp"> 장바구니 </a></li>
			</ul>
		</div>
	</div>
</nav>
<%
String log = "로그인";
String link = "login.jsp";
String hidden = "none";
String managerid = (String)session.getAttribute("managerid");
String userid = (String)session.getAttribute("userid");

if(managerid !=null ||userid !=null) {
	log = "로그아웃";
	link = "logout.jsp";
	
	if(managerid != null) {
		hidden ="active";
	}
	} 
%>
<div class="container">
  <header class="blog-header py-3">
    <div class="row flex-nowrap justify-content-between align-items-center">
      <div class="col-4 pt-1">
        <a class="link-secondary" href="#">Subscribe</a>
      </div>
      <div class="col-4 text-center">
        <a class="blog-header-logo text-dark" href="#">
          Shop Project
        </a>
      </div>
      <div class="col-4 d-flex justify-content-end align-items-center">
        <a class="link-secondary" href="#" aria-label="Search">
          <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="mx-3" role="img" viewBox="0 0 24 24"><title>Search</title><circle cx="10.5" cy="10.5" r="7.5"></circle><path d="M21 21l-5.2-5.2"></path>
            <title>Search</title>
            <circle cx="10.5" cy="10.5" r="7.5"></circle>
            <path d="M21 21l-5.2-5.2"></path>
          </svg>
        </a>
        <a class="btn btn-sm btn-outline-secondary" href="#">회원가입</a>
      </div>
    </div>

    <div class="nav-scroller py-1 mb-2">
      <div class="nav d-flex justify-content-between">
        <a class="p-2 link-secondary" href="products1.jsp">튜브 핸드</a>
        <a class="p-2 link-secondary" href="products2.jsp">퍼퓸 핸드</a>
        <a class="p-2 link-secondary" href="products3.jsp">손소독제</a>
         <a class="p-2 link-secondary" href="products4.jsp">캔들</a>
        <a class="p-2 link-secondary" href="../<%=link%>"><%=log %></a>
      </div>
    </div>

  </header>
</div>