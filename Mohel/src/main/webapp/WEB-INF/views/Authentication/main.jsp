<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>모헬: 모두의 헬퍼</title>
    <meta name="description" content="메인 페이지">
    <link rel="icon" type="image/png" href="/resources/imgs/common/logo-m.png">
    <script src="https://kit.fontawesome.com/301043e4a8.js" crossorigin="anonymous"></script>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="/resources/css/main.css">
</head>
<body>
    <!-- Navbar -->
    <nav id="navbar">
        <div class="navbar__logo">
            <a href="#"><img class="navbar__logo__img" src="/resources/imgs/common/logo.png"></a>
        </div>
        <ul class="navbar__menu">
            <li class="navbar__menu__item">마이페이지</li>
            <li class="navbar__menu__item">역경매등록</li>                    
            <li class="navbar__menu__item">로그인</li>
        </ul>
    </nav>
    <!-- Header -->
    <header id="head">           
        <!-- 홈화면(검색창) -->
        <div class="home">
            <div class="home__description">
                <p class="home__description__p">쉽고 편리한 역경매 플랫폼</p>
                <div class="home__description__title">도움이 필요할 땐, 모헬</div>
            </div>              
            <div class="home__search">
                <input type="text" class="home__search__input">
                <button type="button" class="home__search__btn"><i class="fas fa-search"></i></button>            
            </div>
        </div>
    </header>
    <!-- Section -->
    <section id="service">
        <!-- 대분류 -->
        <div class="category">
            <ul class="category__menu">
                <li class="category__menu__item">
                    <div class="category__menu-icon"><i class="fas fa-palette"></i></div>
                    <div class="category__menu-name">디자인</div>
                </li>
                <li class="category__menu__item">
                    <div class="category__menu-icon"><i class="fas fa-laptop-code"></i></div>
                    <div class="category__menu-name">IT/프로그래밍</div>
                </li>
                <li class="category__menu__item">
                    <div class="category__menu-icon"><i class="fas fa-business-time"></i></div>
                    <div class="category__menu-name">비즈니스</div>
                </li>
                <li class="category__menu__item">
                    <div class="category__menu-icon"><i class="fas fa-chalkboard-teacher"></i></div>
                    <div class="category__menu-name">레슨</div>
                </li>
                <li class="category__menu__item">
                    <div class="category__menu-icon"><i class="fas fa-house-user"></i></div>
                    <div class="category__menu-name">홈/리빙</div>
                </li>
                <li class="category__menu__item">
                    <div class="category__menu-icon"><i class="fas fa-running"></i></div>
                    <div class="category__menu-name">건강/미용</div>
                </li>
            </ul>
        </div>
        <!-- 역경매 리스트 -->
        <div class="list">
            <!-- 최신순 -->
            <div class="list__container">
                <h1 class="list__title">새로운 역경매</h1>
                <ul class="list__items">
                    <li class="list__item">
                        <img class="list__item__img" src="/resources/imgs/common/1000.jpg">
                        <div class="list__item__description">
                            <h4 class="list__item-mainCtg">외국어</h4>
                            <div class="list__item-title">유학준비를 위해서 영어회화 배우고 싶습니다.</div>
                        </div>
                    </li>
                    <li class="list__item">
                        <img class="list__item__img" src="/resources/imgs/common/2000.jpg">
                        <div class="list__item__description">
                            <h4 class="list__item-mainCtg">외국어</h4>
                            <div class="list__item-title">유학준비를 위해서 영어회화 배우고 싶습니다.</div>
                        </div>
                    </li>
                    <li class="list__item">
                        <img class="list__item__img" src="/resources/imgs/common/3000.jpg">
                        <div class="list__item__description">
                            <h4 class="list__item-mainCtg">외국어</h4>
                            <div class="list__item-title">유학준비를 위해서 영어회화 배우고 싶습니다.</div>
                        </div>
                    </li>
                </ul>
                <ul class="list__items">
                    <li class="list__item">
                        <img class="list__item__img" src="/resources/imgs/common/4000.jpg">
                        <div class="list__item__description">
                            <h4 class="list__item-mainCtg">외국어</h4>
                            <div class="list__item-title">유학준비를 위해서 영어회화 배우고 싶습니다.</div>
                        </div>
                    </li>
                    <li class="list__item">
                        <img class="list__item__img" src="/resources/imgs/common/5000.jpg">
                        <div class="list__item__description">
                            <h4 class="list__item-mainCtg">외국어</h4>
                            <div class="list__item-title">유학준비를 위해서 영어회화 배우고 싶습니다.</div>
                        </div>
                    </li>
                    <li class="list__item">
                        <img class="list__item__img" src="/resources/imgs/common/6000.jpg">
                        <div class="list__item__description">
                            <h4 class="list__item-mainCtg">외국어</h4>
                            <div class="list__item-title">유학준비를 위해서 영어회화 배우고 싶습니다.</div>
                        </div>
                    </li>
                </ul>
            </div>
            <!-- 인기순 -->
            <div class="list__container">
                <h1 class="list__title">인기 역경매</h1>
                <ul class="list__items">
                    <li class="list__item">
                        <img class="list__item__img" src="/resources/imgs/common/1000.jpg">
                        <div class="list__item__description">
                            <h4 class="list__item-mainCtg">외국어</h4>
                            <div class="list__item-title">유학준비를 위해서 영어회화 배우고 싶습니다.</div>
                        </div>
                    </li>
                    <li class="list__item">
                        <img class="list__item__img" src="/resources/imgs/common/2000.jpg">
                        <div class="list__item__description">
                            <h4 class="list__item-mainCtg">외국어</h4>
                            <div class="list__item-title">유학준비를 위해서 영어회화 배우고 싶습니다.</div>
                        </div>
                    </li>
                    <li class="list__item">
                        <img class="list__item__img" src="/resources/imgs/common/3000.jpg">
                        <div class="list__item__description">
                            <h4 class="list__item-mainCtg">외국어</h4>
                            <div class="list__item-title">유학준비를 위해서 영어회화 배우고 싶습니다.</div>
                        </div>
                    </li>
                </ul>
                <ul class="list__items">
                    <li class="list__item">
                        <img class="list__item__img" src="/resources/imgs/common/4000.jpg">
                        <div class="list__item__description">
                            <h4 class="list__item-mainCtg">외국어</h4>
                            <div class="list__item-title">유학준비를 위해서 영어회화 배우고 싶습니다.</div>
                        </div>
                    </li>
                    <li class="list__item">
                        <img class="list__item__img" src="/resources/imgs/common/5000.jpg">
                        <div class="list__item__description">
                            <h4 class="list__item-mainCtg">외국어</h4>
                            <div class="list__item-title">유학준비를 위해서 영어회화 배우고 싶습니다.</div>
                        </div>
                    </li>
                    <li class="list__item">
                        <img class="list__item__img" src="/resources/imgs/common/6000.jpg">
                        <div class="list__item__description">
                            <h4 class="list__item-mainCtg">외국어</h4>
                            <div class="list__item-title">유학준비를 위해서 영어회화 배우고 싶습니다.</div>
                        </div>
                    </li>
                </ul>
            </div>
        </div>        
    </section>
</body>
</html>