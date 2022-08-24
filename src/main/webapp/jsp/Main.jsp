<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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

<!--badges-->
<jsp:include page="badges.jsp" />

<!--VISUAL-->
<jsp:include page="visual.jsp" />


<!--NOTICE-->
<jsp:include page="notice.jsp" />



<!--REWARDS-->
<section class="rewards">
  <div class="bg-left"></div>
  <div class="bg-right"></div>
  <div class="inner">

    <div class="btn-group">
      <div class="btn btn--reverse sign-up">회원가입</div>
      <div class="btn sign-in">로그인</div>
      <div class="btn gift">e-Gift 선물하기</div>
    </div>

  </div>
</section>


<!--YOUTUBE VIDEO-->
<section class="youtube">
  <div class="youtube__area">
    <div id="player"></div>
  </div>
  <div class="youtube__cover"></div>
  <div class="inner">

    <img src="../resources/images/floating1.png" alt="Icon" class="floating floating1" />
    <img src="../resources/images/floating2.png" alt="Icon" class="floating floating2" />

  </div>
</section>


<!--SEASON PRODUCT-->
<section class="season-product scroll-spy">
  <div class="inner">

    <img src="../resources/images/floating3.png" alt="Icon" class="floating floating3" />
    <img src="../resources/images/season_product_image.png" alt="아이스 커피 블렌드" class="product back-to-position to-right delay-0" />

    <div class="text-group">
      <img src="../resources/images/season_product_text1.png" alt="상쾌하게 여름을 반겨줄 시즌 원두 아이스 커피 블렌드" class="title back-to-position to-left delay-1" />
      <img src="../resources/images/season_product_text2.png" alt="아프리카와 라틴 아메리카 커피의 브렌드로 시트러스함과 은은한 캐러멜 향을 동시에 느낄 수 있으며, 차갑게 즐길 때 풍미가 더욱 깊어지는 원두입니다." class="description back-to-position to-left delay-2" />
      <div class="more back-to-position to-left delay-3">
        <a href="javascript:void(0)" class="btn">자세히 보기</a>
      </div>
    </div>

  </div>
</section>


<!--RESERVE COFFEE-->
<section class="reserve-coffee scroll-spy">
  <div class="inner">

    <img src="../resources/images/reserve_logo.png" alt="" class="reserve-logo back-to-position to-right delay-0" />
    <div class="text-group">
      <img src="../resources/images/reserve_text.png" alt="" class="description back-to-position to-right delay-1" />
      <div class="more back-to-position to-right delay-2">
        <a href="javascript:void(0)" class="btn btn--gold">자세히 보기</a>
      </div>
    </div>
    <img src="../resources/images/reserve_image.png" alt="" class="product back-to-position to-left delay-3" />

  </div>
</section>


<!--PICK YOUR FAVORITE-->
<section class="pick-your-favorite scroll-spy">
  <div class="inner">

    <div class="text-group">
      <img src="../resources/images/favorite_text1.png" alt="PICK YOUR FAVORITE" class="title back-to-position to-right delay-0" />
      <img src="../resources/images/favorite_text2.png" alt="다양한 메뉴를 스타벅스에서 즐겨보세요." class="description back-to-position to-right delay-1" />
      <div class="more back-to-position to-right delay-2">
        <a href="javascript:void(0)" class="btn btn--white">자세히 보기</a>
      </div>
    </div>

  </div>
</section>


<!--RESERVE STORE-->
<section class="reserve-store">
  <div class="inner">

    <div class="medal">
      <div class="front">
        <img src="../resources/images/reserve_store_medal_front.png" alt="R">
      </div>
      <div class="back">
        <img src="../resources/images/reserve_store_medal_back.png" alt="스타벅스 리저브 매장">
        <a href="javascript:void(0)" class="btn">
          매장안내
        </a>
      </div>
    </div>

  </div>
</section>


<!--FIND THE STORE-->
<section class="find-store scroll-spy">
  <div class="inner">

    <img src="../resources/images/find_store_texture1.png" alt="" class="texture1" />
    <img src="../resources/images/find_store_texture2.png" alt="" class="texture2" />
    <img src="../resources/images/find_store_picture1.jpg" alt="" class="picture picture1 back-to-position to-right delay-0" />
    <img src="../resources/images/find_store_picture2.jpg" alt="" class="picture picture2 back-to-position to-right delay-1" />
    <div class="text-group">
      <img src="../resources/images/find_store_text1.png" alt="스타벅스를 가까이에서 경험해보세요." class="title back-to-position to-left delay-0" />
      <img src="../resources/images/find_store_text2.png" alt="고객님과 가장 가까이 있는 매장을 찾아보세요!" class="description back-to-position to-left delay-1" />
      <div class="more back-to-position to-left delay-2">
        <a href="javascript:void(0)" class="btn">매장찾기</a>
      </div>
    </div>

  </div>
</section>


<!--AWARDS-->
<section class="awards">
  <div class="inner">

    <div class="swiper-container">
      <div class="swiper-wrapper">
        <div class="swiper-slide">
          <img src="../resources/images/awards_slide1.jpg" alt="대통령 표창" />
        </div>
        <div class="swiper-slide">
          <img src="../resources/images/awards_slide2.jpg" alt="대통령 표창 (3년 연속)" />
        </div>
        <div class="swiper-slide">
          <img src="../resources/images/awards_slide3.jpg" alt="우수사업주 인증" />
        </div>
        <div class="swiper-slide">
          <img src="../resources/images/awards_slide4.jpg" alt="경연대회 대상" />
        </div>
        <div class="swiper-slide">
          <img src="../resources/images/awards_slide5.jpg" alt="대한상의회장상" />
        </div>
        <div class="swiper-slide">
          <img src="../resources/images/awards_slide6.jpg" alt="기업사회공헌 활동 부문" />
        </div>
        <div class="swiper-slide">
          <img src="../resources/images/awards_slide7.jpg" alt="KSI 1위 (5년 연속)" />
        </div>
        <div class="swiper-slide">
          <img src="../resources/images/awards_slide8.jpg" alt="KS-SQI 1위 (5년 연속)" />
        </div>
        <div class="swiper-slide">
          <img src="../resources/images/awards_slide9.jpg" alt="커피전문점 부문 (4년 연속)" />
        </div>
        <div class="swiper-slide">
          <img src="../resources/images/awards_slide10.jpg" alt="동반성장 부문 (4년 연속)" />
        </div>
      </div>
    </div>

    <div class="swiper-prev">
      <span class="material-icons">arrow_back</span>
    </div>
    <div class="swiper-next">
      <span class="material-icons">arrow_forward</span>
    </div>

  </div>
</section>


<!--FOOTER-->
<footer>
  <div class="inner">

    <ul class="menu">
      <li><a href="javascript:void(0)" class="green">개인정보처리방침</a></li>
      <li><a href="javascript:void(0)">영상정보처리기기 운영관리 방침</a></li>
      <li><a href="javascript:void(0)">홈페이지 이용약관</a></li>
      <li><a href="javascript:void(0)">위치정보 이용약관</a></li>
      <li><a href="javascript:void(0)">스타벅스 카드 이용약관</a></li>
      <li><a href="javascript:void(0)">윤리경영 핫라인</a></li>
    </ul>

    <div class="btn-group">
      <a href="javascript:void(0)" class="btn btn--white">찾아오시는 길</a>
      <a href="javascript:void(0)" class="btn btn--white">신규입점제의</a>
      <a href="javascript:void(0)" class="btn btn--white">사이트 맵</a>
    </div>

    <div class="info">
      <span>사업자등록번호 201-81-21515</span>
      <span>(주)스타벅스 코리아 대표이사 이석구</span>
      <span>TEL : 02) 3015-1100 / FAX : 02) 3015-1106</span>
      <span>개인정보 책임자 : 강기원</span>
    </div>

    <p class="copyright">
      &copy; <span class="this-year"></span> Starbucks Coffee Company. All Rights Reserved.
    </p>
    <img src="../resources/images/starbucks_logo_only_text.png" alt="STAR BUCKS" class="logo" />

  </div>
</footer>


<!--TO TOP BUTTON-->
<div id="to-top">
  <div class="material-icons">arrow_upward</div>
</div>

</body>
</html>