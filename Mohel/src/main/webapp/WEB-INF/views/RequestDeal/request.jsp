<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>모헬: 모두의 헬퍼 - 거래등록</title>
    <meta name="description" content="거래등록 페이지">
    <link rel="icon" type="image/png" href="/resources/imgs/common/logo-m.png">
    <script src="https://kit.fontawesome.com/301043e4a8.js" crossorigin="anonymous"></script>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="/resources/css/common.css">
</head>
<body>
    <!-- Navbar -->
    <nav id="navbar">
        <div class="navbar__top">
            <div class="navbar__logo">
                <a href="#"><img class="navbar__logo__img" src="/resources/imgs/common/logo-white.png"></a>
            </div>
            <div class="navbar__right">
                <div class="navbar__search">
                    <input type="text" name="search" id="search">
                    <button type="button" class="search__btn">
                        <i class="fas fa-search"></i>
                    </button>
                </div>
                <ul class="navbar__menu">
                    <li class="navbar__menu__item">마이페이지</li>
                    <li class="navbar__menu__item">거래등록</li>                    
                    <li class="navbar__menu__item">로그아웃</li>
                </ul>
            </div>
        </div>        
    </nav>     
    <!--Mypage Navbar -->
    <nav id="mypage">
        <ul class="mypage__menu">
            <li class="mypage__menu__item"><a href="#">프로필</a></li>
            <li class="mypage__menu__item navbar-click">
                <a href="#">거래내역</a>
                <ul class="navbar__list">
                    <li class="navbar__list__item"><button type="button" class="navbar__list__btn">내요청</button></li>
                    <li class="navbar__list__item"><button type="button" class="navbar__list__btn">거래대기중</button></li>
                    <li class="navbar__list__item"><button type="button" class="navbar__list__btn">거래진행중</button></li>
                    <li class="navbar__list__item"><button type="button" class="navbar__list__btn">거래완료</button></li>
                </ul>
            </li>                    
            <li class="mypage__menu__item navbar-click">
                <a href="#">메시지</a>
                <ul class="navbar__list">
                    <li class="navbar__list__item"><button type="button" class="navbar__list__btn">받은메시지함</button></li>
                    <li class="navbar__list__item"><button type="button" class="navbar__list__btn">보낸메시지함</button></li>
                    <li class="navbar__list__item"><button type="button" class="navbar__list__btn">메시지쓰기</button></li>
                </ul>
            </li> 
        </ul>
    </nav>
    <!-- Request enrollment -->
    <section class="request mypage">
        <h2 class="mypage__title">거래등록</h2>
        <form name="reqSendInfo" id="reqSendInfo" action="ReqSend" method="POST">
            <ul>
                <li class="request__list">
                    <div class="list-label"><label for="request-region">지역</label></div>
                    <div class="list-value">
                        <select name="list-region" id="list-region">
                            <option value="select">Select</option>
                            <option value="01">서울</option>
                            <option value="02">인천</option>
                            <option value="03">부산</option>
                            <option value="04">대구</option>
                            <option value="05">광주</option>
                            <option value="06">대전</option>
                            <option value="07">울산</option>
                            <option value="08">세종</option>
                            <option value="09">경기</option>
                            <option value="10">강원</option>
                            <option value="11">충북</option>
                            <option value="12">충남</option>
                            <option value="13">전북</option>
                            <option value="14">전남</option>
                            <option value="15">경북</option>
                            <option value="16">경남</option>
                            <option value="17">제주</option>
                        </select>
                    </div>
                </li>
                <li class="request__list">
                    <div class="list-label">분야</div>
                    <div class="list-value">
                        <select name="rqFilterCode" id="list-mainCtg">
                            <option value="select">Select</option>
                            <option value="1000">레슨</option>
                            <option value="2000">홈/리빙</option>
                            <option value="3000">비즈니스</option>
                            <option value="4000">디자인</option>
                            <option value="5000">IT/프로그래밍</option>
                            <option value="6000">건강/미용</option>
                        </select>
                        <select name="rqSubCode" id="list-subCtg">
                            <option value="select">Select</option>
                            <option value="study">학업</option>
                            <option value="language">외국어</option>
                            <option value="music">음악</option>
                            <option value="art">미술</option>
                            <option value="music">스포츠</option>
                            <option value="certificate">자격증</option>
                        </select>
                    </div>
                </li>
                <li class="request__list">
                    <div class="list-label">기간</div>
                    <div class="list-value">
                        <input type="date" id="request-term-start"> ~ <input type="date" id="request-term-end">
                    </div>
                </li>
                <li class="request__list">
                    <div class="list-label"><label for="request-title">제목</label></div>
                    <div class="list-value">
                        <input type="text" name="request-title" id="request-title">
                    </div>
                </li>
                <li class="request__list">
                    <div class="list-label"><label for="request-comment">내용을 적어주세요</label></div>
                    <div class="list-value">
                        <textarea name="request-comment" id="request-comment" rows="15"></textarea>
                    </div>
                </li>
            </ul>
            <div class="mypage__bottom">
                <button type="button" class="mypage__btn">전송하기</button>
            </div>
        </form>
    </section>
</body>
</html>
