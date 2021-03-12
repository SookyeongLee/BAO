'use strict';

// 거래상태 버튼 click시 거래상태 관련 메뉴바 생성
const dealList = document.querySelector('.deal-list');
const dealBtn = document.querySelector('.deal-btn');
dealBtn.addEventListener('click', () => {
    dealList.classList.toggle('show');
});

// 메시지 버튼 click시 메시지 관련 메뉴바 생성
const messageList = document.querySelector('.message-list');
const messageBtn = document.querySelector('.message-btn');
messageBtn.addEventListener('click', () => {
    messageList.classList.toggle('show');
});


function waitingClick(){
   let form = document.createElement("form");
      form.action = "WaitingWisher";
      form.method = "Post";   
                     
      document.body.appendChild(form);
      form.submit();
   }

function IngClick(){
   let form = document.createElement("form");
      form.action = "IngWisher";
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
//function msgForm(){
//	
//	let form = document.createElement("form");
//	form.action="MsgForm";
//	form.method="POST";
//	document.body.appendChild(form);
//	form.submit();
//}

