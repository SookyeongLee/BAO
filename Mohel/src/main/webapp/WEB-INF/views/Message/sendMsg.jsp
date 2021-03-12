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
	<script src="/resources/src/main.js" defer></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body onLoad="init()">
    <!-- Navbar -->
    <nav id="navbar">
        <div class="navbar__top">
            <div class="navbar__logo">
                <a href="Main"><img class="navbar__logo__img" src="/resources/imgs/common/logo-white.png"></a>
            </div>
            <div class="navbar__right">
                <div class="navbar__search">
                    <input type="text" name="search" id="search">
                    <button type="button" class="search__btn">
                        <i class="fas fa-search"></i>
                    </button>
                </div>
                <ul class="navbar__menu">
                    <li class="navbar__menu__item" onClick="myPageClick()" >마이페이지</li>
         		     <li class="navbar__menu__item" onClick="registerReq()">역경매등록</li>                      
                    <li class="navbar__menu__item">로그아웃</li>
                </ul>
            </div>
        </div>        
    </nav>     
    <!--Mypage Navbar -->
    <nav id="mypage">
        <ul class="mypage__menu">
            <li class="mypage__menu__item">
                <button type="button"  onClick="myPageClick()">프로필</button>
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
                    <li class="navbar__list__item"><button type="button" class="navbar__list__btn" onClick="recBox()">받은메시지함</button></li>
                    <li class="navbar__list__item"><button type="button" class="navbar__list__btn" onClick="sendBox()">보낸메시지함</button></li>
                    <li class="navbar__list__item"><button type="button" class="navbar__list__btn" onClick="msgForm()">메시지쓰기</button></li>
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
                <button type="button" class="mypage__btn" onclick="sendMsg()">보내기</button>
            </div>
        </form>
    </section>
</body>
<script>
function init(){
	
	alert('${dataList}');
	let msg = JSON.parse('${dataList}');

		let sender = msg[0].msSender;
		
		$(document).ready(function() {
	        $('#sendMsg-recipient').val(sender);
	    });		
		
	 let comment = " ";
	 comment +="<p><br></p>";
	 comment +="\n-----------------------original message--------------------------------";
	 comment +="\n From : "+ msg[0].msSender;
	 comment +="\n To : "+ msg[0].msRecipient;
	 comment +="\n Sent : "+ msg[0].msDate;
	 comment +="\n Subject : "+ msg[0].msTitle;
	 comment +="\n\n"+ msg[0].msComment;
	 
	 $("#sendMsg-contents").append(comment);
	
}



function sendMsg(){
	let msg = JSON.parse('${dataList}');

	let msSender = msg[0].msRecipient;
	let msRecipient = $('#sendMsg-recipient').val();
	let msTitle = $('#sendMsg-title').val();
	let msComment = $('#sendMsg-contents').val();
	
	let form = document.createElement("form");
	form.action="SendMsg?msSender="+msSender+"&msRecipient="+msRecipient+"&msTitle="+msTitle+"&msComment="+msComment+"&msDate=&msStatus=";
	form.method="POST";
	document.body.appendChild(form);
	form.submit();
			
	let con = alert("메세지 전송이 완료되었습니다.");	

}
//경매글 올리기
function registerReq(){
	 let form = document.createElement("form");
     form.action = "DealForm";
     form.method = "Post";
     document.body.appendChild(form);
     form.submit();
 
}
//마이페이지 클릭 
function myPageClick(){
   let form = document.createElement("form");
   form.action = "MyProfile";
   form.method = "Post";
   document.body.appendChild(form);
   form.submit();
}
</script>
</html>