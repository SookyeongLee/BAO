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
    <link rel="stylesheet" href="/resources/css/common.css">
    <script src="/resources/src/main.js" defer></script>
    <script src="https://kit.fontawesome.com/301043e4a8.js" crossorigin="anonymous"></script>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600;700&display=swap" rel="stylesheet">
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
    <!-- Send Message -->
    <section class="sendMsg mypage">
        <h2 class="mypage__title">메시지 쓰기</h2>
        <form name="sendInfo" id="sendInfo" action="Send" method="POST">
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
                <button type="button" class="mypage__btn">보내기</button>
            </div>
        </form>
    </section>
</body>
</html>