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
                <input type="text" class="contents-id" maxlength="41" placeholder="아이디" title="아이디 입력" required>
                <input type="password" class="contents-pw" maxlength="16" placeholder="비밀번호" title="비밀번호 입력" required>
            </div>            
            <div class="contents__submit">
                <button type="submit" class="contents__submit__click">로그인</button>
            </div>
        </form>
        <div class="contents__line">
            <span class="contents__line-or">or</span>
        </div>
        <!-- sns login-->
        <div class="contents__sns">
            <div class="sns-naver"></div>
            <div class="sns-kakao"></div>
            <div class="sns-google"></div>
        </div>
        <!-- 회원가입하기 -->
        <p class="contents__account">아직 회원이 아니세요?<a href="#" class="contents__account-link"> 회원가입</a></p>
    </section>
    <!-- Footer -->
    <footer id="footer">
        <p class="footer__rights">Copyright 2021 BAO. All Rights Reserved.</p>
    </footer>
</body>
</html>
</body>
</html>