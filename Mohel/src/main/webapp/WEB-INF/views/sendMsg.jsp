<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>모헬: 모두의 헬퍼 - 메시지 쓰기</title>
    <meta name="description" content="메시지 보내는 페이지">
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
    <!-- Send Message -->
    <section class="sendMsg mypage">
        <h2 class="mypage__title">메시지 쓰기</h2>
        <form name="" action="" method="POST">
            <table class="sendMsg__info"> 
                <tbody>
                    <tr class="sendMsg__list">
                        <th class="sendMsg__title"><label for="sendMsg-recipient">받는사람</label></th>
                        <td class="sendMsg__contents"><input class="sendMsg__input" type="text" id="sendMsg-recipient" name="sendMsg-recipient"></td>
                    </tr>
                    <tr class="sendMsg__list">
                        <th class="sendMsg__title"><label for="sendMsg-title">제목</label></th>
                        <td class="sendMsg__contents"><input class="sendMsg__input" type="text" id="sendMsg-title" name="sendMsg-title"></td>
                    </tr>
                </tbody>
            </table>
            <div class="sendMsg__textarea">
                <textarea id="sendMsg-contents" name="sendMsg-contents" cols="139" rows="25"></textarea>            
            </div>
            <div class="mypage__bottom">
                <button type="submit" class="mypage__btn">보내기</button>
            </div>
        </form>
    </div>
</body>
</html>