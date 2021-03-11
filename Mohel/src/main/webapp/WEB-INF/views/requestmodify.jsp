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
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body onLoad="list()">
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
                    <li class="navbar__list__item"><button type="button" class="navbar__list__btn">받은메시지함</button></li>
                    <li class="navbar__list__item"><button type="button" class="navbar__list__btn">보낸메시지함</button></li>
                    <li class="navbar__list__item"><button type="button" class="navbar__list__btn">메시지쓰기</button></li>
                </ul>
            </li> 
        </ul>
    </nav>
    <!-- Request enrollment -->
    <section class="request mypage">
        <h2 class="mypage__title">거래등록</h2>
        
            <ul>
             
                <li class="request__list">
                    <div class="list-label">분야</div>
                    <div class="list-value">
                   <form name=rqFilter method=post>
                                           
                   	대분류:  <span id='rqFilterName' style="margin-right:130px;"></span>
                     		
                                                                   
				소분류: 
                    <span id='rqSubName'></span>
                      
</form> 
                    </div>
                </li>
                <li class="request__list">
                    <div class="list-label"><label for="request-region">지역</label></div>
                    <div class="list-value">
                        <select name='rqRcCode'>
                            <option value="00">Select</option>
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
                        <input type="hidden" id = "rqRccodez">
                    </div>
                </li>
                <li class="request__list">
                    <div class="list-label">기간</div>
                    <div class="list-value">
                        <input type="date" id="request-term-start" name="rqPeriod">
                        <input type="hidden" id="rqPeriodz">
                       
                    </div>
                </li>
                <li class="request__list">
                    <div class="list-label"><label for="request-title">제목</label></div>
                    <div class="list-value">
                        <input type="text" name="rqTitle" id="rqTitle" style="width: 700px;">
                    </div>
                </li>
                <li class="request__list">
                    <div class="list-label"><label for="request-comment">내용을 적어주세요</label></div>
                    <div class="list-value">
                      <textarea name="rqComment" id="rqComment" style="width:700px; height:130px;"></textarea>
                        
                    </div>
                </li>
            </ul>
            <div class="mypage__bottom">
                <button type="button" class="mypage__btn" onclick="send()">수정하기</button>
            </div>
       <input type="hidden" name ="rqCode" id="rqCode">
       <input type="hidden" name ="rqId" id="rqId">
    </section>
</body>
<script>
	function send(){
		
		
		
		var rqCode = document.getElementsByName("rqCode")[0];
    	var rqId = document.getElementsByName("rqId")[0];
		var rqRcCode = document.getElementsByName("rqRcCode")[0];
		var rqPeriod = document.getElementsByName("rqPeriod")[0];
		var rqTitle = document.getElementsByName("rqTitle")[0];
		var rqComment = document.getElementsByName("rqComment")[0];
      
	
	
      
        
       
        var b = rqRcCode.value;
        if(b == "00"){
        	alert("지역을 선택해주세요");
        	
        }else{
        	
        
        var form = document.createElement("form");
        form.action="Modify";
        form.post="post";
        
        
        form.appendChild(rqCode);
        form.appendChild(rqId);
        form.appendChild(rqRcCode);
        form.appendChild(rqPeriod);
        form.appendChild(rqTitle);
        form.appendChild(rqComment);
        
        document.body.appendChild(form);
        
        
        form.submit();
        
        } 
	}
	
	
    
    function list(){
   	 
 	let json = JSON.parse('${rqd}');
 	
 	
 	
 	
 	let rqTitle = json[0].rqTitle;
 	
 	
 	$('#rqTitle').val(rqTitle);
 	
         
//     $('input[name=rqTitle]').attr('value',getTitle.innerText);
//------------------------------------------------------------------------------
    let rqComment = json[0].rqComment;
    
    
 	$('#rqComment').append(rqComment);
	
//------------------------------------------------------------------------------
	let getDate = document.getElementById("rqPeriodz"); 	
    
	let rqPeriod = document.createElement("hidden");
	rqPeriod.textContent = json[0].rqPeriod;
	getDate.appendChild(rqPeriod);
	
	$('input[name="rqPeriod"]').attr('value',getDate.innerText);
	
// let rqPeriod = json[0].rqPeriod;
 	
//  	alert(rqPeriod);
//  	$('#rqPeriod').append(rqPeriod);
 	
//------------------------------------------------------------------------------
// 	let getRegion = document.getElementById("rqRccodez"); 	
    
// 	let rqRccode = document.createElement("hidden");
// 	rqRccode.textContent = json[0].rqRccode;
// 	getRegion.appendChild(rqRccode);
 	
	   
// 	$('select[name="rqRccode"]').attr('value',getRegion.innerText);
	
	let rqFilterName = json[0].rqFilterName;
	
	
 	$('#rqFilterName').append(rqFilterName);
	
 	let rqSubName = json[0].rqSubName;
 	
 	
 	$('#rqSubName').append(rqSubName);
    
 	let rqCode = json[0].rqCode;
 	$('#rqCode').val(rqCode);
 	
 	let rqId = json[0].rqId;
 	$('#rqId').val(rqId);;


    }
   
</script>
</html>
    
    