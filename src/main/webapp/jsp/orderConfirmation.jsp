<%--
  Created by IntelliJ IDEA.
  User: iot29
  Date: 2022-08-25
  Time: 오후 3:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.net.URLDecoder"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core"%>
<%
    String user_id = (String) session.getAttribute("userid");
    System.out.println("주문 창 아이디: "+user_id);
    String name = (String) session.getAttribute("name");
    String zipCode = (String) session.getAttribute("zipCode");
    String addressName = (String) session.getAttribute("addressName");
    String phone = (String) session.getAttribute("phone");
    System.out.println("세션 저장되었나 확인 좀 우편번호 : " + zipCode + ", 이름 : " + name );
    
    
    //checknum 세션 주문할 리스트 장바구니에서 받아오기
    ArrayList<String> list = (ArrayList<String>)session.getAttribute("checkList");
for(int i=0;i<list.size(); i++) {
    System.out.println(list.get(i) + "<br>");
}
   
%>
<%@ include file="dbconn.jsp"%>
<%
    int price = 0 ;
    int quan = 0;
    int total = 0;
    request.setCharacterEncoding("utf-8");
    String query = "select p.p_image,c.c_num, p.p_num,p.p_name,p.p_price,c.c_quan,c.c_order from product As p, cart AS c where c.c_order='1' AND c.p_num=p.p_num AND c.u_id = '" +user_id +"' ;";
    System.out.println("[상세 보기 쿼리] : " + query);
    Statement stmt = null;
    stmt = conn.createStatement();
    rs = stmt.executeQuery(query);
%>

<html lang="ko">
<head>
<meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title> 주문 확인</title>
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

    <style>
    .orderInfo { border:5px solid #eee; padding:10px 20px; margin:20px 20px;}
    .orderInfo span { font-size:10px; font-weight:bold; display:inline-block; width:300px; }
    .orderView li { margin-bottom:20px; padding-bottom:20px; border-bottom:1px solid #999; }
    .orderView li::after { content:""; display:block; clear:both; }
    .thumb { float:left; width:100px;margin-bottom:20px; }
    .thumb img { width:100px; height:100px; }
    .gdsInfo { float:right; width:calc(100% - 220px); line-height:2; }
    .gdsInfo span { font-size:10px; font-weight:bold; display:inline-block; width:calc(100% ); margin-right:10px; }
    .button {
    }
    .button .btnleft{
        float:left;
    }
    .button .btnright{
        float:right;
    }
    .c_bold{
        font-size:30px;
        font-weight:bold;
    }
    </style>
</head>
<body>
<jsp:include page="header.jsp" />

<%
    int p_num =0;
    request.setCharacterEncoding("utf-8");
    String query1 = "select c.c_num, p.p_num,p.p_name,p.p_image,p.p_price,c.c_quan,c.c_order from product As p, cart AS c where c.c_order='1' AND c.p_num=p.p_num AND c.u_id = '" +user_id +"' ;";
    System.out.println("[상세 보기 쿼리] : " + query1);
    stmt = conn.createStatement();
    rs = stmt.executeQuery(query1);
%>
<section class="signin">
    <h1>로그인</h1>
    <div class="signin__card">
        <h2>
            <strong > 주문 화면 </strong>
        </h2>

        <div class="container col-8 alert alert-info">
            <div class="row justify-content-between">
                <div class="col-4" align="left">
                    우편번호 : <% out.println(zipCode); %>  <br>
                    배송 주소 : <% out.println(addressName); %> <br>
                    주문자 : <% out.println(name); %><br>
                    전화번호 : <% out.println(phone); %> <br>
                </div>
            </div>
            <div>
                <table class="table table-hover">
                    <%
                        while(rs.next()){
                            price = rs.getInt("p.p_price");
                            quan = rs.getInt("c.c_quan");
                            total += (price * quan);
                            System.out.println("가격 " + price + " ,수량" + quan + "총액 = " + total);
                    %>

                    <ul class="orderView">
                        <li>

                            <div class="thumb">
                                <img src="<%=rs.getString("p.p_image") %>" />
                            </div>

                            <div class="gdsInfo">
                                <span>상품명 :  <%=rs.getString("p.p_name") %></span><br>
                                <span>개당 가격 : <%=rs.getString("p.p_price") %> 원</span><br>
                                <span>구입 수량 : <%=rs.getString("c.c_quan")%> 개</span><br>
                                <br>
                            </div>

                        </li>

                    </ul>
                    <%
                        }
                    %>
                    <tr>
                        <td></td>
                        <td></td>
                        <td><span>
                            <strong class="c_bold ">총액: <% out.println(total); %></strong>
                        </span></td>
                    </tr>
                </table>

                <%--        <a href=" ./shippingInfo.jsp?cartId=<%=shipping_cartId %>"class="btn btn-secondary" role="button">이전</a>--%>

                <div class="button">
                <a href=" ./address.jsp" class="btn btnleft" role="button">이전</a>
                <a href=" ./orderProcess.jsp" class="btn btnright" role="button">주문</a>
                </div>
            </div>
        </div>
    </div>
</section>

<jsp:include page="footer.jsp" />
</body>
</html>