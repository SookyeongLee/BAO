<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>모헬: 모두의 헬퍼 - 프로필</title>
    <meta name="description" content="프로필 페이지">
    <link rel="icon" type="image/png" href="/resources/imgs/common/logo-m.png">
    <script src="https://kit.fontawesome.com/301043e4a8.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="/resources/css/mypage.css">
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
                    <button class="search__btn">
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
            <li class="mypage__menu__item"><a href="#">거래내역</a></li>                    
            <li class="mypage__menu__item"><a href="#">메시지</a></li> 
        </ul>
    </nav>
    <!-- Profile -->
    <section class="profile mypage">
        <div class="profile__container">
            <h2 class="mypage__title profile__h2">프로필 설정</h2>
            <form name="" action="" method="POST">
                <table class="profile__info"> 
                    <tr class="profile__list">
                        <th class="profile__title">아이디</th>
                        <td class="profile__contents">soo</td>
                    </tr>
                    <tr class="profile__list">
                        <th class="profile__title"><label for="pw">비밀번호</label></th>
                        <td class="profile__contents"><input class="profile__input" type="password" id="pw" name="pw"></td>
                    </tr>
                    <tr class="profile__list">
                        <th class="profile__title"><label for="pw-check">비밀번호 확인</label></th>
                        <td class="profile__contents"><input class="profile__input" type="password" id="pw-check" name="pw-check"></td>
                    </tr>
                    <tr class="profile__list">
                        <th class="profile__title"><label for="pw-change">새 비밀번호</label></th>
                        <td class="profile__contents"><input class="profile__input" type="password" id="pw-change" name="pw-change"></td>
                    </tr>
                    <tr class="profile__list">
                        <th class="profile__title"><label for="email">E-mail</label></th>
                        <td class="profile__contents"><input class="profile__input" type="email" id="email" name="email"></td>
                    </tr>
                    <tr class="profile__list">
                        <th class="profile__title"><label for="region">사는곳</label></th>
                        <td class="profile__contents"><input class="profile__input" type="text" id="region" name="region"></td>
                    </tr>
                    <tr class="profile__list">
                        <th class="profile__title"><label for="division">소속</label></th>
                        <td class="profile__contents"><input class="profile__input" type="text" id="division" name="division"></td>
                    <tr/>
                    <tr class="profile__list">
                        <th class="profile__title"><label for="career">경력</label></th>
                        <td class="profile__contents"><textarea class="profile__textarea" id="career" name="career" cols="60" rows="6"></textarea><td/>
                    </tr>
                </table>
                <div class="mypage__bottom">
                    <button type="submit" class="mypage__btn">수정하기</button>
                </div>
            </form>
        </div>
    </div>
</body>
</html>