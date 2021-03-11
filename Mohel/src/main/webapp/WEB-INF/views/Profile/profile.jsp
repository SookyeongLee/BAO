<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>모헬: 모두의 헬퍼 - 프로필</title>
    <meta name="description" content="프로필 페이지">
    <link rel="icon" type="image/png" href="/resources/imgs/common/logo-m.png">
    <script src="https://kit.fontawesome.com/301043e4a8.js"></script>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="/resources/css/common.css">
    <script src="/resources/src/main.js" defer></script>
</head>
<body>
    <!-- Navbar -->
    <nav id="navbar">
        <div class="navbar__top">
            <div class="navbar__logo">
                <a href="#"><img class="navbar__logo__img" src="/resources/imgs/common/logo-white.png"></a>
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
                    <li class="navbar__menu__item">역경매등록</li>                    
                    <li class="navbar__menu__item">로그아웃</li>
                </ul>
            </div>
        </div>        
    </nav>     
    <!--Mypage Navbar -->
    <nav id="mypage">
        <ul class="mypage__menu">
            <li class="mypage__menu__item">
                <button type="button">프로필</button>
            </li>
            <li class="mypage__menu__item">
                <button type="button" class="deal-btn">거래상태</button>
                <ul class="navbar__list deal-list">
                    <li class="navbar__list__item"><button type="button" class="navbar__list__btn">진행전</button></li>
                    <li class="navbar__list__item"><button type="button" class="navbar__list__btn">진행중</button></li>
                    <li class="navbar__list__item"><button type="button" class="navbar__list__btn">완료</button></li>
                </ul>
            </li>                    
            <li class="mypage__menu__item">
                <button type="button" class="message-btn">메시지</button>
                <ul class="navbar__list message-list">
                    <li class="navbar__list__item"><button type="button" class="navbar__list__btn">받은메시지함</button></li>
                    <li class="navbar__list__item"><button type="button" class="navbar__list__btn">보낸메시지함</button></li>
                    <li class="navbar__list__item"><button type="button" class="navbar__list__btn">메시지쓰기</button></li>
                </ul>
            </li> 
        </ul>
    </nav>
    <!-- Profile -->
    <section class="profile mypage">
        <div class="profile__container">
            <h2 class="mypage__title profile__h2">프로필</h2>
            <table class="profile__info"> 
                <tr class="profile__list">
                    <th class="profile__title">아이디</th>
                    <td class="profile__contents"></td>
                </tr>
                <tr class="profile__list">
                    <th class="profile__title">E-mail</th>
                    <td class="profile__contents"></td>
                </tr>
                <tr class="profile__list">
                    <th class="profile__title">사는곳</th>
                    <td class="profile__contents"></td>
                </tr>
                <tr class="profile__list">
                    <th class="profile__title">소속</th>
                    <td class="profile__contents"></td>
                </tr>
                <tr class="profile__list">
                    <th class="profile__title">경력</th>
                    <td class="profile__contents">
                        
                    </td>
                </tr>
            </table>
            <div class="mypage__bottom">
                <button type="button" class="mypage__btn">수정하기</button>
            </div>
        </div>
    </section>
    <section id="pro"></section>
</body>
<script>
function init(){
	
	
	let json = JSON.parse('${getProfile}');
	
    

    let proInfomId = document.getElementById("mId"); 
    let mId = document.createElement('Div');              
    mId.textContent = json[0].mId;
    proInfomId.appendChild(mId);
    
    
    
    
    let proInfomEmail = document.getElementById("mEmail");
    let mEmail = document.createElement('Div');
    mEmail.textContent = json[0].mEmail; 
    proInfomEmail.appendChild(mEmail);
    
    
    let proInfomRcName = document.getElementById("mRcName");
    let mRcName = document.createElement('Div');
    mRcName.textContent = json[0].mRcName; 
    proInfomRcName.appendChild(mRcName);
    
    
    let proInfomDivision = document.getElementById("mDivision");
    let mDivision = document.createElement('Div');
    mDivision.textContent = json[0].mDivision; 
    proInfomDivision.appendChild(mDivision);
   
    
    let proInfomCareer = document.getElementById("mCareer");
    let mCareer = document.createElement('Div');
    mCareer.textContent = json[0].mCareer; 
    proInfomCareer.appendChild(mCareer);
    
	
}

function ModifyProfile(){
	
	var form = document.createElement("form");
	 form.action = "ModifyProfile";
	 form.method ="POST"; 
	 document.body.appendChild(form);
	  form.submit();
	  
}

</script>
</html>