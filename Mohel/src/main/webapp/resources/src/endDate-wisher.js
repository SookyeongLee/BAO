'use strict';

//Show modal
const writeReview = document.getElementById('writeReview');
const viewReview = document.getElementById('viewReview');
// 리뷰작성
const wirteBtns = document.querySelectorAll('.wirte__btn');
let wirteBtn;
for(let i = 0; i < wirteBtns.length; i++){
    wirteBtn = wirteBtns[i];    
    wirteBtn.addEventListener('click', () => {
        writeReview.classList.add('show-modal');
    });
}
// 리뷰보기
const viewBtns = document.querySelectorAll('.view__btn');
let viewBtn;
for(let i = 0; i < viewBtns.length; i++){
    viewBtn = viewBtns[i];    
    viewBtn.addEventListener('click', () => {
        viewReview.classList.add('show-modal');
    });
}


// 리뷰작성
//Hide modal
const writeClose = document.getElementById('writeClose');
writeClose.addEventListener('click', () => {
    writeReview.classList.remove('show-modal');
});        
//Hide modal(모달창 외부 클릭해서 닫기)
window.addEventListener('click', (e) => {
    e.target === writeReview ? writeReview.classList.remove('show-modal') : false
});


// 리뷰보기
//Hide modal
const viewClose = document.getElementById('viewClose');
viewClose.addEventListener('click', () => {
    viewReview.classList.remove('show-modal');
});        
//Hide modal(모달창 외부 클릭해서 닫기)
window.addEventListener('click', (e) => {
    e.target === viewReview ? viewReview.classList.remove('show-modal') : false
});



