<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>모헬: 모두의 헬퍼 - 진행전</title>
    <meta name="description" content="거래상태-진행전-helper 페이지">
    <link rel="icon" type="image/png" href="/resources/imgs/common/logo-m.png">
    <script src="https://kit.fontawesome.com/301043e4a8.js" crossorigin="anonymous"></script>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="/resources/css/common.css">
    <script src="/resources/src/navbar.js" defer></script>
    <script src="/resources/src/navbar2.js" defer></script>
</head>
<body>
    
    <!-- Navbar -->
    <%@ include file="/WEB-INF/views/common/navbar.jsp" %>

    <!--Mypage Navbar -->
	<%@ include file="/WEB-INF/views/common/navbar2.jsp" %>
    
     <!-- waiting-helper -->
    <section class="dealList mypage">
        <h2 class="mypage__title">진행전</h2>
        <div class="dealList__container">
            <ul class="dealList__account">
                <li class="dealList__account__member"><button type="button" class="dealList__account__btn" onClick="helperClick()">helper</button></li>
                <li class="dealList__account__member"><button type="button" class="dealList__account__btn" onClick="waitingWisherClick()">wisher</button></li>
            </ul>
            <div class="dealList__list__container">
                <div class="dealList__member">helper</div>
               
                  
                  <ul id="wHelperList" class="list__items"></ul> 
                
                  <div class="dealList__more__button">
                    <button type="button" class="dealList__more__btn" onClick="plus()">더보기</button>
                  </div>
                   
            </div>
        </div>
    </section>
</body>
<script>
function helperClick(){
   let form = document.createElement("form");
   form.action = "WaitingHelper";
   form.method = "Post";   
   
   document.body.appendChild(form);
   form.submit();
}
function waitingWisherClick(){
   let form = document.createElement("form");
   form.action = "WaitingWisher";
   form.method = "Post";   
                  
   document.body.appendChild(form);
   form.submit();
}
var k = 0;

function plus(){
   k += 3;
   wHelperScreen();
}


function wHelperScreen(){
let requestList = JSON.parse('${wHelperList}');

for(let index=(0+k) ; index<(3+k) ; index++){
   
if(index >= requestList.length)break;

let insertTr = " ";
let status = requestList[index].rqStatus;
let statusComment;  
if(status=="B") {statusComment="역경매 진행중!"} else {statusComment="역경매 기한만료! 낙찰 해주세요"};

insertTr +=  "<li class='dealList__list__item'>";
insertTr += "<div class='delList__img' onClick='DetailClick"+rqCode+"'><img class='list__item__img' src='../../resources/imgs/common/"+requestList[index].rqImage+"'></div>";
insertTr += "<ul class='dealList__description'>";
insertTr += "<li class='dealList-term'>"+requestList[index].rqSimpleDate+" ~ "+requestList[index].rqPeriod+"</li>";
insertTr += "<li class='dealList-subCtg'>"+requestList[index].rqSubName+"</li>";
insertTr += "<li class='dealList-title'>"+requestList[index].rqTitle+"</li>";
insertTr += "<li class='dealList-situation'>"+statusComment+"</li>";
insertTr += "</ul>";
insertTr += "</li>";

$("#wHelperList").append(insertTr)
}
}
//경매 클릭 
function DetailClick(rqCode){
    var rqCode = rqCode;
    let form = document.createElement("form");
    form.action = "Detail";
    form.method = "Post";
    
    let input = document.createElement("input");
          input.type = "hidden";
          input.name = "rqCode";
          input.value = rqCode;
          alert(input.value);
          form.appendChild(input);
    
    document.body.appendChild(form);
    form.submit();
 }

</script>
</html>