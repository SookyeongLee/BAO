<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>모헬: 모두의 헬퍼 - 보낸 메시지함</title>
    <meta name="description" content="보낸 메시지 페이지">
    <link rel="icon" type="image/png" href="/resources/imgs/common/logo-m.png">
    <link rel="stylesheet" href="/resources/css/common.css">
    <script src="https://kit.fontawesome.com/301043e4a8.js" crossorigin="anonymous"></script>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600;700&display=swap" rel="stylesheet">
    <script src="/resources/src/main.js" defer></script>
    <script src="/resources/src/search.js" defer></script>
    <script src="/resources/src/profile.js" defer></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body onLoad="init()">

    <!-- Navbar -->
    <%@ include file="/WEB-INF/views/common/navbar.jsp" %>

    <!--Mypage Navbar -->
	<%@ include file="/WEB-INF/views/common/navbar2.jsp" %>

    <!-- Message List -->
    <section class="message mypage">
        <div class="message__container">
            <h2 class="mypage__title">보낸 메시지함</h2>
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
                        <th class="message__head">받는사람</th>
                        <th class="message__head">제목</th>
                        <th class="message__head">전송시간</th>
                    </tr>
                </thead>
                <tbody id="sendDiv">
                 
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
    
    <!-- 프로필 클릭 모달 시작 -->
    <%@ include file="/WEB-INF/views/common/profileClick.jsp" %>
    <!-- 프로필 클릭 모달 끝 -->
       
</body>
<script>
function init(){

	let send = JSON.parse('${SendList}');
	
	for(let i=0;i<send.length;i++){
	
		    	
	let insertTr= " ";
	insertTr += "<tr>";
	insertTr += "<td class='message__data'><i class='fas fa-envelope'></i></td>";
	insertTr += "<td class='message__data profile-btn' onClick='showModal("+i+")'>"+ send[i].msRecipient +"</td>";
	insertTr += "<td class='message__data message__title' onClick='msgDetail("+i+")'>"+send[i].msTitle+"</td>";
	insertTr += "<td class='message__data'>"+send[i].msDate+"</td>";
	insertTr += "</tr>";
   
    $("#sendDiv").append(insertTr);
		
    
	}
	
}

//Show modal
function showModal(i){
	let send = JSON.parse('${SendList}');
	modal.classList.add('show-modal');
}

function msgDetail(i){
	//서버전송 
	let send = JSON.parse('${SendList}');
	let sendData = "msRecipient="+send[i].msRecipient+"&msSender="+send[i].msSender+"&msDate="+send[i].msDate+"&msTitle="+send[i].msTitle+"&msComment="+send[i].msComment+"&msStatus="+send[i].msStatus;
	alert(sendData);
	
	let form = document.createElement("form");
	form.action="Title?"+sendData;
	form.method="POST";
	document.body.appendChild(form);
	form.submit();
	
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
function msgForm(){
	//서버전송
	let msg = JSON.parse('${dataList}');
	let sendData = "msRecipient="+msg[0].msRecipient+"&msSender="+msg[0].msSender+"&msDate="+msg[0].msDate+"&msTitle="+msg[0].msTitle+"&msComment="+msg[0].msComment+"&msStatus="+msg[0].msStatus;
	alert(sendData);
	
	alert(msg.length);
	
	let form = document.createElement("form");
	form.action="MsgForm?"+sendData;
	form.method="POST";
	document.body.appendChild(form);
	form.submit();
	
	
}
</script>
</html>