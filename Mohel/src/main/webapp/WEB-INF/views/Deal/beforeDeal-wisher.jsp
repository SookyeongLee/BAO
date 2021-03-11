<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>모헬: 모두의 헬퍼 - 역경매</title>
    <meta name="description" content="dealDetail 진행전 wisher 페이지">
    <link rel="icon" type="image/png" href="/resources/imgs/common/logo-m.png">
    <script src="https://kit.fontawesome.com/301043e4a8.js" crossorigin="anonymous"></script>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="/resources/css/common.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body onload="list()">
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
                <h2 class="mypage__title"><div id="rqTitle"></div></h2>
        <!-- Request -->
        
        <div class="deal__container">
            <div class="deal__img">
                <img src="/resources/imgs/common/1000.jpg" class="deal-img">
            </div>
            <div class="deal__info__container">
                <table class="deal__info"> 
                    <tr class="deal__list">
                        <th class="deal__title">기간</th>
                        <td class="deal__contents"><span id="rqSysDate"></span> ~ <span id="rqPeriod"></span></td>
                    </tr>
                    <tr class="deal__list">
                        <th class="deal__title">분야</th>
                        <td class="deal__contents"><div id="rqSubName"></div></td>
                    </tr>
                    <tr class="deal__list">
                        <th class="deal__title">지역</th>
                        <td class="deal__contents"><div id="rqRcName"></div></td>
                    </tr>
                    <tr class="profile__list">
                        <th class="deal__title">내용</th>
                        <td class="deal__contents">
                            <div id="rqComment"></div>
                        </td>
                    </tr>
                </table>                
           
            <input type="hidden" name="rqCode" id="rqCode">
            <input type="hidden" name="rqId" id="rqId">
                <div class="deal__button">
                    <button type="button" class="deal__btn1" onclick="modify()">수정하기</button>
                    <button type="button" class="deal__btn2" onclick="deletez()">삭제하기</button>	        
		        </div>
		            </div>
            </div>
        <!-- Bidding -->
        <table class="bidding"> 
            <caption class="bidding__title">입찰기록내역</caption>
            <colgroup>
                <col style="width: 45%;">
                <col style="width: 35%;">
                <col style="width: 20%;">
            </colgroup>               
            <thead>
                <tr>
                    <th class="bidding__head right">입찰자</th>
                    <th class="bidding__head">금액</th>
                    <th class="bidding__head">낙찰</th>
                </tr>
            </thead>
            <tbody>                
                <tr>
                    <td class="bidding__data right"><button type="button" class="bidding__data__id">soo</button></td>
                    <td class="bidding__data right">13000원</td>
                    <td class="bidding__data"><button type="button" class="bidding__data__choice">선택</button></td>
                </tr>
                <tr>
                    <td class="bidding__data right"><button type="button" class="bidding__data__id">soo</button></td>
                    <td class="bidding__data right">13000원</td>
                    <td class="bidding__data"><button type="button" class="bidding__data__choice">선택</button></td>
                </tr>
                <tr>
                    <td class="bidding__data right"><button type="button" class="bidding__data__id">soo</button></td>
                    <td class="bidding__data right">13000원</td>
                    <td class="bidding__data"><button type="button" class="bidding__data__choice">선택</button></td>
                </tr>
                <tr>
                    <td class="bidding__data right"><button type="button" class="bidding__data__id">soo</button></td>
                    <td class="bidding__data right">13000원</td>
                    <td class="bidding__data"><button type="button" class="bidding__data__choice">선택</button></td>
                </tr>
                <tr>
                    <td class="bidding__data right"><button type="button" class="bidding__data__id">soo</button></td>
                    <td class="bidding__data right">13000원</td>
                    <td class="bidding__data"><button type="button" class="bidding__data__choice">선택</button></td>
                </tr>
                <tr>
                    <td class="bidding__data right"><button type="button" class="bidding__data__id">soo</button></td>
                    <td class="bidding__data right">13000원</td>
                    <td class="bidding__data"><button type="button" class="bidding__data__choice">선택</button></td>
                </tr>
                <tr>
                    <td class="bidding__data right"><button type="button" class="bidding__data__id">soo</button></td>
                    <td class="bidding__data right">13000원</td>
                    <td class="bidding__data"><button type="button" class="bidding__data__choice">선택</button></td>
                </tr>
                <tr>
                    <td class="bidding__data right"><button type="button" class="bidding__data__id">soo</button></td>
                    <td class="bidding__data right">13000원</td>
                    <td class="bidding__data"><button type="button" class="bidding__data__choice">선택</button></td>
                </tr>
                <tr>
                    <td class="bidding__data right"><button type="button" class="bidding__data__id">soo</button></td>
                    <td class="bidding__data right">13000원</td>
                    <td class="bidding__data"><button type="button" class="bidding__data__choice">선택</button></td>
                </tr>
                <tr>
                    <td class="bidding__data right"><button type="button" class="bidding__data__id">soo</button></td>
                    <td class="bidding__data right">13000원</td>
                    <td class="bidding__data"><button type="button" class="bidding__data__choice">선택</button></td>
                </tr>
                <tr>
                    <td class="bidding__data right"><button type="button" class="bidding__data__id">soo</button></td>
                    <td class="bidding__data right">13000원</td>
                    <td class="bidding__data"><button type="button" class="bidding__data__choice">선택</button></td>
                </tr>
                <tr>
                    <td class="bidding__data right"><button type="button" class="bidding__data__id">soo</button></td>
                    <td class="bidding__data right">13000원</td>
                    <td class="bidding__data"><button type="button" class="bidding__data__choice">선택</button></td>
                </tr>
                <tr>
                    <td class="bidding__data right"><button type="button" class="bidding__data__id">soo</button></td>
                    <td class="bidding__data right">13000원</td>
                    <td class="bidding__data"><button type="button" class="bidding__data__choice">선택</button></td>
                </tr>
                <tr>
                    <td class="bidding__data right"><button type="button" class="bidding__data__id">soo</button></td>
                    <td class="bidding__data right">13000원</td>
                    <td class="bidding__data"><button type="button" class="bidding__data__choice">선택</button></td>
                </tr>
                <tr>
                    <td class="bidding__data right"><button type="button" class="bidding__data__id">soo</button></td>
                    <td class="bidding__data right">13000원</td>
                    <td class="bidding__data"><button type="button" class="bidding__data__choice">선택</button></td>
                </tr>
            </tbody>                      
        </table>
    </section>   
    ${rqd} 
</body>
   <script>
    function list(){
   	 
 	let json = JSON.parse('${rqd}');
 	

 	
 	
 	
	let rqTitle = json[0].rqTitle;
 	
 	
 	$('#rqTitle').append(rqTitle);
 	
//------------------------------------------------------------------------------
    let rqComment = json[0].rqComment;
    
    
 	$('#rqComment').append(rqComment);
	
//------------------------------------------------------------------------------
	let rqPeriod = json[0].rqPeriod;
    
    
 	$('#rqPeriod').append(rqPeriod);

//------------------------------------------------------------------------------
	let rqRcName = json[0].rqRcName;
	
	
 	$('#rqRcName').append(rqRcName);
	
 	let rqSubName = json[0].rqSubName;
 	
 	
 	$('#rqSubName').append(rqSubName);
    
 	let rqCode = json[0].rqCode;
 	$('#rqCode').val(rqCode);
 	
 	let rqId = json[0].rqId;
 	$('#rqId').val(rqId);
 	
 	
 	let rqSysDate = json[0].rqSysDate;
 	$('#rqSysDate').append(rqSysDate);
    }
   
    function modify(){
    	var yn = confirm("수정 하시겠습니까?");
    	
    	if(yn == true){
    	 
    	var rqCode = document.getElementsByName("rqCode")[0];
    	var rqId = document.getElementsByName("rqId")[0];
    	
 
    	
    	var form = document.createElement("form");
        form.action="ModifyForm";
        form.post="post";
        
        form.appendChild(rqCode);
        form.appendChild(rqId);
        
        document.body.appendChild(form);
	       
	       
	       form.submit();
	       
   			 }else{
   				 alert("취소되었습니다.");
   			 }
    	}
    
    function deletez(){
	var yn = prompt("삭제 하시려먼 '삭제' 라고 적어주세요");
    	
    	if(yn == "삭제"){
	    	var rqCode = document.getElementsByName("rqCode")[0];
	    	var rqId = document.getElementsByName("rqId")[0];
    	
    	alert(rqCode.value);
    	alert(rqId.value);
    	var form = document.createElement("form");
        form.action="Delete";
        form.post="post";
        
        form.appendChild(rqCode);
        form.appendChild(rqId);
        
        document.body.appendChild(form);
	       
	       
	       form.submit();
    	
    	}else{
    		alert("취소되었습니다.");
    	}
    }
</script>

</html>