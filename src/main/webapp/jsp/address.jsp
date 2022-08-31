<%--
  Created by IntelliJ IDEA.
  User: iot29
  Date: 2022-08-26
  Time: 오후 12:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="java.util.*"%>
<html>
<head>
    <title>주문하기</title>
</head>
<%@ include file="dbconn.jsp"%>
  <!--Open Graph-->
    <!--http://ogp.me/-->
    <meta property="og:type" content="website" />
    <meta property="og:site_name" content="tamburins" />
    <meta property="og:title" content="tamburins" />
    <meta property="og:description" content="tamburins" />
    <meta property="og:url" content="https://www.tamburins.com/" />

    <!--Twitter Card-->
    <!--https://developer.twitter.com/en/docs/twitter-for-websites/cards/guides/getting-started-->
    <meta property="twitter:card" content="summary" />
    <meta property="twitter:site" content="tamburins" />
    <meta property="twitter:title" content="tamburins" />
    <meta property="twitter:description" content="tamburins" />
    <meta property="twitter:url" content="https://www.tamburins.com/" />

    <!--파비콘-->
    <!--<link rel="shortcut icon" href="favicon.ico" />-->
    <link rel="icon" href="./favicon.png" />
    <!--브라우저 스타일 초기화-->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css" />
    <!--Google Fonts - 나눔고딕-->
    <link rel="preconnect" href="https://fonts.gstatic.com" />
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700&display=swap" rel="stylesheet" />
    <!--Google Material Icons-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons" />

    <link rel="stylesheet" href="../resources/css/common.css" />
    <link rel="stylesheet" href="../resources/css/main.css" />
    <link rel="stylesheet" href="../resources/css/signin.css" />


    <!--GSAP & ScrollToPlugin-->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.5.1/gsap.min.js" integrity="sha512-IQLehpLoVS4fNzl7IfH8Iowfm5+RiMGtHykgZJl9AWMgqx0AmJ6cRWcB+GaGVtIsnC4voMfm8f2vwtY+6oPjpQ==" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.5.1/ScrollToPlugin.min.js" integrity="sha512-nTHzMQK7lwWt8nL4KF6DhwLHluv6dVq/hNnj2PBN0xMl2KaMm1PM02csx57mmToPAodHmPsipoERRNn4pG7f+Q==" crossorigin="anonymous"></script>
    <!--Swiper-->
    <link rel="stylesheet" href="https://unpkg.com/swiper@6.8.4/swiper-bundle.min.css" />
    <script src="https://unpkg.com/swiper@6.8.4/swiper-bundle.min.js"></script>
    <!--ScrollMagic-->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/ScrollMagic/2.0.8/ScrollMagic.min.js"></script>
    <!--Lodash-->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/lodash.js/4.17.20/lodash.min.js" integrity="sha512-90vH1Z83AJY9DmlWa8WkjkV79yfS2n2Oxhsi2dZbIv0nC4E6m5AbH8Nh156kkM7JePmqD6tcZsfad1ueoaovww==" crossorigin="anonymous"></script>

    <script defer src="../resources/js/youtube.js"></script>
    <script defer src="../resources/js/common.js"></script>
    <script defer src="../resources/js/main.js"></script>
</head>
<body>

<!--HEADER-->
<jsp:include page="header.jsp" />

<section class="signin">
    <h1>로그인</h1>
    <div class="signin__card">
        <h2>
            <strong >주문자 정보를 입력해주세요! </strong>
        </h2>

        <div class="container">
            <form action="./cartStatus.jsp" class="form-horizontal" method="post">
                <div class="form-group row">

                    <div class="col-sm-3">
                        <label class="col-sm-2">주문자명 : </label> <input  placeholder="주문자 이름을 입력하세요. " name="name" type="text" class="form-control" />
                    </div>
                </div>

                <div class="form-group row">
                    <div class="col-sm-3">
                        <label class="col-sm-2">우편번호 : </label> <input  placeholder="우편번호를 입력하세요. " name="zipCode" type="text" class="form-control" />
                    </div>
                </div>
                <div class="form-group row">
                    <div class="col-sm-5">
                        <label class="col-sm-2">주소 : </label><input  placeholder="주소를 입력하세요. " name="addressName" type="text" class="form-control" />
                    </div>
                </div>

                <div class="form-group row">
                    <div class="col-sm-5">
                        <label class="col-sm-2">전화번호 :</label> <input  placeholder="-없이 입력하세요 " name="phone" type="text" class="form-control" />
                    </div>
                </div>

                <div class="form-group row">
                        <a href="./cart.jsp" class="btn btn-secondary" role="button"> 이전 </a>
                        <input	type="submit" class="btn" value="등록" />
                </div>
            </form>
        </div>
    </div>
</section>
<%
request.setCharacterEncoding("utf-8");
/* String[] checknum = request.getParameterValues("check_cnum"); */



session.setMaxInactiveInterval(3600*7); //세션 유지 기간 설정

ArrayList<String> list = (ArrayList<String>)session.getAttribute("checkList");
String[] checkNum= request.getParameterValues("check_cnum");



//session.getAttribute("checkList") == null 이든 아니든 상관없이
	list = new ArrayList<String>();
	for(String num: checkNum){
		
		list.add(num);
	}


session.setAttribute("checkList", list);
System.out.println("prdlist:"+list);
%>




<jsp:include page="footer.jsp" />
</body>
</html>