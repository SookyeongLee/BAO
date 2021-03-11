'use strict';
        
//Show modal
const open = document.querySelector('.bidding__btn');
const modal = document.getElementById('modal')
open.addEventListener('click', () => {
    modal.classList.add('show-modal')
})

//Hide modal
const close = document.getElementById('close')
close.addEventListener('click', () => {
    modal.classList.remove('show-modal')
})
        
//Hide modal(모달창 외부 클릭해서 닫기)
window.addEventListener('click', (e) => {
    e.target === modal ? modal.classList.remove('show-modal') : false
})