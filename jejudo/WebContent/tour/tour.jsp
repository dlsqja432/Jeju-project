<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="UTF-8">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <!--<link rel="stylesheet" href="${path0 }/css/normalize2.css">  -->
<link rel="stylesheet" href="${path0 }/css/common.css">
<%@ include file="/head.jsp" %>
    <style>
        .breadcrumb {
            list-style: none;
            width: 920px;
            padding: 15px;
            margin: 0;
            border-top: 2px solid #ececec;
        }

        .breadcrumb li {
            display: inline;
        }

        .breadcrumb li:not(:last-child):after {
            content: "/";
            margin: 0 5px;
        }

        .breadcrumb li a {
            text-decoration: none;
            color: #007bff;
        }

        .breadcrumb li a:hover {
            text-decoration: underline;
        }

        #contents {
            width: 100%;
        }

        .page {
            clear: both;
            width: 1200px;
            min-height: 100vh;
            margin: 0 auto;
            margin-top: 20px;
        }

        .page::after {
            content: "";
            display: block;
            width: 100%;
            clear: both;
        }

        .page_title {
            text-align: center;
            padding-top: 2em;
            padding-bottom: 0.5em;
        }

        #page1 {
            min-height: calc(100vh - 150px);
            margin-bottom: 10px;
        }

        #page_title1 {
            text-align: center;
            font-size: 32px;
            font-weight: bold;
            padding-top: 2rem;
            padding-bottom: 2rem;
        }

        #side_bar {
            width: 250px;
            min-height: 100vh;
            border: 2px solid #333;
            float: left;
            border: 1px solid #ececec;
        }

        #side_bar_title {
            width: 100%;
            height: 170px;
            line-height: 170px;
            text-align: center;
            font-size: 32px;
            font-weight: bold;
            background-color: #afebff;
        }

        #side_bar li {
            width: 240px;
            height: 50px;
            padding-left: 10px;
            font-size: 16px;
            line-height: 50px;
            border-bottom: 2px solid #ececec;
        }

        #search {
            width: 950px;
            height: 100px;
            text-align: center;
            line-height: 100px;
            background-color: #ccc
        }

        #search #inp1 {
            width: 100px;
            height: 40px;
            padding-left: 10px;
            font-size: 16px;
            border-radius: 8px;
            border-style: none;
        }

        #search #inp2 {
            width: 500px;
            height: 40px;
            padding-left: 10px;
            font-size: 16px;
            border-radius: 8px;
            border-style: none;
        }

        .tb_wrap {
            width: 850px;
            margin: 10px auto;
            padding-bottom: 20px;
            margin-bottom: 20px;
            float: left;
        }

        .tb_wrap:after {
            content: "";
            display: block;
            width: 100%;
            clear: both;
        }

        .table {
            display: table;
            width: 900px;
            border-spacing: 30px;
            margin: 10px auto;
        }

        .table tr {
            display: table-row;
        }

        .table td,
        .table th {
            display: table-cell;
            font-size: 18px;
        }

        .table td:first-child {
            text-align: center;
        }

        .table td:last-child {
            text-align: left;
            padding-left: 50px;
            border-bottom: 3px solid #ececec;
        }

        .table td a {
            color: deepskyblue;
            text-decoration: underline;
        }

        .table th {
            padding: 15px 0px;
        }

        .table th img {
            width: 250px;
            height: 200px;
            padding-left: 60px;
        }

        .table td:nth-child(2) {
            width: 800px;
        }

        .btn {
            width: 102px;
            height: 40px;
            text-align: center;
            margin: 10px;
            border-radius: 15px;
            background-color: #ffff9c;
            border-style: hidden;
            cursor: pointer;
            font-size: 16px;
            font-weight: bold;
        }

        .btn:hover {
            background-color: #afebff;
        }

        .btn#btn2 {
            margin-left: 100px;
            font-weight: bold;
        }

        .modal {
            display: none;
            /* Hidden by default */
            position: fixed;
            /* Stay in place */
            z-index: 2;
            /* Sit on top */
            padding-top: 100px;
            /* Location of the box */
            left: 0;
            padding-left: 10%;
           
            top: 0;
            width: 100%;
            /* Full width */
            height: 100%;
            /* Full height */
            overflow: auto;
            /* Enable scroll if needed */
            background-color: rgb(0, 0, 0);
            /* Fallback color */
            background-color: rgba(0, 0, 0, 0.8);
            /* Black w/ opacity */
        }

        /* Modal Content */
        .modal-content {
            position: relative;
            background-color: #fefefe;
            text-align:left;
            margin: auto;
            /*padding-right: 30%;*/
            border: 1px solid #888;
            width:50%;
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
            -webkit-animation-name: animatetop;
            -webkit-animation-duration: 0.4s;
            animation-name: animatetop;
            animation-duration: 0.4s
        }

        /* Add Animation */
        @-webkit-keyframes animatetop {
            from {
                top: -300px;
                opacity: 0
            }

            to {
                top: 0;
                opacity: 1
            }
        }

        @keyframes animatetop {
            from {
                top: -300px;
                opacity: 0
            }

            to {
                top: 0;
                opacity: 1
            }
        }

        /* The Close Button */
        .close {
            color: white;
            float: right;
            font-size: 28px;
            font-weight: bold;
        }

        .close:hover,
        .close:focus {
            color: #000;
            text-decoration: none;
            cursor: pointer;
        }

        .modal-header {
            padding: 2px 16px;
            background-color: #5cb85c;
            color: white;
        }

        .modal-body {

            padding: 1% 10%;
            color: rgba(0, 0, 0, 0.6);
        }

        .modal-footer {
            padding: 2px 16px;
            background-color: #5cb85c;
            color: white;
        }

        /*버튼 */
        button {
            --color: #0077ff;
            font-family: inherit;
            display: inline-block;
            width: 6em;
            height: 2.6em;
            line-height: 2.5em;
            overflow: hidden;
            cursor: pointer;
            margin: 20px;
            font-size: 17px;
            z-index: 1;
            color: var(--color);
            border: 2px solid var(--color);
            border-radius: 6px;
            position: relative;
        }

        button::before {
            position: absolute;
            content: "";
            background: var(--color);
            width: 150px;
            height: 200px;
            z-index: -1;
            border-radius: 50%;
        }

        button:hover {
            color: white;
        }

        button:before {
            top: 100%;
            left: 100%;
            transition: 0.3s all;
        }

        button:hover::before {
            top: -30px;
            left: -30px;
        }
    </style>
</head>

<body>
    <%@ include file="/header.jsp" %>
    
      <main id="contents" class="clr-fix">
        <section class="page" id="page1">
            <nav id="side_bar">
                <ul>
                    <h3 id="side_bar_title">관광정보</h3>
                    <li><a href="">관광지</a></li>
                    <li><a href="">문화재</a></li>
                    <li><a href="">추천 여행코스</a></li>
                </ul>
            </nav>


            <div class="tb_wrap">
                <h2 class="page_title" id="page_title1">관광지</h2>
                <ol class="breadcrumb">
                    <li><a href="main.html">Home</a></li>
                    <li><a href="#">Tour</a></li>
                    <li>관광지</li>
                </ol>
                <div id="search">
                    <input type="text" id="inp1" value="제목" readonly>
                    <input type="text" id="inp2">
                    <button type="button" class="btn" id="search_btn">검색</button>
                </div>
                <table class="table">
                    <tbody>
                        <tr>
                            <th><img src="${ipath}/images/tour/teddy_250.png" alt=""></th>
                            <td>
                                <p><strong>장소명</strong> : 테디베어 뮤지엄<br>
                                    <strong>주소</strong> : 제주특별자치도 서귀포시 색달동 2889번지 중문관광단지 입구<br>
                                    <strong>영업 시간</strong> : 오전 09:00 ~ 오후 6:00 (입장마감 17:30)<br>
                                    <strong>입장 요금</strong> : 성인 12000, 청소년 11000 어린이 10000<br>
                                    <strong>홈페이지</strong> : <a href="#">오구당당.com</a><br>
                                    <strong>전화번호</strong> : 064-738-7600
                                </p>
                                <!-- Trigger/Open The Modal -->
                                <button class="modal-button" href="#myModal1">더보기</button>

                                <!-- The Modal -->
                                <pattern id="myModal1" class="modal">

                                    <!-- Modal content -->
                                    <pattern class="modal-content">
                                        <pattern class="modal-header">
                                            <h2>테디베어 뮤지엄</h2>
                                            <span class="close">×</span>
                                            
                                        </pattern>
                                        <pattern class="modal-body">
                                            <p>설명: 국내 최초 오리지널 테디베어뮤지엄</p>
                                            <p>주소: 제주특별자치도 서귀포시 색달동 2889번지 중문관광단지 입구</p>
                                            <iframe
                                                src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d6673.084972114919!2d126.40746986503214!3d33.2522874655999!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x350c5ac728409539%3A0x323101daba026ecb!2sTeddy%20Bear%20Museum!5e0!3m2!1sen!2skr!4v1714973704782!5m2!1sen!2skr"
                                                width="600" height="450" style="border:0;" allowfullscreen=""
                                                loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                                        </pattern>
                                        <pattern class="modal-footer">
                                            <h4>찾아오시는 길: </h4>
                                        </pattern>
                                    </pattern>

                                </pattern>
                            </td>
                        </tr>
                        <tr>
                            <th><img src="${ipath}/images/tour/dragonrock_250.png" alt=""></th>
                            <td>
                                <p><strong>장소명</strong> : 용두암<br>
                                    <strong>주소</strong> : 제주특별자치도 제주시 용두암길 15<br>
                                    <strong>영업 시간</strong> : 오전 07:30 ~ 오후 8:00<br>
                                    <strong>입장 요금</strong> : 무료 <br>
                                    <strong>홈페이지</strong> : <a href="#">오구당당.com</a><br>
                                    <strong>전화번호</strong> : 064-728-3917
                                </p>
                                <!-- Trigger/Open The Modal -->
                                <button class="modal-button" href="#myModal2">더보기</button>
                                <!-- The Modal -->
                                <pattern id="myModal2" class="modal">

                                    <!-- Modal content -->
                                    <pattern class="modal-content">
                                        <pattern class="modal-header">
                                            <span class="close">×</span>
                                            <h2>용두암</h2>
                                        </pattern>
                                        <pattern class="modal-body">
                                            <p>설명: 용이 포요하며 바다에서 솟구쳐 오르는 형상을 따 용두암이라 이름 지어졌다. 전설에 의하면 인근 계곡 용연에서 살던 용이
                                                승천하려다가 돌로 굳어졌다고 한다. 겉으로 드러난 부분의 높이가 10m, 바다 속에 잠긴 몸의 길이가 30m 쯤 된다고 하니,
                                                괴암을 응시하고 있자면, 정말로 용이 꿈틀거리는 것 같은 상상을 할 법도 하다.
                                            </p>
                                            <p>주소: 제주특별자치도 제주시 용두암길 15</p>
                                            <iframe
                                                src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3326.4289189377364!2d126.50948341201968!3d33.51623227325245!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x350ce4b2810e4315%3A0x3044bfd3cfaa7bb0!2sYongduam%20Rock!5e0!3m2!1sen!2skr!4v1714976157041!5m2!1sen!2skr"
                                                width="600" height="450" style="border:0;" allowfullscreen=""
                                                loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                                        </pattern>
                                        <pattern class="modal-footer">
                                            <h3>찾아오시는 길: </h3>
                                        </pattern>
                                    </pattern>

                                </pattern>
                            </td>
                        </tr>
                        <tr>
                            <th><img src="${ipath}/images/tour/seongsan_250.png" alt=""></th>
                            <td>
                                <p><strong>장소명</strong> : 성산일출봉<br>
                                    <strong>주소</strong> : 제주특별자치도 서귀포시 색달동 2889번지 중문관광단지 입구<br>
                                    <strong>영업 시간</strong> : 오전 09:00 ~ 오후 6:00 (입장마감 17:30)<br>
                                    <strong>입장 요금</strong> : 성인 12000, 청소년 11000 어린이 10000<br>
                                    <strong>홈페이지</strong> : <a href="#">오구당당.com</a><br>
                                    <strong>전화번호</strong> : 064-738-7600
                                </p>
                                <!-- Trigger/Open The Modal -->
                                <button class="modal-button" href="#myModal3">더보기</button>
                                <!-- The Modal -->
                                <pattern id="myModal3" class="modal">

                                    <!-- Modal content -->
                                    <pattern class="modal-content">
                                        <pattern class="modal-header">
                                            <span class="close">×</span>
                                            <h2>성산일츨봉</h2>
                                        </pattern>
                                        <pattern class="modal-body">
                                            <p>설명: 성산일출봉은 제주도의 다른 오름들과는 달리 마그마가 물속에서 분출하면서 만들어진 수성화산체다. 화산활동시 분출된 뜨거운 마그마가 차가운 바닷물과 만나면서 화산재가 습기를 많이 머금어 끈끈한 성질을 띄게 되었고, 이것이 층을 이루면서 쌓인 것이 성산일출봉이다.
                                                바다 근처의 퇴적층은 파도와 해류에 의해 침식되면서 지금처럼 경사가 가파른 모습을 띄게 되었다. 생성 당시엔 제주 본토와 떨어진 섬이었는데, 주변에 모래와 자갈등이 쌓이면서 간조 때면 본토와 이어지는 길이 생겼고, 1940년엔 이곳에 도로가 생기면서 현재는 육지와 완벽하게 연결되어 있다.
                                            </p>
                                            <p>주소: 제주특별자치도 서귀포시 성산읍 일출로 284-12</p>
                                            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3328.6485055090293!2d126.93740044869463!3d33.45846298045431!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x350d14b9712b7577%3A0x636ffe4d7eccbc05!2sSeongsan%20Ilchulbong!5e0!3m2!1sen!2skr!4v1714999918772!5m2!1sen!2skr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>    
                                        </pattern>
                                        <pattern class="modal-footer">
                                            <h3>찾아오시는 길: </h3>
                                        </pattern>
                                    </pattern>

                                </pattern>
                            </td>
                        </tr>
                        <tr>
                            <th><img src="${ipath}/images/tour/udo_250.jpg" alt=""></th>
                            <td>
                                <p><strong>장소명</strong> : 우도<br>
                                    <strong>주소</strong> : 제주특별자치도 제주시 우도면<br>
                                    <strong>영업 시간</strong> : 날씨에 따라 변동<br>
                                    <strong>입장 요금</strong> : 선박 가격 참조<br>
                                    <strong>홈페이지</strong> : <a href="#">오구당당.com</a><br>
                                    <strong>전화번호</strong> : 064-728-1527
                                </p>
                                <!-- Trigger/Open The Modal -->
                                <button class="modal-button" href="#myModal4">더보기</button>
                                <!-- The Modal -->
                                <pattern id="myModal4" class="modal">

                                    <!-- Modal content -->
                                    <pattern class="modal-content">
                                        <pattern class="modal-header">
                                            <span class="close">×</span>
                                            <h2>우도</h2>
                                        </pattern>
                                        <pattern class="modal-body">
                                            <p>설명: 우도는 소가 누워있는 모양을 닮았다고 해서 일찍부터 소섬 또는 쉐섬으로 불리웠다. 완만한 경사와 옥토, 풍부한 어장, 우도팔경 등 천혜의 자연조건을 갖춘 관광지로써 한해 약 200만 명의 관광객이 찾는 제주의 대표적인 부속섬이다.

                                                성산항과 종달항에서 우도가는 배를 탈 수 있는데 어디서 출발하든 15분 정도 소요된다. 섬의 길이는 3.8km, 둘레는 17km. 쉬지 않고 걸으면 3~4시간 걸리는 거리지만, 대부분의 관광객은 버스나 자전거, 미니 전기차를 타고 유명한 관광지 위주로 돌아본다. 
                                                
                                                검멀레해변이나 우도봉, 홍조단괴해변, 하고수동해변 등 유명한 관광지 1-2개를 둘러보고, 카페나 음식점에서 휴식을 즐겨도 대략 3-4시간 정도 소요된다. 여유있게 우도를 즐기고 싶다면 오전 아침배를 타고 들어가 오후 배를 타고 나와 하루종일 우도에 머물러 보는것도 좋다. 단, 기상에 따라 배 운항여부가 달라질수 있으니 우도 여행일정을 짜는데는 기상조건을 필히 확인해야한다.
                                                
                                                우도를 찾는 관광객은 홍조단괴해변, 우도봉, 검멀레 해변을 주로 찾는다. 홍조단괴해변은 산호해변으로도 불렸는데, 백사장을 이룬 하얀 알갱이가 산호가 아닌 홍조류가 딱딱하게 굳어 알갱이처럼 부서지면서 만들어진 것이 밝혀지면서 홍조단괴해변으로 부르며, 홍조류로 이뤄진 백사장은 세계에서 드물어 보호하고 있다. 
                                                
                                                너른 백사장과 아름다운 바다색으로 유명한 하고수동해수욕장도 있다. 경사가 완만한 천진동 코스와 경치가 멋진검멀레 해안코스가 있으며, 우도봉에 올라 우도의 전경을 바라볼 수도 있다. 자연 절경 이외에도 바다낚시, 자전거 하이킹, 잠수함과 유람선 등을 통해 여행의 재미를 더하고 있다. 
                                                
                                            </p>
                                            <p>주소: 제주특별자치도 제주시 우도면 </p>
                                            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d26614.047599368343!2d126.91691053754253!3d33.5077261482285!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x350d6aad13b6b9ab%3A0x76be50d31a67c52!2sUdo-myeon%2C%20Jeju-si%2C%20Jeju-do!5e0!3m2!1sen!2skr!4v1715000972237!5m2!1sen!2skr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                                        </pattern>
                                        <pattern class="modal-footer">
                                            <h3>찾아오시는 길: </h3>
                                        </pattern>
                                    </pattern>

                                </pattern>
                            </td>
                        </tr>
                        <tr>
                            <th><img src="${ipath}/images/tour/oshal_250.jpg" alt=""></th>
                            <td>
                                <p><strong>장소명</strong> : 오설록티뮤지엄<br>
                                    <strong>주소</strong> : 제주특별자치도 서귀포시 안덕면 신화역사로 15<br>
                                    <strong>영업 시간</strong> : 0900~1800<br>
                                    <strong>입장 요금</strong> : 무료<br>
                                    <strong>홈페이지</strong> : <a href="#">오구당당.com</a><br>
                                    <strong>전화번호</strong> : 064-794-5312
                                    </p>
                                <!-- Trigger/Open The Modal -->
                                <button class="modal-button" href="#myModal5">더보기</button>
                                <!-- The Modal -->
                                <pattern id="myModal5" class="modal">

                                    <!-- Modal content -->
                                    <pattern class="modal-content">
                                        <pattern class="modal-header">
                                            <span class="close">×</span>
                                            <h2>오설록티뮤지엄</h2>
                                        </pattern>
                                        <pattern class="modal-body">
                                            <p>설명: 2001년 9월 개관한 오설록티뮤지엄은 국내외 차 관련 물품과 박물관이며, 푸른 녹차밭이 펼쳐지는 제주도 서광다원 입구에 위치하고 있다. 동서양 전통과 현대가 조화를 이룬 문화의 공간이자, 자연 친화적인 휴식공간으로, 건물 전체가 녹차잔을 형상화하여 만들어졌다. 녹차와 한국 전통 차 문화를 이해할 수 있는 학습 공간으로 설록차의 모든 것을 체험해 볼 수 있는 곳이다.

                                                오설록의 ‘오’는 경쾌한 감탄의 의미와 함께, origin of sulloc, only sulloc, of sulloc cha의 의미를 가지고 있다. 실내에 가득한 녹차향과 통유리 너머로 보이는 푸른 녹차밭이 마음을 편하게 만들어줘, 제주를 찾는 많은 관광객이 한번쯤은 들르는 명소가 되었다. 티 하우스에서는 티 마스터가 직접 볶은 따뜻한 차와 오설록 녹차로 만든 음료 아이스크림, 롤케익크 등을 즐길 수 있다. 특히 진한 녹색의 그린티 롤케익크은 많이 달지 않아 어른들에게도 환영을 받는다.
                                                
                                            </p>
                                            <p>주소: 제주특별자치도 서귀포시 안덕면 신화역사로 15</p>
                                            <iframe
                                                src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3326.4289189377364!2d126.50948341201968!3d33.51623227325245!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x350ce4b2810e4315%3A0x3044bfd3cfaa7bb0!2sYongduam%20Rock!5e0!3m2!1sen!2skr!4v1714976157041!5m2!1sen!2skr"
                                                width="600" height="450" style="border:0;" allowfullscreen=""
                                                loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                                        </pattern>
                                        <pattern class="modal-footer">
                                            <h3>찾아오시는 길: </h3>
                                        </pattern>
                                    </pattern>

                                </pattern>
                            </td>
                        </tr>
                        <tr>
                            <th><img src="${ipath}/images/tour/marado_250.jpg" alt=""></th>
                            <td>
                                <p><strong>가게명</strong> : 마라도<br>
                                    <strong>주소</strong> : 제주특별자치도 서귀포시 대정읍 마라로101번길 46
                                    <br>
                                    <strong>영업 시간</strong> : 날씨에 따라 변동<br>
                                    <strong>입장 요금</strong> : 선박 가격 참조<br>
                                    <strong>홈페이지</strong> : <a href="#">더히든키친.com</a><br>
                                    <strong>전화번호</strong> : 064-760-4014
                                </p>
                                <!-- Trigger/Open The Modal -->
                                <button class="modal-button" href="#myModal6">더보기</button>
                                <!-- The Modal -->
                                <pattern id="myModal6" class="modal">

                                    <!-- Modal content -->
                                    <pattern class="modal-content">
                                        <pattern class="modal-header">
                                            <span class="close">×</span>
                                            <h2>마라도</h2>
                                        </pattern>
                                        <pattern class="modal-body">
                                            <p>설명: 한국 최남단의 섬으로 면적 약 9만평, 최장길이 약 1.3km, 모슬포에서 남쪽으로 11km 해상에 위치한다. 운진항에서 배를 타고 30분 정도 소요되는데, 정기 여객선과 관광 유람선이 하루 수 차례 왕복 운항하고 있다. 마라도는 위에서 보면 고구마 형태를 띠고 있으며, 전체적으로 평평하나, 등대가 있는 동쪽으로는 해풍의 영향으로 기암절벽을 이룬다. 등대가 있는 가장 높은 곳이 약 해발 39m다. 서쪽 해안은 해식동굴이 발달되어 있으며 섬 중앙에서 서쪽 기슭에 마을이 자리잡고 있다. 주민들은 약 130여명(2015년 기준)으로, 주로 어업에 종사하나, 관광객이 늘어나면 민박을 겸하는 주민들이 많다. </p>
                                            <p>주소: 제주특별자치도 서귀포시 대정읍 마라로101번길 46
                                            </p>
                                            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3341.6371413958195!2d126.2645162112169!3d33.11862216633981!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x350c3fe3464e3e15%3A0x937c53e42ca50e6!2s46%20Mara-ro%20101beon-gil%2C%20Daejeong-eup%2C%20Seogwipo%2C%20Jeju-do!5e0!3m2!1sen!2skr!4v1715005945473!5m2!1sen!2skr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                                        </pattern>
                                        <pattern class="modal-footer">
                                            <h3>찾아오시는 길: </h3>
                                        </pattern>
                                    </pattern>

                                </pattern>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <script>
                // Get the button that opens the modal
                var btn = document.querySelectorAll("button.modal-button");

                // All page modals
                var modals = document.querySelectorAll('.modal');

                // Get the <span> element that closes the modal
                var spans = document.getElementsByClassName("close");

                // When the user clicks the button, open the modal
                for (var i = 0; i < btn.length; i++) {
                    btn[i].onclick = function (e) {
                        e.preventDefault();
                        modal = document.querySelector(e.target.getAttribute("href"));
                        modal.style.display = "block";
                    }
                }

                // When the user clicks on <span> (x), close the modal
                for (var i = 0; i < spans.length; i++) {
                    spans[i].onclick = function () {
                        for (var index in modals) {
                            if (typeof modals[index].style !== 'undefined') modals[index].style.display = "none";
                        }
                    }
                }

                // When the user clicks anywhere outside of the modal, close it
                window.onclick = function (event) {
                    if (event.target.classList.contains('modal')) {
                        for (var index in modals) {
                            if (typeof modals[index].style !== 'undefined') modals[index].style.display = "none";
                        }
                    }
                }
            </script>
        </section>
    </main>

    <footer id="ft" class="clr-fix">
        <div class="ft_wrap">
            <nav id="fnb">
                <ul>
                    <li><a href="${hpath }/member/terms.jsp">회원약관</a></li>
                    <li><a href="${hpath }/member/policy.jsp">개인정보처리방침</a></li>
                </ul>
            </nav>
            <div id="loc">
                <select name="sel" id="sel" onchange="locate()">
                    <option value="">해당 관공서</option>
                    <option
                        value="https://jejumaeul.or.kr/list4/?q=YToxOntzOjEyOiJrZXl3b3JkX3R5cGUiO3M6MzoiYWxsIjt9&bmode=view&idx=9281354&t=board">
                        부평주민센터</option>
                    <option value="https://www.jjpolice.go.kr/dongbu/info/police/police8">부평파출소</option>
                    <option value="https://ijto.or.kr/korean/">부평관광공사</option>
                </select>
            </div>
            <script>
                function locate() {
                    var sel = document.getElementById("sel");
                    if (sel.value != "") {
                        window.open(sel.value);
                    }
                }
            </script>
            <br><br>
            <div id="copyright">
                <p class="addr">[21354] 인천광역시 부평구 부평대로 168 (대표전화) ☎032-504-2114 </p>
                <p class="copy">COPYRIGHT(C) INCHEON BUPYEONG INTRO. ALL RIGHTS RESERVED.</p>
            </div>
        </div>
    </footer>

</body>

</html>