<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

</body>
</html>
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
<header>
  <div class="inner">

    <a href="/" class="logo">
      <svg class="logo-svg logo-svg--black" xmlns="http://www.w3.org/2000/svg" width="197.655" height="33.262" viewBox="0 0 197.655 33.262">
        <g>
          <path d="M218.083 145.056c3.918 0 7.227-2.961 7.227-6.356 0-2.395-1.567-4.266-5.05-5.79-2-.871-2.7-1.263-3.744-1.785a3.686 3.686 0 0 1-2.133-3.527c0-2.047 2.133-3 3.962-3 3.047 0 3.918 2 4.266 4.4l.479.087c3.222-2.481.61-5.964-4.484-5.964-3.918 0-6.835 2.569-6.835 5.877 0 2.525 1.219 4.093 4.354 5.529l1.741.784c2.569 1.175 4.659 2.481 4.659 4.963 0 2.22-2.177 3.352-4.4 3.352-3.657 0-5.442-2.133-5.224-6.182l-.566-.13c-3.961 3.344-.695 7.742 5.748 7.742zm-18.242-.827h8.707v-.7c-2.7-.566-2.917-1.132-2.917-2.482V129.6c0-3.962-2.22-6.443-5.834-6.443-2.438 0-4.092.914-5.442 3.483h-.044l.436.392a4.365 4.365 0 0 1 3.309-1.567c3.091 0 4.571 1.611 4.571 5.181v10.404c0 1.349-.13 1.872-2.786 2.438zm-21.769-27.471a2.4 2.4 0 0 0 0-4.789 2.4 2.4 0 0 0 0 4.789zm8.185 27.471h8.707v-.7c-2.7-.566-2.917-1.132-2.917-2.482v-17.716l-6.443 1.436v.74c2.786.436 3.439 1 3.439 2.917v12.626c0 1.349-.13 1.872-2.786 2.438zm-12.1 0h8.707v-.7c-2.7-.566-2.917-1.132-2.917-2.482v-17.716l-6.443 1.436v.74c2.786.436 3.44 1 3.44 2.917v12.626c0 1.349-.131 1.872-2.787 2.438zm-5.094-15.02h.348c2.525-2.7 1.785-5.834-1.262-5.834-2.22 0-4.528 1.959-5.094 4.876l.522.261a3.124 3.124 0 0 1 2.917-2.263c1.522-.001 2.436 1.174 2.567 2.96zm-13.322 15.02h10.013v-.829c-3.091-.392-4.223-1-4.223-2.351v-17.718l-6.443 1.436v.74c2.787.436 3.44 1 3.44 2.917v12.626c0 1.349-.131 1.872-2.787 2.438zm-6.269.479c.783 0 2.7-.392 3.309-3.222l-.566-.261c-.435 1-1.088 1.567-1.785 1.567-1.219 0-1.567-.653-1.567-2.613v-16.848l-6.443 1.436v.74c2.787.436 3.44 1 3.44 2.917V140.4c-.004 2.653 1.346 4.308 3.61 4.308zm-10.536.217c2.047 0 3.657-.827 5.05-3.309l-.479-.3a4.084 4.084 0 0 1-3.7 1.741c-2.917 0-4.353-1.828-4.353-5.616v-14.11l-6.443 1.436v.74c2.786.436 3.439 1 3.439 2.917v10.057c-.003 3.919 1.956 6.444 6.484 6.444zm-44.494-.7h8.707v-.7c-2.7-.566-2.917-1.132-2.917-2.482V129.6c0-3.962-2.22-6.443-5.834-6.443-2.438 0-4.093.914-5.442 3.483h-.043l.435.392a4.366 4.366 0 0 1 3.309-1.567c3.091 0 4.571 1.611 4.571 5.181v10.404c0 1.349-.13 1.872-2.786 2.438zm-13.148 0h8.62v-.7C87.213 142.966 87 142.4 87 141.05V129.6c0-3.962-2.22-6.443-5.834-6.443-2.438 0-4.093.914-5.442 3.483h-.043l.435.392a4.367 4.367 0 0 1 3.309-1.567c3.135 0 4.659 1.654 4.659 5.181v10.404c0 1.349-.131 1.872-2.787 2.438zm-13.192 0h8.707v-.7c-2.7-.566-2.917-1.132-2.917-2.482v-17.712l-6.443 1.436v.74c2.787.436 3.44 1 3.44 2.917v12.626c0 1.349-.13 1.872-2.787 2.438zm-16.8.653a4.713 4.713 0 0 0 4.745-3.265l-.479-.218a2.677 2.677 0 0 1-2.307 1.394c-3.744 0-4.354-2.177-4.354-4.093 0-2.22 1.829-3.744 7.836-5.094l1.176-.261v7.059c0 2.656 1.35 4.31 3.613 4.31.784 0 2.7-.392 3.309-3.222l-.566-.261c-.436 1-1.089 1.567-1.785 1.567-1.176 0-1.524-.61-1.524-2.613v-10.189c0-4.353-2.394-6.661-6.7-6.661a13.386 13.386 0 0 0-7.716 2.569h.043l.74 1.263a10.112 10.112 0 0 1 5.747-1.741c3.178 0 4.833 1.611 4.833 4.7v1.567l-2.177.479c-8.707 1.872-9.969 5.224-9.969 7.575 0 3.832 3.221 5.138 5.533 5.138zm-14.889 0c2.133 0 4.658-1.045 5.311-4.876l-.566-.174c-.61 1.916-1.828 3-3.4 3-2.177 0-3.222-1.132-3.222-3.483v-13.184h7.532v-1.916h-7.534v-7.009h-.61c-1.306 4.658-2.917 6.748-6.27 8.315v.61h3.831v12.452c.001 4.266 1.615 6.268 4.921 6.268zm78.844.043c5.094 0 11.1-4.7 11.1-11.929 0-4.528-2.133-9.839-7.488-9.839-2.525 0-4.266 1.088-5.616 3.788l.523.3a4.88 4.88 0 0 1 3.875-1.48c3.047 0 5.834 3.222 5.834 8.446 0 6.139-3.614 9.056-7.184 9.056a6.28 6.28 0 0 1-4.963-2.046h-.043v-29.423l-6.443 1.436v.74c2.787.436 3.44 1 3.44 2.917v26.644a19.341 19.341 0 0 0 6.958 1.394z" transform="translate(-861.784 -32.736) translate(834.129 -79.058)"></path>
        </g>
      </svg>
    </a>

    <div class="sub-menu">
      <ul class="menu">
        <li>
          <a href="/signin">Sign In</a>
        </li>
        <li>
          <a href="javascript:void(0)">My Starbucks</a>
        </li>
        <li>
          <a href="javascript:void(0)">Customer Service & Ideas</a>
        </li>
        <li>
          <a href="javascript:void(0)">Find a Store</a>
        </li>
      </ul>
      <div class="search">
        <input type="text" />
        <span class="material-icons">search</span>
      </div>
    </div>

    <ul class="main-menu">
      <li class="item">
        <div class="item__name">COFFEE</div>
        <div class="item__contents">
          <div class="contents__menu">
            <ul class="inner">
              <li>
                <h4>커피</h4>
                <ul>
                  <li>스타벅스 원두</li>
                  <li>스타벅스 비아</li>
                  <li>스타벅스 오리가미</li>
                </ul>
              </li>
              <li>
                <h4>에스프레소 음료</h4>
                <ul>
                  <li>도피오</li>
                  <li>에스프레소 마키아또</li>
                  <li>아메리카노</li>
                  <li>마키아또</li>
                  <li>카푸치노</li>
                  <li>라떼</li>
                  <li>모카</li>
                  <li>리스트레또 비안코</li>
                </ul>
              </li>
              <li>
                <h4>커피 이야기</h4>
                <ul>
                  <li>스타벅스 로스트 스팩트럼</li>
                  <li>최상의 아라비카 원두</li>
                  <li>한 잔의 커피가 완성되기까지</li>
                  <li>클로버® 커피 추출 시스템</li>
                </ul>
              </li>
              <li>
                <h4>최상의 커피를 즐기는 법</h4>
                <ul>
                  <li>커피 프레스</li>
                  <li>푸어 오버</li>
                  <li>아이스 푸어 오버</li>
                  <li>커피 메이커</li>
                  <li>리저브를 매장에서 다양하게 즐기는 법</li>
                </ul>
              </li>
            </ul>
          </div>
          <div class="contents__texture">
            <div class="inner">
              <h4>나와 어울리는 커피 찾기</h4>
              <p>스타벅스가 여러분에게 어울리는 커피를 찾아드립니다.</p>
              <h4>최상의 커피를 즐기는 법</h4>
              <p>여러가지 방법을 통해 다양한 풍미의 커피를 즐겨보세요.</p>
            </div>
          </div>
        </div>
      </li>
      <li class="item">
        <div class="item__name">MENU</div>
        <div class="item__contents">
          <div class="contents__menu">
            <ul class="inner">
              <li>
                <h4>음료</h4>
                <ul>
                  <li>콜드 브루</li>
                  <li>브루드 커피</li>
                  <li>에스프레소</li>
                  <li>프라푸치노</li>
                  <li>블렌디드 음료</li>
                  <li>스타벅스 피지오</li>
                  <li>티(티바나)</li>
                  <li>기타 제조 음료</li>
                  <li>스타벅스 주스(병음료)</li>
                </ul>
              </li>
              <li>
                <h4>푸드</h4>
                <ul>
                  <li>베이커리</li>
                  <li>케익</li>
                  <li>샌드위치 & 샐러드</li>
                  <li>따뜻한 푸드</li>
                  <li>과일 & 요거트</li>
                  <li>스낵 & 미니 디저트</li>
                  <li>아이스크림</li>
                </ul>
              </li>
              <li>
                <h4>상품</h4>
                <ul>
                  <li>머그</li>
                  <li>글라스</li>
                  <li>플라스틱 텀블러</li>
                  <li>스테인리스 텀블러</li>
                  <li>보온병</li>
                  <li>액세서리</li>
                  <li>커피 용품</li>
                  <li>패키지 티(티바나)</li>
                </ul>
              </li>
              <li>
                <h4>카드</h4>
                <ul>
                  <li>실물카드</li>
                  <li>e-Gift 카드</li>
                </ul>
              </li>
              <li>
                <h4>메뉴 이야기</h4>
                <ul>
                  <li>콜드 브루</li>
                  <li>스타벅스 티바나</li>
                </ul>
              </li>
            </ul>
          </div>
          <div class="contents__texture">
            <div class="inner">
              <h4>스타벅스 티바나</h4>
              <p>다양한 찻잎과 향신료 등 개성있는 재료로 새로운 맛과 향의 티를 선보입니다.</p>
            </div>
          </div>
        </div>
      </li>
      <li class="item">
        <div class="item__name">STORE</div>
        <div class="item__contents">
          <div class="contents__menu">
            <ul class="inner">
              <li>
                <h4>매장 찾기</h4>
                <ul>
                  <li>퀵 검색</li>
                  <li>지역 검색</li>
                  <li>My 매장</li>
                </ul>
              </li>
              <li>
                <h4>매장 이야기</h4>
                <ul>
                  <li>청담스타</li>
                  <li>티바나 인스파이어드 매장</li>
                  <li>파미에파크</li>
                </ul>
              </li>
            </ul>
          </div>
          <div class="contents__texture">
            <div class="inner">
              <h4>매장 찾기</h4>
              <p>보다 빠르게 매장을 찾아보세요.</p>
              <h4>청담스타</h4>
              <p>스타벅스 1,000호점인 청담스타점을 만나보세요.</p>
            </div>
          </div>
        </div>
      </li>
      <li class="item">
        <div class="item__name">RESPONSIBILITY</div>
        <div class="item__contents">
          <div class="contents__menu">
            <ul class="inner">
              <li>
                <h4>지역 사회 참여 활동</h4>
                <ul>
                  <li>회망배달 캠페인</li>
                  <li>재능기부 카페 소식</li>
                  <li>커뮤니티 스토어</li>
                  <li>청년인재 양성</li>
                  <li>우리 농산물 사랑 캠페인</li>
                  <li>우리 문화 지키기</li>
                </ul>
              </li>
              <li>
                <h4>환경보호 활동</h4>
                <ul>
                  <li>환경 발자국 줄이기</li>
                  <li>일회용 컵 없는 매장</li>
                  <li>커피 원두 재활용</li>
                </ul>
              </li>
              <li>
                <h4>윤리 구매</h4>
                <ul>
                  <li>윤리적 원두 구매</li>
                  <li>공정무역 인증</li>
                  <li>커피 농가 지원 활동</li>
                </ul>
              </li>
              <li>
                <h4>글로벌 사회 공헌</h4>
                <ul>
                  <li>윤리경영 보고서</li>
                  <li>스타벅스 재단</li>
                  <li>지구촌 봉사의 달</li>
                </ul>
              </li>
            </ul>
          </div>
          <div class="contents__texture">
            <div class="inner">
              <h4>커피원두 재활용</h4>
              <p>스타벅스 커피 원두를 재활용 해보세요.</p>
            </div>
          </div>
        </div>
      </li>
      <li class="item">
        <div class="item__name">MY STARBUCKS REWARDS</div>
        <div class="item__contents">
          <div class="contents__menu">
            <ul class="inner">
              <li>
                <h4>마이 스타벅스 리워드</h4>
                <ul>
                  <li>마이 스타벅스 리워드 소개</li>
                  <li>등급 및 혜택</li>
                  <li>스타벅스 별</li>
                  <li>자주하는 질문</li>
                </ul>
              </li>
              <li>
                <h4>스타벅스 카드</h4>
                <ul>
                  <li>스타벅스 카드 소개</li>
                  <li>스타벅스 카드 갤러리</li>
                  <li>등록 및 조회</li>
                  <li>충전 및 이용안내</li>
                  <li>분실신고/환불신청</li>
                  <li>자주하는 질문</li>
                </ul>
              </li>
              <li>
                <h4>스타벅스 카드 e-Gift</h4>
                <ul>
                  <li>스타벅스 카드 e-Gift 소개</li>
                  <li>이용안내</li>
                  <li>선물하기</li>
                  <li>자주하는 질문</li>
                </ul>
              </li>
            </ul>
          </div>
          <div class="contents__texture">
            <div class="inner">
              <h4>스타벅스 카드 등록하기</h4>
              <p>카드 등록 후 리워드 서비스를 누리고 사용내역도 조회해보세요.</p>
            </div>
          </div>
        </div>
      </li>
      <li class="item">
        <div class="item__name">WHAT'S NEW</div>
        <div class="item__contents">
          <div class="contents__menu">
            <ul class="inner">
              <li>
                <h4>프로모션 & 이벤트</h4>
                <ul>
                  <li>전체</li>
                  <li>스타벅스 카드</li>
                  <li>마이 스타벅스 리워드</li>
                  <li>온라인</li>
                  <li>2017 스타벅스 플래너</li>
                </ul>
              </li>
              <li>
                <h4>새소식</h4>
                <ul>
                  <li>전체</li>
                  <li>상품 출시</li>
                  <li>스타벅스의 문화</li>
                  <li>스타벅스 사회공헌</li>
                  <li>스타벅스 카드출시</li>
                </ul>
              </li>
              <li>
                <h4>매장별 이벤트</h4>
                <ul>
                  <li>일반 매장</li>
                  <li>신규 매장</li>
                </ul>
              </li>
            </ul>
          </div>
          <div class="contents__texture">
            <div class="inner">
              <h4>매장별 이벤트</h4>
              <p>스타벅스의 매장 이벤트 정보를 확인 하실 수 있습니다.</p>
              <h4>소셜 스타벅스</h4>
              <p>다양한 스타벅스 SNS 채널을 통해 스타벅스를 만나보세요!</p>
            </div>
          </div>
        </div>
      </li>
    </ul>

  </div>

</header>
</body>