<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>모헬: 모두의 헬퍼 - 프로필 및 리뷰</title>
    <meta name="description" content="아이디 클릭시 프로필 페이지">
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
                    <li class="navbar__menu__item">역경매등록</li>                    
                    <li class="navbar__menu__item">로그아웃</li>
                </ul>
            </div>
        </div>        
    </nav>     
    <!-- Profile and Review -->
    <!-- Profile -->
    <section class="profile mypage">
        <div class="profile__container">
            <h2 class="mypage__title profile__h2">프로필 및 리뷰</h2>
            <table class="profile__info"> 
                <tr class="profile__list">
                    <th class="profile__title">아이디</th>
                    <td class="profile__contents">soo</td>
                </tr>
                <tr class="profile__list">
                    <th class="profile__title">E-mail</th>
                    <td class="profile__contents">mohel@naver.com</td>
                </tr>
                <tr class="profile__list">
                    <th class="profile__title">사는곳</th>
                    <td class="profile__contents">인천광역시 미추홀구 매소홀로488번길 6-32 태승빌딩 5층</td>
                </tr>
                <tr class="profile__list">
                    <th class="profile__title">소속</th>
                    <td class="profile__contents">YBM 회화 강사</td>
                </tr>
                <tr class="profile__list">
                    <th class="profile__title">경력</th>
                    <td class="profile__contents">
                        - GQ Korea 프리랜서 번역가<br>
                        - Pagoda One 전임 회화 강사<br>
                        - 인터파크 Paedea Plus<br>
                        - 크몽 튜터 1년차
                    </td>
                </tr>
            </table>
        </div>
    <!-- Review -->
    </section>
    <section class="profile__review">
        <div class="profile__review__container">
            <div class="review__score">
                <ul class="review-percent">
                    <li class="review-totalStar"><i class="fas fa-star"></i></li>
                    <li class="review-totalStar"><i class="fas fa-star"></i></li>
                    <li class="review-totalStar"><i class="fas fa-star"></i></li>
                    <li class="review-totalStar"><i class="fas fa-star"></i></li>
                    <li class="review-totalStar"><i class="fas fa-star-half"></i></li>
                </ul>
                <div class="review__score__info">
                    <span class="review-totalScore">4.5</span>
                    <span class="review-number">(37개 리뷰)</span>
                </div>
            </div>
            <ul class="review__list">
                <li class="review__item">
                    <div class="review__comments">
                        <div class="review__comments__text">
                            목적에 맞는 로고가 나왔어요. 수정사항들도 계속 반영해주셨어요. 너무 감사합니다.
                        </div>
                    </div>
                    <div class="review__info">
                        <div class="review__info__item">
                            <span class="review-id">soo</span>
                            <span class="review-date">2021.03.02</span>
                        </div>
                        <div class="review__info__item">
                            <ul class="review-percent">
                                <li class="review-star"><i class="fas fa-star"></i></li>
                                <li class="review-star"><i class="fas fa-star"></i></li>
                                <li class="review-star"><i class="fas fa-star"></i></li>
                                <li class="review-star"><i class="fas fa-star"></i></li>
                                <li class="review-star"><i class="fas fa-star"></i></li>
                            </ul>
                        </div>
                        <div class="review__info__item">
                            <div class="review-subCtg">제품 디자인</div>
                        </div>
                    </div>
                </li>
                <li class="review__item">
                    <div class="review__comments">
                        <div class="review__comments__text">
                            목적에 맞는 로고가 나왔어요. 수정사항들도 계속 반영해주셨어요. 너무 감사합니다.
                        </div>
                    </div>
                    <div class="review__info">
                        <div class="review__info__item">
                            <span class="review-id">soo</span>
                            <span class="review-date">2021.03.02</span>
                        </div>
                        <div class="review__info__item">
                            <ul class="review-percent">
                                <li class="review-star"><i class="fas fa-star"></i></li>
                                <li class="review-star"><i class="fas fa-star"></i></li>
                                <li class="review-star"><i class="fas fa-star"></i></li>
                                <li class="review-star"><i class="fas fa-star"></i></li>
                                <li class="review-star"><i class="far fa-star"></i></li>
                            </ul>
                        </div>
                        <div class="review__info__item">
                            <div class="review-subCtg">제품 디자인</div>
                        </div>
                    </div>
                </li>
                <li class="review__item">
                    <div class="review__comments">
                        <div class="review__comments__text">
                            목적에 맞는 로고가 나왔어요. 수정사항들도 계속 반영해주셨어요. 너무 감사합니다.
                        </div>
                    </div>
                    <div class="review__info">
                        <div class="review__info__item">
                            <span class="review-id">soo</span>
                            <span class="review-date">2021.03.02</span>
                        </div>
                        <div class="review__info__item">
                            <ul class="review-percent">
                                <li class="review-star"><i class="fas fa-star"></i></li>
                                <li class="review-star"><i class="fas fa-star"></i></li>
                                <li class="review-star"><i class="fas fa-star"></i></li>
                                <li class="review-star"><i class="far fa-star"></i></li>
                                <li class="review-star"><i class="far fa-star"></i></li>
                            </ul>
                        </div>
                        <div class="review__info__item">
                            <div class="review-subCtg">제품 디자인</div>
                        </div>
                    </div>
                </li>
                <li class="review__item">
                    <div class="review__comments">
                        <div class="review__comments__text">
                            목적에 맞는 로고가 나왔어요. 수정사항들도 계속 반영해주셨어요. 너무 감사합니다.
                        </div>
                    </div>
                    <div class="review__info">
                        <div class="review__info__item">
                            <span class="review-id">soo</span>
                            <span class="review-date">2021.03.02</span>
                        </div>
                        <div class="review__info__item">
                            <ul class="review-percent">
                                <li class="review-star"><i class="fas fa-star"></i></li>
                                <li class="review-star"><i class="fas fa-star"></i></li>
                                <li class="review-star"><i class="fas fa-star"></i></li>
                                <li class="review-star"><i class="fas fa-star"></i></li>
                                <li class="review-star"><i class="fas fa-star"></i></li>
                            </ul>
                        </div>
                        <div class="review__info__item">
                            <div class="review-subCtg">제품 디자인</div>
                        </div>
                    </div>
                </li>
                <li class="review__item">
                    <div class="review__comments">
                        <div class="review__comments__text">
                            목적에 맞는 로고가 나왔어요. 수정사항들도 계속 반영해주셨어요. 너무 감사합니다.
                        </div>
                    </div>
                    <div class="review__info">
                        <div class="review__info__item">
                            <span class="review-id">soo</span>
                            <span class="review-date">2021.03.02</span>
                        </div>
                        <div class="review__info__item">
                            <ul class="review-percent">
                                <li class="review-star"><i class="fas fa-star"></i></li>
                                <li class="review-star"><i class="fas fa-star"></i></li>
                                <li class="review-star"><i class="far fa-star"></i></li>
                                <li class="review-star"><i class="far fa-star"></i></li>
                                <li class="review-star"><i class="far fa-star"></i></li>
                            </ul>
                        </div>
                        <div class="review__info__item">
                            <div class="review-subCtg">제품 디자인</div>
                        </div>
                    </div>
                </li>
                <li class="review__item">
                    <div class="review__comments">
                        <div class="review__comments__text">
                            목적에 맞는 로고가 나왔어요. 수정사항들도 계속 반영해주셨어요. 너무 감사합니다.
                        </div>
                    </div>
                    <div class="review__info">
                        <div class="review__info__item">
                            <span class="review-id">soo</span>
                            <span class="review-date">2021.03.02</span>
                        </div>
                        <div class="review__info__item">
                            <ul class="review-percent">
                                <li class="review-star"><i class="fas fa-star"></i></li>
                                <li class="review-star"><i class="fas fa-star"></i></li>
                                <li class="review-star"><i class="fas fa-star"></i></li>
                                <li class="review-star"><i class="fas fa-star"></i></li>
                                <li class="review-star"><i class="fas fa-star"></i></li>
                            </ul>
                        </div>
                        <div class="review__info__item">
                            <div class="review-subCtg">제품 디자인</div>
                        </div>
                    </div>
                </li>
                <li class="review__item">
                    <div class="review__comments">
                        <div class="review__comments__text">
                            목적에 맞는 로고가 나왔어요. 수정사항들도 계속 반영해주셨어요. 너무 감사합니다.
                        </div>
                    </div>
                    <div class="review__info">
                        <div class="review__info__item">
                            <span class="review-id">soo</span>
                            <span class="review-date">2021.03.02</span>
                        </div>
                        <div class="review__info__item">
                            <ul class="review-percent">
                                <li class="review-star"><i class="fas fa-star"></i></li>
                                <li class="review-star"><i class="fas fa-star"></i></li>
                                <li class="review-star"><i class="fas fa-star"></i></li>
                                <li class="review-star"><i class="fas fa-star"></i></li>
                                <li class="review-star"><i class="fas fa-star"></i></li>
                            </ul>
                        </div>
                        <div class="review__info__item">
                            <div class="review-subCtg">제품 디자인</div>
                        </div>
                    </div>
                </li>
                <li class="review__item">
                    <div class="review__comments">
                        <div class="review__comments__text">
                            목적에 맞는 로고가 나왔어요. 수정사항들도 계속 반영해주셨어요. 너무 감사합니다.
                        </div>
                    </div>
                    <div class="review__info">
                        <div class="review__info__item">
                            <span class="review-id">soo</span>
                            <span class="review-date">2021.03.02</span>
                        </div>
                        <div class="review__info__item">
                            <ul class="review-percent">
                                <li class="review-star"><i class="fas fa-star"></i></li>
                                <li class="review-star"><i class="fas fa-star"></i></li>
                                <li class="review-star"><i class="fas fa-star"></i></li>
                                <li class="review-star"><i class="fas fa-star"></i></li>
                                <li class="review-star"><i class="fas fa-star"></i></li>
                            </ul>
                        </div>
                        <div class="review__info__item">
                            <div class="review-subCtg">제품 디자인</div>
                        </div>
                    </div>
                </li>
                <li class="review__item">
                    <div class="review__comments">
                        <div class="review__comments__text">
                            목적에 맞는 로고가 나왔어요. 수정사항들도 계속 반영해주셨어요. 너무 감사합니다.
                        </div>
                    </div>
                    <div class="review__info">
                        <div class="review__info__item">
                            <span class="review-id">soo</span>
                            <span class="review-date">2021.03.02</span>
                        </div>
                        <div class="review__info__item">
                            <ul class="review-percent">
                                <li class="review-star"><i class="fas fa-star"></i></li>
                                <li class="review-star"><i class="fas fa-star"></i></li>
                                <li class="review-star"><i class="fas fa-star"></i></li>
                                <li class="review-star"><i class="fas fa-star"></i></li>
                                <li class="review-star"><i class="fas fa-star"></i></li>
                            </ul>
                        </div>
                        <div class="review__info__item">
                            <div class="review-subCtg">제품 디자인</div>
                        </div>
                    </div>
                </li>
                <li class="review__item">
                    <div class="review__comments">
                        <div class="review__comments__text">
                            목적에 맞는 로고가 나왔어요. 수정사항들도 계속 반영해주셨어요. 너무 감사합니다.
                        </div>
                    </div>
                    <div class="review__info">
                        <div class="review__info__item">
                            <span class="review-id">soo</span>
                            <span class="review-date">2021.03.02</span>
                        </div>
                        <div class="review__info__item">
                            <ul class="review-percent">
                                <li class="review-star"><i class="fas fa-star"></i></li>
                                <li class="review-star"><i class="fas fa-star"></i></li>
                                <li class="review-star"><i class="fas fa-star"></i></li>
                                <li class="review-star"><i class="fas fa-star"></i></li>
                                <li class="review-star"><i class="fas fa-star"></i></li>
                            </ul>
                        </div>
                        <div class="review__info__item">
                            <div class="review-subCtg">제품 디자인</div>
                        </div>
                    </div>
                </li>
            </ul>
            <div class="review__more">
                <button type="button" class="review__more__btn">
                    <span><i class="fas fa-plus"></i></span>
                    <span>더보기</span>
                </button>
            </div>
        </div>       
    </section>
</body>
</html>