<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>모헬: 모두의 헬퍼 - 회원가입</title>
    <meta name="description" content="회원가입 페이지">
    <link rel="icon" type="image/png" href="/resources/imgs/common/logo-m.png">
    <link rel="stylesheet" href="/resources/css/account.css">
</head>
<body>
    <!-- Header -->
    <header id="head">
        <a href="#"><img src="/resources/imgs/common/logo.png" class="head__logo" alt="logo image"></a>
    </header>
    <!-- Section -->
    <section id="contents">
        <form action="Join" name="joinInfo" id="joinInfo" method="post">
            <div class="contents__join">
                <input type="text" class="contents-id" maxlength="41" id ="mName"name="mName" placeholder="이름" title="이름 입력" required>
                <input type="text" class="contents-id" maxlength="41"  id= "mId" name="mId" placeholder="아이디" title="아이디 입력" required>
                <input type="password" class="contents-pw" maxlength="16" id="mPw" name="mPw" placeholder="비밀번호" title="비밀번호 입력" required>
                <input type="password" class="contents-pwck" maxlength="16" id="mPw2" name="mPw2" placeholder="비밀번호 재확인" title="비밀번호 재확인 입력" required >
            </div>            
            <div class="contents__submit">
                <button type="button" class="contents__submit__click"  onClick="Check()">가입하기</button>
            </div>
        </form>
    </section>
    <!-- Footer -->
    <footer id="footer">
        <p class="footer__rights">Copyright 2021 BAO. All Rights Reserved.</p>
    </footer>
</body>
<script>
function Check(){
	var mId = document.getElementsByName('mId')[0];
	var mName = document.getElementsByName('mName')[0];
	var mPw = document.getElementsByName('mPw')[0];
	var mPw2 = document.getElementsByName('mPw2')[0];
	  
	if( !document.joinInfo.mId.value) {
	      alert("ID를 입력하세요");
	      return false;
	    } 
	    if(!document.joinInfo.mPw.value){
	      alert("비밀번호를 입력하세요");
	      return false;
	    }
	    if(document.joinInfo.mPw.value != document.joinInfo.mPw2.value){
	    	alert("비밀번호가 서로 다릅니다.");
	    	return false;
	    
	    }
   
	var form = document.createElement('form');
	form.action = 'Join';
	form.method = 'Post';
	
	form.appendChild(mId);
	form.appendChild(mPw);
	form.appendChild(mPw2);
	form.appendChild(mName);
	document.body.appendChild(form);
	
	form.submit();
	
}



</script>

</html>
</body>
</html>