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

