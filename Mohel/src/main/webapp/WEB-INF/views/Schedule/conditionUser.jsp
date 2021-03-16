<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>모헬: 모두의 헬퍼 - 스케쥴 위시어</title>
    <meta name="description" content="스케쥴 위시어 페이지">
    <link rel="icon" type="image/png" href="/resources/imgs/common/logo-m.png">
    <script src="https://kit.fontawesome.com/301043e4a8.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="/resources/css/common.css">
    <script src="/resources/src/main.js" defer></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body onLoad="init()">
    
    <!-- Navbar -->
    <%@ include file="/WEB-INF/views/common/navbar.jsp" %>

    <!--Mypage Navbar -->
	<%@ include file="/WEB-INF/views/common/navbar2.jsp" %>
    
    <!-- Send Schedule -->
    <section class="schedule mypage">
        <h2 class="mypage__title">스케쥴</h2>
        <form name="area" action="" method="POST">
            <table class="schedule__info"> 
                <tbody >
                    <tr class="sendMsg__list">
						<th class="schedule__title"><div id="schedule-main"></div></th>
						<td class="schedule__contents"><div id="schedule-sub"></div></td>
                        <th class="schedule__title"><label for="schedule-wisher">WISHER:</label></th>
						<td class="schedule__contents"><div id="schedule-wisher"></div></td>
					</tr>
					<tr class="sendMsg__list">
						<th class="schedule__title"><label for="schedule-title">제목:</label></th>
						<td class="schedule__contents"><div id="schedule-title" ></div></td>
                        <th class="schedule__title"><label for="schedule-helper">HELPER:</label></th>
						<td class="schedule__contents"><div id="schedule-helper" ></div></td>
					</tr>
                    <tr class="sendMsg__list">
						<th class="schedule__title"><label for="schedule-period"></label></th>
						<td class="schedule__contents"></td>
						<th class="schedule__title"><label for="schedule-period"></label></th>
						<td class="schedule__contents"><button id="plus" type="button" >항목추가</button><button id="minus" type="button" >항목삭제</button></td>
					</tr>
                </tbody>
            </table>
            <div class="schedule__textarea" name="textarea">
                <div>STEP1  기간 : <input type="date" id="schedule_date1" name="tag"><span class="mypage_ok"></span></div>
                <textarea id="schedule-contents1" name="schedule-contents" cols="120" rows="10"></textarea>
                <section id="step"></section>         
            </div>
                   <input type="hidden" id="schedule-code" /><input type="hidden" id="schedule-status" />
            <div class="mypage__bottom">
                
            </div>
        </form>
    </section>
</body>
<script>
function init(){
	
	let schedule = JSON.parse('${scInfo}');
	alert('${scInfo}');
	
	let scCode = schedule[0].scCode;
	let scFilter = schedule[0].scFilterName;
	let scSub = "> "+schedule[0].scSubName;
	let scWisher = schedule[0].scWisher;
	let scHelper = schedule[0].scHelper;
	let sdTitle = schedule[0].sdTitle;
	let sdComment = schedule[0].sdComment;
    let scStatus = schedule[0].scStatus;
	
// 	//날짜 포맷  
	let sdPeriod = schedule[0].sdPeriod;
	if(sdPeriod){

	 $("#schedule_date1").val(sdPeriod);
	}
    
	 $("#schedule-code").val(scCode); 
	 $("#schedule-main").append(scFilter);
	 $("#schedule-sub").append(scSub);
	 $("#schedule-title").append(sdTitle);
	 $("#schedule-wisher").append(scWisher);
	 $("#schedule-helper").append(scHelper);
	 $("#schedule-contents1").append(sdComment);

	 if(sdComment){
	 for(let index=1;index<schedule.length;index++){
		//날짜 포맷  
			let sdPeriod = schedule[index].sdPeriod;

			
			let sdComment = schedule[index].sdComment;
		 
		 let plusArea = " ";
		 plusArea += "<div>STEP"+(index+1)+" 기간 : <input type='date' id= 'schedule_date"+(index+1)+"' name='tag'><span class='mypage_ok'></span></div>";
   	     plusArea += "<textarea id='schedule-contents"+(index+1)+"' name='schedule-contents' cols='120' rows='10'></textarea>";     
		    
		 $("#step").append(plusArea);
		 
		 $("#schedule_date"+(index+1)).val(sdPeriod);
		 $("#schedule-contents"+(index+1)).append(sdComment);
		 
	 }
	 }
	 
	 if(schedule[0].scStatus=='S'){
			let insertBt =" ";
			insertBt +="<button  type='button' class='mypage__btn' id='sendAccept'>수락</button>";
			insertBt +=" ";
			insertBt +="<button  type='button' class='mypage__btn' id='sendReject'>거절</button>";
			
			 $(".mypage__bottom").append(insertBt);
		}else if(schedule[0].scStatus=='A'){
			let insertBt =" ";
			insertBt ="<button  type='button' class='mypage__btn' onClick='check()'>확인</button>";
			
			 $(".mypage_ok").append(insertBt);
			
			
		}
	
	 
	 $(function() {
			$('#sendAccept').click(function(){
				let check = confirm("수락하시겠습니까?")
				
				if(check){
					let form = document.createElement("form");
					form.action="AcceptSchedule";
					form.method="POST";
					document.body.appendChild(form);
					form.submit();
				}
				
			});
	
	});
	 function check(){
		 alert("ddd"); 
	 }
	
	$(function() {
		$('#sendReject').click(function(){
			let check = confirm("거절하시겠습니까?")
			
			if(check){
				let form = document.createElement("form");
				form.action="RejectSchedule";
				form.method="POST";
				document.body.appendChild(form);
				form.submit();
			}
		});
	
});
			
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
//마이페이지 클릭 
function myPageClick(){
   let form = document.createElement("form");
   form.action = "MyProfile";
   form.method = "Post";
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

</script>
</html>