<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>모헬: 모두의 헬퍼 - 경매진행중</title>
    <meta name="description" content="경매내역-경매진행중-wisher 페이지">
    <link rel="icon" type="image/png" href="/resources/imgs/common/logo-m.png">
    <script src="https://kit.fontawesome.com/301043e4a8.js" crossorigin="anonymous"></script>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="/resources/css/common.css">
    <script src="/resources/src/main.js" defer></script>
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
</head>
<body onLoad='iWisherScreen()'>
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
                <button type="button">프로필</button>
            </li>
            <li class="mypage__menu__item">
                <button type="button" class="deal-btn">거래상태</button>
                <ul class="navbar__list deal-list">
                    <li class="navbar__list__item"><button type="button" class="navbar__list__btn" onClick="waitingClick()">진행전</button></li>
                    <li class="navbar__list__item"><button type="button" class="navbar__list__btn" onClick="IngClick()">진행중</button></li>
                    <li class="navbar__list__item"><button type="button" class="navbar__list__btn" onClick="endClick()">완료</button></li>
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
        <h2 class="mypage__title">경매진행중</h2>
        <div class="dealList__container">
            <ul class="dealList__account">
                <li class="dealList__account__member"><button type="button" class="dealList__account__btn" onClick="IngHelperClick()">helper</button></li>
                <li class="dealList__account__member"><button type="button" class="dealList__account__btn" onClick="IngClick()">wisher</button></li>
            </ul>
            <div class="dealList__list__container">
                <div class="dealList__member">wisher</div>
                
                    <ul id="ingWisherList" class="list__items"></ul> 
                 
                 <div class="dealList__list__item dealList__list__item__more">                       
                        <button type="button" class="dealList__more__btn" onClick="plus()">
                            <span><i class="fas fa-plus"></i></span>
                            <span>더보기</span>
                        </button>                        
                    </div>
            </div>
        </div>
    </section>
</body>
<script>
function IngClick(){
	let form = document.createElement("form");
		form.action = "IngWisher";
		form.method = "Post";	
		  		    	
		document.body.appendChild(form);
		form.submit();
}
function IngHelperClick(){
	let form = document.createElement("form");
		form.action = "IngHelper";
		form.method = "Post";	
		  		    	
		document.body.appendChild(form);
		form.submit();
}
function endClick(){
	let form = document.createElement("form");
		form.action = "EndWisher";
		form.method = "Post";	
		  		    	
		document.body.appendChild(form);
		form.submit();
}
var k = 0;

function plus(){
	k += 3;
	iWisherScreen();
}

function iWisherScreen(){
let requestList = JSON.parse('${ingWisherList}');

for(let index=(0+k) ; index<(3+k) ; index++){
	if(index >= requestList.length)break;
let insertTr = " ";

insertTr +=  "<li class='dealList__list__item'>";
insertTr += "<div class='delList__img'><img class='list__item__img' src='../../resources/imgs/common/"+requestList[index].rqImage+"'></div>";
insertTr += "<ul class='dealList__description'>";
insertTr += "<li><button type='button' class='dealList-btn dealList-schedule'>스케줄 관리</button></li>";
insertTr += "<li class='dealList-subCtg'>"+requestList[index].rqSubName+"</li>";
insertTr += "<li class='dealList-title'>"+requestList[index].rqTitle+"</li>";
insertTr += "</ul>";
insertTr += "</li>";

$("#ingWisherList").append(insertTr)
}
}
</script>
</html>