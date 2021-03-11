<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>모헬: 모두의 헬퍼 - 역경매</title>
    <meta name="description" content="dealDetail 진행전 helper 페이지">
    <link rel="icon" type="image/png" href="/resources/imgs/common/logo-m.png">
    <script src="https://kit.fontawesome.com/301043e4a8.js" crossorigin="anonymous"></script>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="/resources/css/common.css">
    <script src="/resources/src/bid.js" defer></script>
</head>
<body >
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
    
    <section class="deal mypage">
        <h2 class="mypage__title">입시 레슨 희망합니다.</h2>
        <!-- Request -->
        <div class="deal__container">
            <div class="deal__img">
                <img src="/resources/imgs/common/1000.jpg" class="deal-img">
            </div>
            <div class="deal__info__container">
                <table class="deal__info"> 
                    <tr class="deal__list">
                        <th class="deal__title">역경매기간</th>
                        <td class="deal__contents">2021-01-03 ~ 2021-01-17</td>
                    </tr>
                    <tr class="deal__list">
                        <th class="deal__title">분야</th>
                        <td class="deal__contents">음악</td>
                    </tr>
                    <tr class="deal__list">
                        <th class="deal__title">지역</th>
                        <td class="deal__contents">인천</td>
                    </tr>
                    <tr class="profile__list">
                        <th class="deal__title">내용</th>
                        <td class="deal__contents">
                            	싱어송라이터인 ‘그레타’(키이라 나이틀리)는 남자친구 ‘데이브’(애덤 리바인)가 메이저 음반회사와 계약을 하게 되면서 뉴욕으로 오게 된다. 그러나 행복도 잠시, 오랜 연인이자 음악적 파트너로서 함께 노래를 만들고 부르는 것이 좋았던 그레타와 달리 스타가 된 데이브의 마음은 어느새 변해버린다. 스타 음반프로듀서였지만 이제는 해고된 ‘댄’(마크 러팔로)은 미치기 일보직전 들른 뮤직바에서 그레타의 자작곡을 듣게 되고 아직 녹슬지 않은 촉을 살려 음반제작을 제안한다. 거리 밴드를 결성한 그들은 뉴욕의 거리를 스튜디오 삼아 진짜로 부르고 싶었던 노래를 만들어가는데…
                        </td>
                    </tr>
                </table>
                <div class="deal__button">
                    <button type="button" class="deal__btn2 bidding__btn">입찰하기</button>
                </div>

                <!-- 입찰 모달 시작 -->
                <div class="modal__container" id="modal">
                    <div class="modal">
                        <button class="close-btn" id="close">
                            <i class="fa fa-times"></i>
                        </button>
                        <div class="modal__header">
                            <div class="modal__header__title">입찰하기</div>
                        </div>
                        <div class="modal__content">
                            <form class="modal__form">
                                <div>
                                    <label for="bidding-price" class="bidding-price-label">입찰금액</label>
                                    <input type="text" id="bidding-price" name="biPrice">
                                </div>
                                <div class="bidding-price-btn__container">
                                    <button type="button" class="bidding-price-btn" onClick = "bid()">신중하게 입찰하기</button>
                                </div>    
                            </form>
                        </div>
                    </div>
                </div>
                <!-- 입찰 모달 끝 -->
							<input type = "hidden" name = "rqCode" id = "rqCodez" >
							<input type = "hidden" name = "biMmHelper"  id = "biMmHelper">
            </div>
        </div>
        <!-- Bidding -->
        <table class="bidding"> 
            <caption class="bidding__title">입찰기록내역</caption>
            <colgroup>
                <col style="width: 60%;">
                <col style="width: 40%;">
            </colgroup>               
            <thead>
                <tr>
                    <th class="bidding__head right" >입찰자</th>
                    <th class="bidding__head">금액</th>
                </tr>
            </thead>
            <tbody>                
                <tr>
                    <td class="bidding__data right"><button type="button" class="bidding__data__id"><div id = "biHelper"></div></button></td>
                    <td class="bidding__data">13000원</td>
                </tr>
                <tr>
                    <td class="bidding__data right"><button type="button" class="bidding__data__id">soo</button></td>
                    <td class="bidding__data">14000원</td>
                </tr>
                <tr>
                    <td class="bidding__data right"><button type="button" class="bidding__data__id">soo</button></td>
                    <td class="bidding__data">13000원</td>
                </tr>
                <tr>
                    <td class="bidding__data right"><button type="button" class="bidding__data__id">soo</button></td>
                    <td class="bidding__data">14000원</td>
                </tr>
                <tr>
                    <td class="bidding__data right"><button type="button" class="bidding__data__id">soo</button></td>
                    <td class="bidding__data">13000원</td>
                </tr>
                <tr>
                    <td class="bidding__data right"><button type="button" class="bidding__data__id">soo</button></td> 
                    <td class="bidding__data">14000원</td>
                </tr>
                <tr>
                    <td class="bidding__data right"><button type="button" class="bidding__data__id">soo</button></td>
                    <td class="bidding__data">13000원</td>
                </tr>
                <tr>
                    <td class="bidding__data right"><button type="button" class="bidding__data__id">soo</button></td> 
                    <td class="bidding__data">14000원</td>
                </tr>
                <tr>
                    <td class="bidding__data right"><button type="button" class="bidding__data__id">soo</button></td>
                    <td class="bidding__data">13000원</td>
                </tr>
                <tr>
                    <td class="bidding__data right"><button type="button" class="bidding__data__id">soo</button></td> 
                    <td class="bidding__data">14000원</td>
                </tr>
                <tr>
                    <td class="bidding__data right"><button type="button" class="bidding__data__id">soo</button></td>
                    <td class="bidding__data">13000원</td>
                </tr>
                <tr>
                    <td class="bidding__data right"><button type="button" class="bidding__data__id">soo</button></td> 
                    <td class="bidding__data">14000원</td>
                </tr>
                <tr>
                    <td class="bidding__data right"><button type="button" class="bidding__data__id">soo</button></td>
                    <td class="bidding__data">13000원</td>
                </tr>
                <tr>
                    <td class="bidding__data right"><button type="button" class="bidding__data__id">soo</button></td> 
                    <td class="bidding__data">14000원</td>
                </tr>
                <tr>
                    <td class="bidding__data right"><button type="button" class="bidding__data__id">soo</button></td>
                    <td class="bidding__data">13000원</td>
                </tr>
            </tbody>                      
        </table>        
    </section> 
</body>
<script>

	function bid(){
			
		var json = JSON.parse('${getReq}');
			
		var rqCode = json[0].rqCode;   //제이슨에서 넘어온 rqCode 
		var biMmHelper = json[0].biMmHelper;   // 제이슨에서 넘어온 biMmHelper 
			alert("dd");
			alert(rqCode);
			alert(biMmHelper);
		
			
	
	   	   $('#biMmHelper').val(biMmHelper);
		   $('#rqCode').val(rqCode);
	    
		    var rqCode = document.getElementsByName("rqCode")[0];
		    var biMmHelper = document.getElementsByName("biMmHelper")[0];
		    var biPrice = document.getElementsByName("biPrice")[0];
		  
		  alert(rqCode.value);
		  alert(biMmHelper.value);
		  alert(biPrice.value);
		  
		  var form = document.createElement("form");
		  form.action = "MyProfile";
		  form.method = "post";
		  
		  form.appendChild(rqCode);
		  form.appendChild(biMmHelper);
		  form.appendChild(biPrice);
		  document.body.appendChild(form);
		  form.submit();
	}

//val 안에 밸류  input 여기말하느거임 여기 ><  append 사이 ex div>여기말하는거임여기 append <
	
	
	
// function init(){
	
	
// 	let json = JSON.parse('${insBi}');
	
    

// 	let bidbiHelper = document.getElementById("biHelper"); 
//     let biHelper = document.createElement('Div');              
//     biHelper.textContent = json[0].biHelper;
//     bidbiHelper.appendChild(biHelper);
    

</script>
</html>