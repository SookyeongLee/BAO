<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>모헬: 모두의 헬퍼 - 역경매</title>
    <meta name="description" content="dealDetail 진행전 wisher 페이지">
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
    
    <section class="deal mypage">
        <h2 class="mypage__title">입시 레슨 희망합니다.</h2>
        <!-- Request -->
        <div class="deal__container">
            <div class="deal__img">
                <img src="/resources/imgs/common/1000.jpg" class="deal-img">
            </div>
            <div class="deal__info__container">
                <table class="deal__info"> 
                    <tr class="deal__list">
                        <th class="deal__title">역경매기간</th>
                        <td class="deal__contents">2021-01-03 ~ 2021-01-17</td>
                    </tr>
                    <tr class="deal__list">
                        <th class="deal__title">분야</th>
                        <td class="deal__contents">음악</td>
                    </tr>
                    <tr class="deal__list">
                        <th class="deal__title">지역</th>
                        <td class="deal__contents">인천</td>
                    </tr>
                    <tr class="profile__list">
                        <th class="deal__title">내용</th>
                        <td class="deal__contents">
                            싱어송라이터인 ‘그레타’(키이라 나이틀리)는 남자친구 ‘데이브’(애덤 리바인)가 메이저 음반회사와 계약을 하게 되면서 뉴욕으로 오게 된다. 그러나 행복도 잠시, 오랜 연인이자 음악적 파트너로서 함께 노래를 만들고 부르는 것이 좋았던 그레타와 달리 스타가 된 데이브의 마음은 어느새 변해버린다. 스타 음반프로듀서였지만 이제는 해고된 ‘댄’(마크 러팔로)은 미치기 일보직전 들른 뮤직바에서 그레타의 자작곡을 듣게 되고 아직 녹슬지 않은 촉을 살려 음반제작을 제안한다. 거리 밴드를 결성한 그들은 뉴욕의 거리를 스튜디오 삼아 진짜로 부르고 싶었던 노래를 만들어가는데…
                        </td>
                    </tr>
                </table>
                <div class="deal__button">
                    <button type="button" class="deal__btn1">수정하기</button>
                    <button type="button" class="deal__btn2">삭제하기</button>
                </div>
            </div>
        </div>
        <!-- Bidding -->
        <table class="bidding"> 
            <caption class="bidding__title">입찰기록내역</caption>
            <colgroup>
                <col style="width: 45%;">
                <col style="width: 35%;">
                <col style="width: 20%;">
            </colgroup>               
            <thead>
                <tr>
                    <th class="bidding__head right">입찰자</th>
                    <th class="bidding__head">금액</th>
                    <th class="bidding__head">낙찰</th>
                </tr>
            </thead>
            <tbody>                
                <tr>
                    <td class="bidding__data right"><button type="button" class="bidding__data__id">soo</button></td>
                    <td class="bidding__data right">13000원</td>
                    <td class="bidding__data"><button type="button" class="bidding__data__choice">선택</button></td>
                </tr>
                <tr>
                    <td class="bidding__data right"><button type="button" class="bidding__data__id">soo</button></td>
                    <td class="bidding__data right">13000원</td>
                    <td class="bidding__data"><button type="button" class="bidding__data__choice">선택</button></td>
                </tr>
                <tr>
                    <td class="bidding__data right"><button type="button" class="bidding__data__id">soo</button></td>
                    <td class="bidding__data right">13000원</td>
                    <td class="bidding__data"><button type="button" class="bidding__data__choice">선택</button></td>
                </tr>
                <tr>
                    <td class="bidding__data right"><button type="button" class="bidding__data__id">soo</button></td>
                    <td class="bidding__data right">13000원</td>
                    <td class="bidding__data"><button type="button" class="bidding__data__choice">선택</button></td>
                </tr>
                <tr>
                    <td class="bidding__data right"><button type="button" class="bidding__data__id">soo</button></td>
                    <td class="bidding__data right">13000원</td>
                    <td class="bidding__data"><button type="button" class="bidding__data__choice">선택</button></td>
                </tr>
                <tr>
                    <td class="bidding__data right"><button type="button" class="bidding__data__id">soo</button></td>
                    <td class="bidding__data right">13000원</td>
                    <td class="bidding__data"><button type="button" class="bidding__data__choice">선택</button></td>
                </tr>
                <tr>
                    <td class="bidding__data right"><button type="button" class="bidding__data__id">soo</button></td>
                    <td class="bidding__data right">13000원</td>
                    <td class="bidding__data"><button type="button" class="bidding__data__choice">선택</button></td>
                </tr>
                <tr>
                    <td class="bidding__data right"><button type="button" class="bidding__data__id">soo</button></td>
                    <td class="bidding__data right">13000원</td>
                    <td class="bidding__data"><button type="button" class="bidding__data__choice">선택</button></td>
                </tr>
                <tr>
                    <td class="bidding__data right"><button type="button" class="bidding__data__id">soo</button></td>
                    <td class="bidding__data right">13000원</td>
                    <td class="bidding__data"><button type="button" class="bidding__data__choice">선택</button></td>
                </tr>
                <tr>
                    <td class="bidding__data right"><button type="button" class="bidding__data__id">soo</button></td>
                    <td class="bidding__data right">13000원</td>
                    <td class="bidding__data"><button type="button" class="bidding__data__choice">선택</button></td>
                </tr>
                <tr>
                    <td class="bidding__data right"><button type="button" class="bidding__data__id">soo</button></td>
                    <td class="bidding__data right">13000원</td>
                    <td class="bidding__data"><button type="button" class="bidding__data__choice">선택</button></td>
                </tr>
                <tr>
                    <td class="bidding__data right"><button type="button" class="bidding__data__id">soo</button></td>
                    <td class="bidding__data right">13000원</td>
                    <td class="bidding__data"><button type="button" class="bidding__data__choice">선택</button></td>
                </tr>
                <tr>
                    <td class="bidding__data right"><button type="button" class="bidding__data__id">soo</button></td>
                    <td class="bidding__data right">13000원</td>
                    <td class="bidding__data"><button type="button" class="bidding__data__choice">선택</button></td>
                </tr>
                <tr>
                    <td class="bidding__data right"><button type="button" class="bidding__data__id">soo</button></td>
                    <td class="bidding__data right">13000원</td>
                    <td class="bidding__data"><button type="button" class="bidding__data__choice">선택</button></td>
                </tr>
                <tr>
                    <td class="bidding__data right"><button type="button" class="bidding__data__id">soo</button></td>
                    <td class="bidding__data right">13000원</td>
                    <td class="bidding__data"><button type="button" class="bidding__data__choice">선택</button></td>
                </tr>
            </tbody>                      
        </table>
    </section>   
</body>
</html>