<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>모헬: 모두의 헬퍼 - 받은 메시지함</title>
    <meta name="description" content="받은 메시지함 페이지">
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
            <li class="mypage__menu__item"><a href="#">프로필</a></li>
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
    <!-- Message List -->
    <section class="message mypage">
        <div class="message__container">
            <h2 class="mypage__title">받은 메시지함</h2>
            <table class="message__info"> 
                <colgroup>
                    <col style="width: 5%;">
                    <col style="width: 12%;">
                    <col style="width: 68%;">
                    <col style="width: 15%;">
                </colgroup>               
                <thead>
                    <tr>
                        <th class="message__head"><i class="fas fa-envelope"></i></th>
                        <th class="message__head">보낸사람</th>
                        <th class="message__head">제목</th>
                        <th class="message__head">전송시간</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td class="message__data"><i class="fas fa-envelope"></i></td>
                        <td class="message__data pointer">soo</td>
                        <td class="message__data message__title pointer">시간 조정을 하고 싶습니다.</td>
                        <td class="message__data">2021-12-24 19:41</td>
                    </tr>
                    <tr>
                        <td class="message__data"><i class="fas fa-envelope"></i></td>
                        <td class="message__data pointer">soo</td>
                        <td class="message__data message__title pointer">시간 조정을 하고 싶습니다.</td>
                        <td class="message__data">2021-12-24 19:41</td>
                    </tr>
                    <tr>
                        <td class="message__data"><i class="fas fa-envelope"></i></td>
                        <td class="message__data pointer">soo</td>
                        <td class="message__data message__title pointer">시간 조정을 하고 싶습니다.</td>
                        <td class="message__data">2021-12-24 19:41</td>
                    </tr>
                    <tr>
                        <td class="message__data"><i class="fas fa-envelope"></i></td>
                        <td class="message__data pointer">soo</td>
                        <td class="message__data message__title pointer">시간 조정을 하고 싶습니다.</td>
                        <td class="message__data">2021-12-24 19:41</td>
                    </tr>
                    <tr>
                        <td class="message__data"><i class="fas fa-envelope"></i></td>
                        <td class="message__data pointer">soo</td>
                        <td class="message__data message__title pointer">시간 조정을 하고 싶습니다.</td>
                        <td class="message__data">2021-12-24 19:41</td>
                    </tr>
                    <tr>
                        <td class="message__data"><i class="fas fa-envelope"></i></td>
                        <td class="message__data pointer">soo</td>
                        <td class="message__data message__title pointer">시간 조정을 하고 싶습니다.</td>
                        <td class="message__data">2021-12-24 19:41</td>
                    </tr>
                    <tr>
                        <td class="message__data"><i class="fas fa-envelope"></i></td>
                        <td class="message__data pointer">soo</td>
                        <td class="message__data message__title pointer">시간 조정을 하고 싶습니다.</td>
                        <td class="message__data">2021-12-24 19:41</td>
                    </tr>
                    <tr>
                        <td class="message__data"><i class="fas fa-envelope"></i></td>
                        <td class="message__data pointer">soo</td>
                        <td class="message__data message__title pointer">시간 조정을 하고 싶습니다.</td>
                        <td class="message__data">2021-12-24 19:41</td>
                    </tr>
                    <tr>
                        <td class="message__data"><i class="fas fa-envelope"></i></td>
                        <td class="message__data pointer">soo</td>
                        <td class="message__data message__title pointer">시간 조정을 하고 싶습니다.</td>
                        <td class="message__data">2021-12-24 19:41</td>
                    </tr>
                    <tr>
                        <td class="message__data"><i class="fas fa-envelope"></i></td>
                        <td class="message__data pointer">soo</td>
                        <td class="message__data message__title pointer">시간 조정을 하고 싶습니다.</td>
                        <td class="message__data">2021-12-24 19:41</td>
                    </tr>
                    <tr>
                        <td class="message__data"><i class="fas fa-envelope"></i></td>
                        <td class="message__data pointer">soo</td>
                        <td class="message__data message__title pointer">시간 조정을 하고 싶습니다.</td>
                        <td class="message__data">2021-12-24 19:41</td>
                    </tr>
                    <tr>
                        <td class="message__data"><i class="fas fa-envelope"></i></td>
                        <td class="message__data pointer">soo</td>
                        <td class="message__data message__title pointer">시간 조정을 하고 싶습니다.</td>
                        <td class="message__data">2021-12-24 19:41</td>
                    </tr>
                    <tr>
                        <td class="message__data"><i class="fas fa-envelope"></i></td>
                        <td class="message__data pointer">soo</td>
                        <td class="message__data message__title pointer">시간 조정을 하고 싶습니다.</td>
                        <td class="message__data">2021-12-24 19:41</td>
                    </tr>
                    <tr>
                        <td class="message__data"><i class="fas fa-envelope"></i></td>
                        <td class="message__data pointer">soo</td>
                        <td class="message__data message__title pointer">시간 조정을 하고 싶습니다.</td>
                        <td class="message__data">2021-12-24 19:41</td>
                    </tr>
                    <tr>
                        <td class="message__data"><i class="fas fa-envelope"></i></td>
                        <td class="message__data pointer">soo</td>
                        <td class="message__data message__title pointer">시간 조정을 하고 싶습니다.</td>
                        <td class="message__data">2021-12-24 19:41</td>
                    </tr>
                </tbody>                      
            </table>
            <div class="message__move">
                <ul class="message__move__list">
                    <li class="message__list"><a class="message__arrow" href="#"><i class="fas fa-arrow-left"></i></a></li>
                    <li class="message__list"><a class="message__num" href="#">1</a></li>
                    <li class="message__list"><a class="message__num" href="#">2</a></li>
                    <li class="message__list"><a class="message__num" href="#">3</a></li>
                    <li class="message__list"><a class="message__num" href="#">4</a></li>
                    <li class="message__list"><a class="message__num" href="#">5</a></li>
                    <li class="message__list"><a class="message__arrow" href="#"><i class="fas fa-arrow-right"></i></a></li>
                </ul>
            </div>
        </div>
    </section>
</body>
</html>