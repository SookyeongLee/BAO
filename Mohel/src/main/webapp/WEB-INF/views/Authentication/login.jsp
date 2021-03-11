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
    <link rel="icon" type="image/png" href="../../resources/imgs/common/logo-m.png">
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="../../resources/css/account.css">
    <script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
    <script type="text/javascript" src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.0.js" charset="utf-8"></script>
	<meta name="google-signin-scope" content="profile email">
    <meta name="google-signin-client_id" content="591795889729-panhl4bo1ebergn6asvp942gqae200jt.apps.googleusercontent.com">
	<script src="https://apis.google.com/js/platform.js" async defer></script>
</head>
<body>
    <!-- Header -->
    <header id="head">
        <a href="#"><img src="../../resources/imgs/common/logo.png" class="head__logo" alt="logo image"></a>
    </header>
    <!-- Secion -->
    <section id="contents">
        <form action="Login" method="post" name="loginInfo" id="loginInfo">
            <div class="contents__login">
                <input type="text" class="contents-id" maxlength="41" placeholder="아이디" title="아이디 입력" name = "mId" required>
                <input type="password" class="contents-pw" maxlength="16" placeholder="비밀번호" title="비밀번호 입력" name = "mPw" required>
            </div>            
            <div class="contents__submit">
                <button type="button" class="contents__submit__click" onclick="login()">로그인</button>
            </div>
        </form>
        <div class="contents__line">
            <span class="contents__line-or">or</span>
        </div>
        <!-- sns login-->
        <div class="contents__sns">
            <div class="sns-naver" style="border:none;"><a id="kakao-login-btn" style="margin-left:115px;"></a></div>         
            <div id="naverIdLogin" style="margin-left:115px; width:222px; margin-bottom:7px;"></div>
            <div class="g-signin2" data-onsuccess="onSignIn" data-theme="dark" style="width:222px; margin-left:115px; margin-bottom:10px;"></div>
        </div>
        <!-- 회원가입하기 -->
        <p class="contents__account">아직 회원이 아니세요?<a href="#" class="contents__account-link" onclick="join()"> 회원가입</a></p>
    </section>
    <!-- Footer -->
    <footer id="footer">
        <p class="footer__rights">Copyright 2021 BAO. All Rights Reserved.</p>
    </footer>
<script>
function login(){
	var mId = document.getElementsByName("mId");
	var mPw = document.getElementsByName("mPw");
	
	alert(mId);
	alert(mPw);
	
	var form = document.createElement("form");
    form.action="Login";
    form.post="post";

    
    form.appendChild(mId);
    form.appendChild(mPw);
    document.body.appendChild(form);
    
    
    form.submit();
	
}


function join(){
	var form = document.createElement("form");
    form.action="JoinForm";
    form.post="post";

    
    document.body.appendChild(form);
    
    
    form.submit();
}

//<![CDATA[
// 사용할 앱의 JavaScript 키를 설정해 주세요.
Kakao.init('20d1d295426c53ce3c7ee30723bf6ca0');
// 카카오 로그인 버튼을 생성합니다.
Kakao.Auth.createLoginButton({
    container: '#kakao-login-btn',
    success: function (authObj) {
        alert(JSON.stringify(authObj));
    },
    fail: function (err) {
        alert(JSON.stringify(err));
    }
});
//]]>

var naverLogin = new naver.LoginWithNaverId(
		{
			clientId: "p05SqyidMMmQArIbGSIM",
			callbackUrl: "lSKSz4KbXM",
			isPopup: false, /* 팝업을 통한 연동처리 여부 */
			loginButton: {color: "green", type: 3, height: 49} /* 로그인 버튼의 타입을 지정 */
		}
	);
	
	/* 설정정보를 초기화하고 연동을 준비 */
	naverLogin.init();
	
	function onSignIn(googleUser) {
	    // Useful data for your client-side scripts:
	    var profile = googleUser.getBasicProfile();
	    console.log("ID: " + profile.getId()); // Don't send this directly to your server!
	    console.log('Full Name: ' + profile.getName());
	    console.log('Given Name: ' + profile.getGivenName());
	    console.log('Family Name: ' + profile.getFamilyName());
	    console.log("Image URL: " + profile.getImageUrl());
	    console.log("Email: " + profile.getEmail());

	    // The ID token you need to pass to your backend:
	    var id_token = googleUser.getAuthResponse().id_token;
	    console.log("ID Token: " + id_token);
	};
</script>
</body>
</html>