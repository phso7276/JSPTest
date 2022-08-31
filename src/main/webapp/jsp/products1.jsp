<%--
  Created by IntelliJ IDEA.
  User: iot29
  Date: 2022-08-25
  Time: 오후 12:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<html lang="ko">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <title>shop</title>

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
<div >
    <p style="height: 20px">상품 보기</p>
</div>
<!--HEADER-->
<jsp:include page="header.jsp" />
<%@ include file="dbconn.jsp"%>
<%
    String sql = "select * from product where p_type =1 or p_type =2";
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
                    <img src="<%= rs.getURL("p_image") %>" style="width: 375; height:300" />

                    <div class="card-body">
                        <p class="card-text">
                            <tr>
                                <td><%=rs.getString("p_desc") %></td><br>
                                <td><%=rs.getString("p_num") %></td>
                                <td><%=rs.getString("p_name") %></td><br>
                                <td><%=rs.getString("p_price") %>원</td>
                            </tr>
                        </p>
                        <div class="d-flex justify-content-between align-items-center">
                            <div class="btn-group">

                                <form name="editForm" action="viewProduct.jsp" method="post">
                                    <input type="hidden" name="btn_view" value="<%=rs.getInt("p_num") %>">
                                    <input type="submit" value="view">
                                </form>

                            </div>
                            <div class="col-md-4"> </div>
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





<!--FOOTER-->
<jsp:include page="footer.jsp" />

</body>
<style>

    .container {
        display: flex;
        flex-wrap: wrap;
        width: calc(100% + 33px);
        margin-left: 150px;
    }
    .col{
        margin-top: 300px;
        display: block;
        width: calc(25% - 33px);
        text-align: center;
        text-decoration:none;
        color: black;
        float:left;
        margin-left:50px;
        margin-right: 50px;
        margin-bottom: 100px;
    }

    .col-md-4{
        clear: both;
    }

</style>
</html>

