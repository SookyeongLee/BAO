<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>모헬: 모두의 헬퍼 - 메시지</title>
    <meta name="description" content="메시지 디테일 페이지">
    <link rel="icon" type="image/png" href="/resources/imgs/common/logo-m.png">
    <script src="https://kit.fontawesome.com/301043e4a8.js" crossorigin="anonymous"></script>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="/resources/css/common.css">
    <script src="/resources/src/main.js" defer></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body onLoad="init()">
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
                <button type="button" onClick="pro()">프로필</button>
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
                    <li class="navbar__list__item"><button type="button" class="navbar__list__btn" onClick="recBox()">받은메시지함</button></li>
                    <li class="navbar__list__item"><button type="button" class="navbar__list__btn" onClick="sendBox()">보낸메시지함</button></li>
                    <li class="navbar__list__item"><button type="button" class="navbar__list__btn" onClick="msgForm()">메시지쓰기</button></li>
                </ul>
            </li> 
        </ul>
    </nav> 
    <!-- Message Detail -->
    <section class="msgDetail mypage">
      <section id="messageDetail"></section>
    </section>
</body>
<script>
function init(){
	alert('${dataList}');
	let msg = JSON.parse('${dataList}');
	
	let insertLi= " ";
	insertLi += "<h2 class='mypage__title'>메시지</h2>";
	insertLi += "<ul class='msgDeatil__info'>";
	insertLi += "<li class='msgDetail-title'>"+msg[0].msTitle+"</li>";
	insertLi += "<li class='msgDetail-sender'>보낸사람<span class='sender'>"+msg[0].msSender+"</span></li>";
	insertLi += "<li class='msgDetail-recipient'>받는사람<span class='recipient'>"+msg[0].msRecipient+"</span></li>";
	insertLi += "</ul>";
	insertLi += "<div class='msgDetail__contents'>"+msg[0].msComment+"</div>";
	insertLi += "<div class='mypage__bottom'>";
	insertLi += "<button type='button' class='mypage__btn' onClick='msgForm()'>답장하기</button>";
	insertLi += "</div>";
   
    $("#messageDetail").append(insertLi);

	
}
function sendBox(){
	let form = document.createElement("form");
	form.action="SendBox";
	form.method="POST";
	document.body.appendChild(form);
	form.submit();
}
function recBox(){
	let form = document.createElement("form");
	form.action="RecBox";
	form.method="POST";
	document.body.appendChild(form);
	form.submit();
}
function msgForm(){
	
	let form = document.createElement("form");
	form.action="MsgForm?msSender=&msRecipient=&msTitle=&msComment=&msDate=&msStatus=";
	form.method="POST";
	document.body.appendChild(form);
	form.submit();
}
function msgForm(){
	//서버전송
	let msg = JSON.parse('${dataList}');
	let sendData = "msRecipient="+msg[0].msRecipient+"&msSender="+msg[0].msSender+"&msDate="+msg[0].msDate+"&msTitle="+msg[0].msTitle+"&msComment="+msg[0].msComment+"&msStatus="+msg[0].msStatus;
	
	let form = document.createElement("form");
	form.action="MsgForm?"+sendData;
	form.method="POST";
	document.body.appendChild(form);
	form.submit();
}
</script>
</html>