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
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    
</head>
 <body onLoad="init()">
    <!-- Navbar -->
    <nav id="navbar">
        <div class="navbar__top">
            <div class="navbar__logo">
                <a href="#"><img class="navbar__logo__img" src="../../resources/imgs/common/logo-white.png"></a>
            </div>
            <div class="navbar__right">
                <div class="navbar__search">
                    <input type="text" name="search" id="search">
                    <button type="button" class="search__btn">
                        <i class="fas fa-search"></i>
                    </button>
                </div>
                <ul class="navbar__menu">
                    <li class="navbar__menu__item">마이페이지</li>
                    <li class="navbar__menu__item">거래등록</li>                    
                    <li class="navbar__menu__item">로그아웃</li>
                </ul>
            </div>
        </div>        
    </nav>     
    <!--Mypage Navbar -->
    <nav id="mypage">
        <ul class="mypage__menu">
            <li class="mypage__menu__item"><a href="#">프로필</a></li>
            <li class="mypage__menu__item"><a href="#">거래내역</a></li>                    
            <li class="mypage__menu__item"><a href="#">메시지</a></li> 
        </ul>
    </nav>
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
                        <td class="profile__contents"><input class="profile__input" type="password" id="mPw" name="mPw"><input type = "hidden" id = "mPwz"> </td>
                    </tr>
                    <input type="hidden" name ="mPw3">
                    <tr class="profile__list">
                        <th class="profile__title"><label for="pw-check">비밀번호 확인</label></th>
                        <td class="profile__contents"> <input class="profile__input" type="password" id="mPw2" name="mPw2"></td>
                    </tr>
                    <tr class="profile__list">
                        <th class="profile__title"><label for="pw-change">새 비밀번호</label></th>
                        <td class="profile__contents"><input class="profile__input" type="password" id="mPwC" name="mPwC"></td>
                    </tr>
                    <tr class="profile__list">
                        <th class="profile__title"><label for="email">E-mail</label></th>
                        <td class="profile__contents"><input class="profile__input" type="email" id="mEmail" name="mEmail"><input type = "hidden" id="mEmailz"></td>
                    </tr>
                   <tr class="profile__list">
                        <th class="profile__title"><label for="region">사는곳</label></th>
                        <td class="profile__contents">
                            <select name="mRcCode" id="mRcCodez" class="profile__input">
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
    ${getProfile}
</body>
<script>

function init(){
	
	alert('${getProfile}');
	let json = JSON.parse('${getProfile}');
		
    let proInfomId = document.getElementById("mId"); //영역 위에 id 이름 값       
    let mId = document.createElement('Div');              
    mId.textContent = json[0].mId; //innerhtml이랑비슷 삽입하다     json0번째 mid값 mId에 넣겠ek    
    proInfomId.appendChild(mId);
    
    
    let proInfomEmail = document.getElementById("mEmailz");
    let mEmail = document.createElement('hidden');
    mEmail.textContent = json[0].mEmail; 
    proInfomEmail.appendChild(mEmail);
    
    
    let proInfommRcCode = document.getElementById("mRcCodez");
    let mRcCode = document.createElement('hidden');
    mRcCode.textContent = json[0].mRcCode; 
    proInfommRcCode.appendChild(mRcCode);
    
    
    let proInfomDivision = document.getElementById("mDivisionz");
    let mDivision = document.createElement('hidden');
    mDivision.textContent = json[0].mDivision; 
    proInfomDivision.appendChild(mDivision);
   
    
//     let proInfomCareer = document.getElementById("mCareerz");
//     let mCareer = document.createElement('Div');
//     mCareer.textContent = json[0].mCareer; 
//     proInfomCareer.appendChild(mCareer);

    let proInfommPw = document.getElementById("mPwz");
    let mPw = document.createElement('hidden');
    mPw.textContent = json[0].mPw; 
    proInfommPw.appendChild(mPw);
    
    
    let a = document.getElementById("mEmailz");
    $('input[name=mEmail]').attr('value',a.innerText);
    let b = document.getElementById("mRcCodez");     
    $('select[name=mRcCode]').attr('value',b.innerText);
    
    let c = document.getElementById("mDivisionz");     
    $('input[name=mDivision]').attr('value',c.innerText);
    
    
    let d = document.getElementById("mPwz");     
    $('input[name=mPw]').attr('value',d.innerText);
    
   // alert(json[0].mCareer);
    
    let mCareer = json[0].mCareer;
    $('#mCareer').append(mCareer);
	
}




function UpdateProfile(){
	let json = JSON.parse('${getProfile}');
	
	let jsonmPw = json[0].mPw;
	alert(jsonmPw);
	  let mPw =document.getElementsByName("mPw")[0];
	  let mPw2 =document.getElementsByName("mPw2")[0];
	  let mPw3 = document.getElementsByName("mPw")[0];
	  let mPwC =document.getElementsByName("mPwC")[0];    	  
	  let mEmail =document.getElementsByName("mEmail")[0]; 
	  //let mRcName = document.getElementsByName("mRcName")[0];
	  let mDivision = document.getElementsByName("mDivision")[0];
	  let mCareer = document.getElementsByName("mCareer")[0];
	  let mRcCode = document.getElementsByName("mRcCode")[0];
	  
	  
 var form = document.createElement("form");
  form.action ="UpdateProfile";
  form.method ="POST"; 
  
   
  //json 에서 넘어온 pw값이랑 mPw 밸류랑 비교 일치하면 mPw밸류랑 mPw2밸류ㅗ 비교 이거 성공하면 비번 업뎃 가능 안되면 else 에는 업뎃안된거ㅏㄹ로 간다  
  
  if(mPw.value == jsonmPw){
	  if(mPw.value == mPw2.value){
		  alert("비번 정상적으로 성공합니다");
		//form.appendChild(mPw);
		  form.appendChild(mPwC);
		  form.appendChild(mEmail);
		  //form.appendChild(mRcName);
		  form.appendChild(mDivision);
		  form.appendChild(mCareer);
		  form.appendChild(mRcCode);
		  document.body.appendChild(form);
		  form.submit();
	  }	  
	  alert("비번이 일치하지않거나 아무튼 틀립니다."); 
  }else{ 
	  alert("비번이 일치하지않거나 아무튼 틀립니다."); 
  
  
  }
}


</script>
</html>