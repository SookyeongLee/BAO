<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>모헬: 모두의 헬퍼 - 거래등록</title>
    <meta name="description" content="거래등록 페이지">
    <link rel="icon" type="image/png" href="imgs/common/logo-m.png">
    <script src="https://kit.fontawesome.com/301043e4a8.js" crossorigin="anonymous"></script>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="/resources/css/mypage.css">
</head>
<body>
    <!-- Navbar -->
    <nav id="navbar">
        <div class="navbar__top">
            <div class="navbar__logo">
                <a href="Main"><img class="navbar__logo__img" src="/resources/imgs/common/logo-white.png"></a>
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
            <li class="mypage__menu__item navbar-click">
                <a href="#">거래내역</a>
                <ul class="navbar__list">
                    <li class="navbar__list__item"><button type="button" class="navbar__list__btn">내요청</button></li>
                    <li class="navbar__list__item"><button type="button" class="navbar__list__btn">거래대기중</button></li>
                    <li class="navbar__list__item"><button type="button" class="navbar__list__btn">거래진행중</button></li>
                    <li class="navbar__list__item"><button type="button" class="navbar__list__btn">거래완료</button></li>
                </ul>
            </li>                    
            <li class="mypage__menu__item navbar-click">
                <a href="#">메시지</a>
                <ul class="navbar__list">
                     <li class="navbar__list__item"><button type="button" class="navbar__list__btn" onClick="recBox()">받은메시지함</button></li>
                    <li class="navbar__list__item"><button type="button" class="navbar__list__btn" onClick="sendBox()">보낸메시지함</button></li>
                    <li class="navbar__list__item"><button type="button" class="navbar__list__btn" onClick="msgForm()">메시지쓰기</button></li>
                </ul>
            </li> 
        </ul>
    </nav>
    <!-- Request enrollment -->
    <section class="request mypage">
        <h2 class="mypage__title">거래등록</h2>
        
            <ul>
                <li class="request__list">
                    <div class="list-label"><label for="request-region">지역</label></div>
                    <div class="list-value">
                        <select name='rqRcCode'>
                            <option value="select">Select</option>
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
                    </div>
                </li>
                <li class="request__list">
                    <div class="list-label">분야</div>
                    <div class="list-value">
                   <form name=rqFilter method=post>
                                          대분류: 
                   <select name='rqFilterCode' onchange="change(this.selectedIndex);"  class=input >
                     		<option value="select">선택</option>
                            <option value="1000">레슨</option>
                            <option value="2000">홈/리빙</option>
                            <option value="3000">비즈니스</option>
                            <option value="4000">디자인</option>
                            <option value="5000">IT/프로그래밍</option>
                            <option value="6000">건강/미용</option>
                    </select>                                                  
                                                  소분류: 
                    <select name='rqSubName'  class=select>
                       <option value=''>전체</option>
                    </select>
</form> 
                    </div>
                </li>
                <li class="request__list">
                    <div class="list-label">기간</div>
                    <div class="list-value">
                        <input type="date" id="request-term-start" name="rqPeriod">
                       
                    </div>
                </li>
                <li class="request__list">
                    <div class="list-label"><label for="request-title">제목</label></div>
                    <div class="list-value">
                        <input type="text" name="rqTitle" id="request-title">
                    </div>
                </li>
                <li class="request__list">
                    <div class="list-label"><label for="request-comment">내용을 적어주세요</label></div>
                    <div class="list-value">
                        <textarea name="rqComment" id="request-comment" rows="15"></textarea>
                    </div>
                </li>
            </ul>
            <div class="mypage__bottom">
                <button type="button" class="mypage__btn" onclick="list()">전송하기</button>
            </div>
       
    </section>
</body>
<script>	
	var cnt = new Array();
    cnt[0] = new Array('선택해주세요');
    cnt[1] = new Array('학업','외국어','음악','미술','스포츠','자격증');
    cnt[2] = new Array('인테리어','이사','청소업체','야외시공','수리','가구');
    cnt[3] = new Array('번역','통역','마케팅','컨설팅','문서','인쇄');
    cnt[4] = new Array('일러스트 디자인','인쇄물 디자인','웹/모바일 디자인','제품디자인','공간디자인','브랜딩');
    cnt[5] = new Array('게임','데이터베이스','웹사이트개발','모바일웹','AI개발','보안');
    cnt[6] = new Array('영양/식단관리','심리상담','심리치료','헤어','메이크업','피부관리');
    function change(add) {
    select=document.rqFilter.rqSubName
      /* 옵션메뉴삭제 */
      for (i=select.length-1; i>=0; i--){
   	   select.options[i] = null;
        }
      /* 옵션박스추가 */
      for (i=0; i < cnt[add].length;i++){                     
   	   select.options[i] = new Option(cnt[add][i], cnt[add][i]);
        }         
      
    }
    function list(){
   	    var rqFilterCode = document.getElementsByName("rqFilterCode")[0];
        var rqSubName = document.getElementsByName("rqSubName")[0];
		var rqRcCode = document.getElementsByName("rqRcCode")[0];
		var rqPeriod = document.getElementsByName("rqPeriod")[0];
		var rqTitle = document.getElementsByName("rqTitle")[0];
		var rqComment = document.getElementsByName("rqComment")[0];
      
      
       
        
        var form = document.createElement("form");
        form.action="ReqSend";
        form.post="post";
        
        form.appendChild(rqFilterCode);
        form.appendChild(rqSubName);
        form.appendChild(rqRcCode);
        form.appendChild(rqPeriod);
        form.appendChild(rqTitle);
        form.appendChild(rqComment);
        document.body.appendChild(form);
        
        form.submit();
    }
    function recBox(){
    	let form = document.createElement("form");
    	form.action="RecBox";
    	form.method="POST";
    	document.body.appendChild(form);
    	form.submit();
    }

    function sendBox(){
    	let form = document.createElement("form");
    	form.action="SendBox";
    	form.method="POST";
    	document.body.appendChild(form);
    	form.submit();
    }


    function msgForm(){
    	let form = document.createElement("form");
    	form.action="MsgForm?msSender=&msRecipient=&msTitle=&msComment=&msDate=&msStatus=";
    	form.method="POST";
    	document.body.appendChild(form);
    	form.submit();
    }
</script>
</html>
    
    