<%--
  Created by IntelliJ IDEA.
  User: iot29
  Date: 2022-08-22
  Time: 오후 6:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%--
  Created by IntelliJ IDEA.
  User: iot29
  Date: 2022-08-22
  Time: 오후 5:13
  To change this template use File | Settings | File Templates.
--%>
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

<!--VISUAL-->
<section class="visual">
    <div class="inner">

        <div class="title fade-in">
            <svg class="logo-svg logo-svg--black" xmlns="http://www.w3.org/2000/svg" width="197.655" height="33.262" viewBox="0 0 197.655 33.262">
                <g>
                    <path d="M218.083 145.056c3.918 0 7.227-2.961 7.227-6.356 0-2.395-1.567-4.266-5.05-5.79-2-.871-2.7-1.263-3.744-1.785a3.686 3.686 0 0 1-2.133-3.527c0-2.047 2.133-3 3.962-3 3.047 0 3.918 2 4.266 4.4l.479.087c3.222-2.481.61-5.964-4.484-5.964-3.918 0-6.835 2.569-6.835 5.877 0 2.525 1.219 4.093 4.354 5.529l1.741.784c2.569 1.175 4.659 2.481 4.659 4.963 0 2.22-2.177 3.352-4.4 3.352-3.657 0-5.442-2.133-5.224-6.182l-.566-.13c-3.961 3.344-.695 7.742 5.748 7.742zm-18.242-.827h8.707v-.7c-2.7-.566-2.917-1.132-2.917-2.482V129.6c0-3.962-2.22-6.443-5.834-6.443-2.438 0-4.092.914-5.442 3.483h-.044l.436.392a4.365 4.365 0 0 1 3.309-1.567c3.091 0 4.571 1.611 4.571 5.181v10.404c0 1.349-.13 1.872-2.786 2.438zm-21.769-27.471a2.4 2.4 0 0 0 0-4.789 2.4 2.4 0 0 0 0 4.789zm8.185 27.471h8.707v-.7c-2.7-.566-2.917-1.132-2.917-2.482v-17.716l-6.443 1.436v.74c2.786.436 3.439 1 3.439 2.917v12.626c0 1.349-.13 1.872-2.786 2.438zm-12.1 0h8.707v-.7c-2.7-.566-2.917-1.132-2.917-2.482v-17.716l-6.443 1.436v.74c2.786.436 3.44 1 3.44 2.917v12.626c0 1.349-.131 1.872-2.787 2.438zm-5.094-15.02h.348c2.525-2.7 1.785-5.834-1.262-5.834-2.22 0-4.528 1.959-5.094 4.876l.522.261a3.124 3.124 0 0 1 2.917-2.263c1.522-.001 2.436 1.174 2.567 2.96zm-13.322 15.02h10.013v-.829c-3.091-.392-4.223-1-4.223-2.351v-17.718l-6.443 1.436v.74c2.787.436 3.44 1 3.44 2.917v12.626c0 1.349-.131 1.872-2.787 2.438zm-6.269.479c.783 0 2.7-.392 3.309-3.222l-.566-.261c-.435 1-1.088 1.567-1.785 1.567-1.219 0-1.567-.653-1.567-2.613v-16.848l-6.443 1.436v.74c2.787.436 3.44 1 3.44 2.917V140.4c-.004 2.653 1.346 4.308 3.61 4.308zm-10.536.217c2.047 0 3.657-.827 5.05-3.309l-.479-.3a4.084 4.084 0 0 1-3.7 1.741c-2.917 0-4.353-1.828-4.353-5.616v-14.11l-6.443 1.436v.74c2.786.436 3.439 1 3.439 2.917v10.057c-.003 3.919 1.956 6.444 6.484 6.444zm-44.494-.7h8.707v-.7c-2.7-.566-2.917-1.132-2.917-2.482V129.6c0-3.962-2.22-6.443-5.834-6.443-2.438 0-4.093.914-5.442 3.483h-.043l.435.392a4.366 4.366 0 0 1 3.309-1.567c3.091 0 4.571 1.611 4.571 5.181v10.404c0 1.349-.13 1.872-2.786 2.438zm-13.148 0h8.62v-.7C87.213 142.966 87 142.4 87 141.05V129.6c0-3.962-2.22-6.443-5.834-6.443-2.438 0-4.093.914-5.442 3.483h-.043l.435.392a4.367 4.367 0 0 1 3.309-1.567c3.135 0 4.659 1.654 4.659 5.181v10.404c0 1.349-.131 1.872-2.787 2.438zm-13.192 0h8.707v-.7c-2.7-.566-2.917-1.132-2.917-2.482v-17.712l-6.443 1.436v.74c2.787.436 3.44 1 3.44 2.917v12.626c0 1.349-.13 1.872-2.787 2.438zm-16.8.653a4.713 4.713 0 0 0 4.745-3.265l-.479-.218a2.677 2.677 0 0 1-2.307 1.394c-3.744 0-4.354-2.177-4.354-4.093 0-2.22 1.829-3.744 7.836-5.094l1.176-.261v7.059c0 2.656 1.35 4.31 3.613 4.31.784 0 2.7-.392 3.309-3.222l-.566-.261c-.436 1-1.089 1.567-1.785 1.567-1.176 0-1.524-.61-1.524-2.613v-10.189c0-4.353-2.394-6.661-6.7-6.661a13.386 13.386 0 0 0-7.716 2.569h.043l.74 1.263a10.112 10.112 0 0 1 5.747-1.741c3.178 0 4.833 1.611 4.833 4.7v1.567l-2.177.479c-8.707 1.872-9.969 5.224-9.969 7.575 0 3.832 3.221 5.138 5.533 5.138zm-14.889 0c2.133 0 4.658-1.045 5.311-4.876l-.566-.174c-.61 1.916-1.828 3-3.4 3-2.177 0-3.222-1.132-3.222-3.483v-13.184h7.532v-1.916h-7.534v-7.009h-.61c-1.306 4.658-2.917 6.748-6.27 8.315v.61h3.831v12.452c.001 4.266 1.615 6.268 4.921 6.268zm78.844.043c5.094 0 11.1-4.7 11.1-11.929 0-4.528-2.133-9.839-7.488-9.839-2.525 0-4.266 1.088-5.616 3.788l.523.3a4.88 4.88 0 0 1 3.875-1.48c3.047 0 5.834 3.222 5.834 8.446 0 6.139-3.614 9.056-7.184 9.056a6.28 6.28 0 0 1-4.963-2.046h-.043v-29.423l-6.443 1.436v.74c2.787.436 3.44 1 3.44 2.917v26.644a19.341 19.341 0 0 0 6.958 1.394z" transform="translate(-861.784 -32.736) translate(834.129 -79.058)"></path>
                </g>
            </svg>
            <a href="javascript:void(0)" class="btn btn--brown">자세히 보기</a>
        </div>
        <div class="fade-in">
            <img src="../resources/images/image1.png" alt="new BIGALICO" class="cup1 image" />
        </div>
        <div class="fade-in">
            <img src="../resources/images/image2.png" alt="new WORMWOOD SET" class="cup2 image" />
        </div>
        <div class="fade-in">
            <img src="../resources/images/image3.png" alt="new body" class="spoon" />
        </div>

    </div>
</section>
</body>
