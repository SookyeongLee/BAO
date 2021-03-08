<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>모헬: 모두의 헬퍼 - 로그인</title>
    <meta name="description" content="로그인 페이지">
    <link rel="icon" type="image/png" href="/resources/imgs/common/logo-m.png">
    <link rel="stylesheet" href="/resources/css/account.css">
</head>
<body>
    <!-- Header -->
    <header id="head">
        <a href="#"><img src="imgs/common/logo.png" class="head__logo" alt="logo image"></a>
    </header>
    <!-- Secion -->
    <section id="contents">
        <form action="" method="post">
            <div class="contents__login">
                <input type="text" class="contents-id" maxlength="41" name ="mId" placeholder="아이디" title="아이디 입력" required>
                <input type="password" class="contents-pw" maxlength="16" name="mPw" placeholder="비밀번호" title="비밀번호 입력" required>
            </div>            
            <div class="contents__submit">
                <button type="button" class="contents__submit__click" id = "Login" onClick="login()">로그인</button>
            </div>
        </form>
        <div class="contents__line">
            <span class="contents__line-or">or</span>
        </div>
        <!-- sns login-->
        <div class="contents__sns">
        	<a href="javascript:kakaoLogin();"><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQFQOJtNpYFKTS1T5QdhIDFFgLzQO93BuFjFw&usqp=CAU"></a>
            <div class="sns-naver"></div>
            <div class="sns-kakao"></div>
            <div class="sns-google"></div>
        </div>
        <!-- 회원가입하기 -->
        <p class="contents__account">아직 회원이 아니세요?<a href="#" class="contents__account-link" id="Join" onClick="join()"> 회원가입</a></p>
    </section>
    <!-- Footer -->
    <footer id="footer">
        <p class="footer__rights">Copyright 2021 BAO. All Rights Reserved.</p>
    </footer>
</body>
</html>
</body>
<!-- <a href="javascript:kakaoLogin();"><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQFQOJtNpYFKTS1T5QdhIDFFgLzQO93BuFjFw&usqp=CAU"></a> -->
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script>

function login(){
	var mId = document.getElementsByName('mId')[0];
	var mPw = document.getElementsByName('mPw')[0];
	mId.name = 'mId';
	mPw.name = 'mPw';
	
	
	var form = document.createElement('form');
	form.action = 'Main';
	form.method = 'post';
	
	form.appendChild(mId);
	form.appendChild(mPw);
	document.body.appendChild(form);
	
	form.submit();
	
}
// function login(obj){
// alert(obj.id);
// var form = document.createElement("form");
// form.action = obj.id;
// form.method = "post";
// document.body.appendChild(form);
// form.submit();
// }

function join(){
	alert('넘어가나 ?');
	var form = document.createElement("form");
	
	form.action = 'JoinForm';
	form.method = "post";
	
	document.body.appendChild(form);
	
	form.submit();
	
}

window.Kakao.init("4efa9804c7a6a6b23c3f03f63e44aa5b");

function kakaoLogin() {
	window.Kakao.Auth.login({
	scope:'profile, account_email',
	success: function(authObj){
		console.log(authObj);
		window.Kakao.API.request({
			url:'/v2/user/me',
			success : res => {
				const kakao_account = res.kakao_account;
				console.log(kakao_account);
			}
		});
	}
});
}


</script>
</html>