<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>모헬: 모두의 헬퍼 - 프로필 수정</title>
    <meta name="description" content="프로필 수정 페이지">
    <link rel="icon" type="image/png" href="../../resources/imgs/common/logo-m.png">
    <script src="https://kit.fontawesome.com/301043e4a8.js" crossorigin="anonymous"></script>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="../../resources/css/common.css">
    <script src="/resources/src/navbar.js" defer></script>
    <script src="/resources/src/navbar2.js" defer></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
 
    
</head>
 <body onLoad="init()">
    
    <!-- Navbar -->
    <%@ include file="/WEB-INF/views/common/navbar.jsp" %>

    <!--Mypage Navbar -->
	<%@ include file="/WEB-INF/views/common/navbar2.jsp" %>
    
    <!-- Profile -->
    <section class="profile mypage">
        <div class="profile__container">
            <h2 class="mypage__title profile__h2">프로필 수정</h2>
            <form name="updateProfileInfo" id="updateProfileInfo" action="UpdateProfile" method="POST">
                <table class="profile__info"> 
                    <tr class="profile__list">
                        <th class="profile__title">아이디</th>
                        <td class="profile__contents"><div id="mId"></div></td>
                    </tr>
                    <tr class="profile__list">
                        <th class="profile__title"><label for="pw">비밀번호</label></th>
                        <td class="profile__contents"><input class="profile__input" type="password" id="mPw" name="mPw"/></td>
                    </tr>
                    <tr class="profile__list">
                        <th class="profile__title"><label for="pw-check">비밀번호 확인</label></th>
                        <td class="profile__contents"> <input class="profile__input" type="password" id="mPwCk" name="mPwCk"/></td>
                    </tr>
                    <tr class="profile__list">
                        <th class="profile__title"><label for="pw-change">새 비밀번호</label></th>
                        <td class="profile__contents"><input class="profile__input" type="password" id="newMPw" name="newMPw"/></td>
                    </tr>
                    <tr class="profile__list">
                        <th class="profile__title"><label for="email">E-mail</label></th>
                        <td class="profile__contents"><input class="profile__input" type="email" id="mEmail" name="mEmail"/></td>
                    </tr>
                   <tr class="profile__list">
                        <th class="profile__title"><label for="region">사는곳</label></th>
                        <td class="profile__contents">
                            <select name="mRcCode" id="mRcCode" class="profile__input">
                                <option value="99">Select</option>
                                <option value="01">서울</option>
                                <option value="02">인천</option>
                                <option value="03">부산</option>
                                <option value="04">대구</option>
                                <option value="05">광주</option>
                                <option value="06">대전</option>
                                <option value="07">울산</option>
                                <option value="08">세종</option>
                                <option value="09">경기</option>
                                <option value="10">강원</option>
                                <option value="11">충북</option>
                                <option value="12">충남</option>
                                <option value="13">전북</option>
                                <option value="14">전남</option>
                                <option value="15">경북</option>
                                <option value="16">경남</option>
                                <option value="17">제주</option>
                            </select>
                        </td>
                    </tr>
                    <tr class="profile__list">
                        <th class="profile__title"><label for="division">소속</label></th>
                        <td class="profile__contents"><input class="profile__input" type="text" id="mDivision" name="mDivision"><input type = "hidden"  id="mDivisionz"></hidden></td>
                    <tr/>
                    <tr class="profile__list">
                        <th class="profile__title"><label for="career">경력</label></th>
                        <td class="profile__contents"><textarea class="profile__textarea" id="mCareer" name="mCareer" cols="60" rows="6" ></textarea><td/>
                    </tr>
                </table>
                <div class="mypage__bottom">
                    <button type="button" class="mypage__btn" onClick = "UpdateProfile()">적용하기</button>
                </div>
            </form>
        </div>
</body>
<script>

function init(){
   
   let json = JSON.parse('${getProfile}');

  let mId = json[0].mId;
  $("#mId").append(mId);
  
  let mEmail = json[0].mEmail; 
  $("#mEmail").val(mEmail);
  
  let mRcCode =  json[0].mRcCode; 
  $("#mRcCode").val(mRcCode);
  
  let mDivision = json[0].mDivision; 
  $("#mDivision").val(mDivision);
  
  let mCareer = json[0].mCareer; 
  $("#mCareer").val(mCareer);
  
  let mPw = json[0].mPw; 
  $("#mPw").val(mPw);
      
    
}




function UpdateProfile(){
	 let json = JSON.parse('${getProfile}');
	  
    let mEmail = document.getElementById("mEmail");
    $('input[name=mEmail]').attr('value',mEmail.innerText);
    
    let mRcCode = document.getElementById("mRcCode");     
    $('select[name=mRcCode]').attr('value',mRcCode.innerText);
    
    let mDivision = document.getElementById("mDivision");     
    $('input[name=mDivision]').attr('value',mDivision.innerText);
    
    let mCareer = document.getElementById("mCareer");     
    $('input[name=mCareer]').attr('value',mCareer.innerText);
    
    let newMPw = document.getElementById("newMPw");     
    $('input[name=newMPw]').attr('value',newMPw.innerText);
       
   
     let mPw =document.getElementsByName("mPw")[0];
     let mPwCk =document.getElementsByName("mPwCk")[0];
     
     
 	let form = document.createElement("form");
 	 form.action ="UpdateProfile";
 	 form.method ="POST"; 
  
   
  
  if(mPw.value == json[0].mPw){
		form.appendChild(mEmail)
        form.appendChild(mRcCode);
        form.appendChild(mDivision);
        form.appendChild(mCareer);
        form.appendChild(mPw);
        
        form.appendChild(mPwCk);
        form.appendChild(newMPw);

        document.body.appendChild(form);
        form.submit();
  
 
   }else{
      alert("기존비밀번호가 일치하지 않습니다");
      return false;
      
   }
}

</script>
</html>