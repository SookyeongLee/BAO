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
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="/resources/css/account.css">
</head>
<body>
    <!-- Header -->
    <header id="head">
        <a href="Main"><img src="/resources/imgs/common/logo.png" class="head__logo" alt="logo image"></a>
    </header>
    <!-- Section -->
    <section id="contents">
        <form action="Join" method="post" id="joinInfo" name="joinInfo">
            <div class="contents__join">
               <input type="text" class="contents-id" maxlength="41" name="mName" placeholder="이름" title="이름 입력" required>
                <input type="text" class="contents-id" maxlength="41" name="mId" placeholder="아이디" title="아이디 입력" required>
                <input type="password" class="contents-pw" maxlength="16" name="mPw" placeholder="비밀번호" title="비밀번호 입력" required>
                <input type="password" class="contents-pwck" maxlength="16" name="mPw2" placeholder="비밀번호 재확인" title="비밀번호 재확인 입력" required>
            </div>            
            <div class="contents__submit">
                <button type="submit" class="contents__submit__click" onClick="Check()">가입하기</button>
            </div>
        </form>
        <!-- 로그인하기 -->
        <p class="contents__account">이미 모헬 회원이신가요? <a href="LogInForm" class="contents__account-link">로그인</a></p>
    </section>
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
        form.method = 'post';
      
        form.appendChild(mId.value);
        form.appendChild(mPw.value);
        form.appendChild(mPw2.value);
        form.appendChild(mName.value);
        document.body.appendChild(form);
        form.submit();
      }
      
   </script>

</body>
</html>