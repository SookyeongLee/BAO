<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>모헬: 모두의 헬퍼 - 경매 진행전</title>
    <meta name="description" content="경매내역-경매 진행전-helper 페이지">
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
                    <li class="navbar__menu__item">경매등록</li>                    
                    <li class="navbar__menu__item">로그아웃</li>
                </ul>
            </div>
        </div>        
    </nav>     
    <!--Mypage Navbar -->
    <nav id="mypage">
        <ul class="mypage__menu">
            <li class="mypage__menu__item">
                <a href="#">프로필</a>
            </li>
            <li class="mypage__menu__item navbar-click">
                <a href="#">경매내역</a>
                <ul class="navbar__list">
                    <li class="navbar__list__item"><button type="button" class="navbar__list__btn">경매진행전</button></li>
                    <li class="navbar__list__item"><button type="button" class="navbar__list__btn">경매진행중</button></li>
                    <li class="navbar__list__item"><button type="button" class="navbar__list__btn">경매완료</button></li>
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
    <!-- waiting-helper -->
    <section class="dealList mypage">
        <h2 class="mypage__title">경매 진행전</h2>
        <div class="dealList__container">
            <ul class="dealList__account">
                <li class="dealList__account__member"><button type="button" class="dealList__account__btn">helper</button></li>
                <li class="dealList__account__member"><button type="button" class="dealList__account__btn">wisher</button></li>
            </ul>
            <div class="dealList__list__container">
                <div class="dealList__member">helper</div>
                <ul class="dealList__list">
                    <li class="dealList__list__item">
                        <div class="delList__img"><img class="list__item__img" src="/resources/imgs/common/2000.jpg"></div>
                        <ul class="dealList__description">
                            <li class="dealList-term">2021-01-03 ~ 2021-01-17</li>
                            <li class="dealList-subCtg">인테리어</li>
                            <li class="dealList-title">거실 인테리어 요청</li>
                            <li class="dealList-situation">역경매 진행중!</li>
                        </ul>
                    </li>
                    <li class="dealList__list__item">
                        <div class="delList__img"><img class="list__item__img" src="/resources/imgs/common/4000.jpg"></div>
                        <ul class="dealList__description">
                            <li class="dealList-term">2020-12-03 ~ 2020-12-17</li>
                            <li class="dealList-subCtg">일러스트 디자인</li>
                            <li class="dealList-title">컵에 넣을 동물 일러스트가 필요합니다.</li>
                            <li class="dealList-situation">역경매 기한만료! 이제 wisher의 낙찰을 기다려주세요</li>
                        </ul>
                    </li>
                    <li class="dealList__list__item">
                        <div class="delList__img"><img class="list__item__img" src="/resources/common/5000.jpg"></div>
                        <ul class="dealList__description">
                            <li class="dealList-term">2020-11-03 ~ 2020-11-17</li>
                            <li class="dealList-subCtg">웹사이트 개발</li>
                            <li class="dealList-title">쇼핑몰 사이트 개발</li>
                            <li class="dealList-situation">역경매 기한만료! 이제 wisher의 낙찰을 기다려주세요</li>
                        </ul>
                    </li>
                    <li class="dealList__list__item dealList__list__item__more">                       
                        <button type="button" class="dealList__more__btn">
                            <span><i class="fas fa-plus"></i></span>
                            <span>더보기</span>
                        </button>                        
                    </li>
                </ul>    
            </div>
        </div>
    </section>
</body>
</html>