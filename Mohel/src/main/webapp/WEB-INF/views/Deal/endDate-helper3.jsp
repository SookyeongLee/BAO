<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>모헬: 모두의 헬퍼 - 완료</title>
    <meta name="description" content="거래상태-완료-helper 페이지">
    <link rel="icon" type="image/png" href="/resources/imgs/common/logo-m.png">
    <script src="https://kit.fontawesome.com/301043e4a8.js" crossorigin="anonymous"></script>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="/resources/css/common.css">
    <script src="/resources/src/main.js" defer></script>
    <script src="/resources/src/endDate-helper.js" defer></script>
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
                    <li class="navbar__menu__item">역경매등록</li>                    
                    <li class="navbar__menu__item">로그아웃</li>
                </ul>
            </div>
        </div>        
    </nav>     
    <!--Mypage Navbar -->
    <nav id="mypage">
        <ul class="mypage__menu">
            <li class="mypage__menu__item">
                <button type="button">프로필</button>
            </li>
            <li class="mypage__menu__item">
                <button type="button" class="deal-btn">거래상태</button>
                <ul class="navbar__list deal-list">
                    <li class="navbar__list__item"><button type="button" class="navbar__list__btn">진행전</button></li>
                    <li class="navbar__list__item"><button type="button" class="navbar__list__btn">진행중</button></li>
                    <li class="navbar__list__item"><button type="button" class="navbar__list__btn">완료</button></li>
                </ul>
            </li>                    
            <li class="mypage__menu__item">
                <button type="button" class="message-btn">메시지</button>
                <ul class="navbar__list message-list">
                    <li class="navbar__list__item"><button type="button" class="navbar__list__btn">받은메시지함</button></li>
                    <li class="navbar__list__item"><button type="button" class="navbar__list__btn">보낸메시지함</button></li>
                    <li class="navbar__list__item"><button type="button" class="navbar__list__btn">메시지쓰기</button></li>
                </ul>
            </li> 
        </ul>
    </nav>
    <!-- waiting-helper -->
    <section class="dealList mypage">
        <h2 class="mypage__title">완료</h2>
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
                            <li><button type="button" class="dealList-btn view__btn">리뷰보기</button></li>
                            <li class="dealList-subCtg">인테리어</li>
                            <li class="dealList-title">거실 인테리어 요청</li>
                        </ul>
                    </li>
                    <li class="dealList__list__item">
                        <div class="delList__img"><img class="list__item__img" src="/resources/imgs/common/4000.jpg"></div>
                        <ul class="dealList__description">
                            <li><button type="button" class="dealList-btn view__btn">리뷰보기</button></li>
                            <li class="dealList-subCtg">일러스트 디자인</li>
                            <li class="dealList-title">컵에 넣을 동물 일러스트가 필요합니다.</li>
                        </ul>
                    </li>
                    <li class="dealList__list__item">
                        <div class="delList__img"><img class="list__item__img" src="/resources/imgs/common/5000.jpg"></div>
                        <ul class="dealList__description">
                            <li><div class="dealList-uncontacted">성사되지 않은 경매</div></li>
                            <li class="dealList-subCtg">웹사이트 개발</li>
                            <li class="dealList-title">쇼핑몰 사이트 개발</li>
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

    <!-- 리뷰보기 모달 시작 -->
    <div class="modal__container" id="modal">
        <div class="modal">
            <button class="close-btn" id="close">
                <i class="fa fa-times"></i>
            </button>
            <div class="modal__header">
                <div class="modal__header__title">리뷰보기</div>
            </div>
            <div class="modal__content">
                <div class="review__list1">
                    <img src="/resources/imgs/common/2000.jpg" class="review__list__img">
                    <div class="review__list__subCtg">인테리어</div>
                    <ul class="review__list__score">
                        <li class="review__list__score-star"><img src="/resources/imgs/deal/starrate.png" class="star-img"></li>
                        <li class="review__list__score-star"><img src="/resources/imgs/deal/starrate.png" class="star-img"></li>
                        <li class="review__list__score-star"><img src="/resources/imgs/deal/starrate.png" class="star-img"></li>
                        <li class="review__list__score-star"><img src="/resources/imgs/deal/starrate.png" class="star-img"></li>
                        <li class="review__list__score-star"><img src="/resources/imgs/deal/starrate.png" class="star-img"></li>
                    </ul>
                </div>
                <div class="review__list2 review__box">         
                    <span class="review__list__text">목적에 맞는 로고가 나왔어요. 수정사항들도 계속 반영해주셨어요. 너무 감사합니다.</span> 
                </div>                            
            </div>
        </div>
    </div>
    <!-- 리뷰보기 모달 끝 -->

</body>
</html>