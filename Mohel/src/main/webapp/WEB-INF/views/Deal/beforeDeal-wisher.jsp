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
<body onload="init()">
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
        
    <section class="deal mypage">
        <h2 class="mypage__title"><div id="rqTitle"></div></h2>
        <!-- Request -->
        
        <div class="deal__container">
            <div id="rqImage">
            </div>
            <div class="deal__info__container">
                <table class="deal__info"> 
                    <tr class="deal__list">
                        <th class="deal__title" style="width:300px">기간</th>
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
                        <th class="deal__title" >내용</th>
                        <td class="deal__contents">
                            <div id="rqComment"></div>
                        </td>
                    </tr>
                </table>                
            </div>
        </div>
      
    </section>   
           
            <input type="hidden" name="rqCode" id="rqCode">
            <input type="hidden" name="rqId" id="rqId">
            <input type="hidden" name="rqImage" id="rqImage">
                <div class="deal__button">
                    <button type="button" class="deal__btn1" onclick="modify()">수정하기</button>
                    <button type="button" class="deal__btn2" onclick="deletez()">삭제하기</button>	        
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
                    <td class="bidding__data right"><button type="button" class="bidding__data__id" id = "bidInfobiMmHelper2" name="wiHelper" onClick = "prClick(1)"></button></td>
                    <td class="bidding__data right"><div name="wiPrice"></div>	</td>
                    <td class="bidding__data"><button type="button" class="bidding__data__choice" id ="choice" onClick="accept(1)" name ="choice">선택</button></td>
                </tr>
                <tr>
                    <td class="bidding__data right"><button type="button" class="bidding__data__id"  id = "bidInfobiMmHelper2" name="wiHelper" onClick = "prClick(2)"></button></td>
                    <td class="bidding__data right"><div name = "wiPrice" ></div>	</td>
                    <td class="bidding__data"><button type="button" class="bidding__data__choice" id ="choice" onClick="accept(2)" name ="choice">선택</button></td>
                </tr>
                <tr>
                    <td class="bidding__data right"><button type="button" class="bidding__data__id"  id = "bidInfobiMmHelper2" name="wiHelper" onClick = "prClick(3)"></button></td>
                    <td class="bidding__data right"><div name = "wiPrice" ></div>	</td>
                    <td class="bidding__data"><button type="button" class="bidding__data__choice" id ="choice" onClick="accept(3)" name ="choice">선택</button></td>
                </tr>
                <tr>
                    <td class="bidding__data right"><button type="button" class="bidding__data__id"  id = "bidInfobiMmHelper2" name="wiHelper" onClick = "prClick(4)"></button></td>
                    <td class="bidding__data right"><div name = "wiPrice" ></div>	</td>
                    <td class="bidding__data"><button type="button" class="bidding__data__choice" id ="choice" onClick="accept(4)" name ="choice">선택</button></td>
                </tr>
                <tr>
                    <td class="bidding__data right"><button type="button" class="bidding__data__id"  id = "bidInfobiMmHelper2" name="wiHelper" onClick = "prClick(5)" ></button></td>
                    <td class="bidding__data right"><div name = "wiPrice" ></div>	</td>
                    <td class="bidding__data"><button type="button" class="bidding__data__choice" id ="choice" onClick="accept(5)" name ="choice">선택</button></td>
                </tr>
                <tr>
                    <td class="bidding__data right"><button type="button" class="bidding__data__id"  id = "bidInfobiMmHelper2"name="wiHelper" onClick = "prClick(6)"></button></td>
                    <td class="bidding__data right"><div name = "wiPrice" ></div>	</td>
                    <td class="bidding__data"><button type="button" class="bidding__data__choice" id ="choice"  onClick="accept(6)" name ="choice">선택</button></td>
                </tr>
                <tr>
                    <td class="bidding__data right"><button type="button" class="bidding__data__id"  id = "bidInfobiMmHelper2"name="wiHelper" onClick = "prClick(7)"></button></td>
                    <td class="bidding__data right"><div name = "wiPrice" ></div>	</td>
                    <td class="bidding__data"><button type="button" class="bidding__data__choice"id ="choice"  onClick="accept(7)" name ="choice">선택</button></td>
                </tr>
                <tr>
                    <td class="bidding__data right"><button type="button" class="bidding__data__id"  id = "bidInfobiMmHelper2"name="wiHelper" onClick = "prClick(8)"></button></td>
                    <td class="bidding__data right"><div name = "wiPrice" ></div></td>
                    <td class="bidding__data"><button type="button" class="bidding__data__choice" id ="choice" onClick="accept(8)" name ="choice">선택</button></td>
                </tr>
                <tr>
                    <td class="bidding__data right"><button type="button" class="bidding__data__id"  id = "bidInfobiMmHelper2" name="wiHelper"onClick = "prClick(9)"></button></td>
                    <td class="bidding__data right"><div name = "wiPrice" ></div>	</td>
                    <td class="bidding__data"><button type="button" class="bidding__data__choice" id ="choice" onClick="accept(9)" name ="choice">선택</button></td>
                </tr>
                <tr>
                    <td class="bidding__data right"><button type="button" class="bidding__data__id"  id = "bidInfobiMmHelper2" name="wiHelper"onClick = "prClick(10)"></button></td>
                    <td class="bidding__data right"><div name = "wiPrice" ></div>	</td>
                    <td class="bidding__data"><button type="button" class="bidding__data__choice" id ="choice" onClick="accept(10)" name ="choice">선택</button></td>
                </tr>
                <tr>
                    <td class="bidding__data right"><button type="button" class="bidding__data__id"  id = "bidInfobiMmHelper2"name="wiHelper" onClick = "prClick(11)"></button></td>
                    <td class="bidding__data right"><div name = "wiPrice" ></div>	</td>
                    <td class="bidding__data"><button type="button" class="bidding__data__choice"id ="choice"  onClick="accept(11)" name ="choice">선택</button></td>
                </tr>
                <tr>
                    <td class="bidding__data right"><button type="button" class="bidding__data__id"  id = "bidInfobiMmHelper2" name="wiHelper"onClick = "prClick(12)"></button></td>
                    <td class="bidding__data right"><div name = "wiPrice" ></div>	</td>
                    <td class="bidding__data"><button type="button" class="bidding__data__choice" id ="choice" onClick="accept(12)" name ="choice">선택</button></td>
                </tr>
                <tr>
                    <td class="bidding__data right"><button type="button" class="bidding__data__id"  id = "bidInfobiMmHelper2"name="wiHelper" onClick = "prClick(13)"> </button></td>
                    <td class="bidding__data right"><div name = "wiPrice" ></div>	</td>
                    <td class="bidding__data"><button type="button" class="bidding__data__choice" id ="choice" onClick="accept(13)" name ="choice">선택</button></td>
                </tr>
                <tr>
                    <td class="bidding__data right"><button type="button" class="bidding__data__id"  id = "bidInfobiMmHelper2"name="wiHelper" onClick = "prClick(14)"></button></td>
                    <td class="bidding__data right"><div name = "wiPrice" ></div>	</td>
                    <td class="bidding__data"><button type="button" class="bidding__data__choice" id ="choice"  onClick="accept(14)"name ="choice">선택</button></td>
                </tr>
                <tr>
                    <td class="bidding__data right"><button type="button" class="bidding__data__id"  id = "bidInfobiMmHelper2" name="wiHelper"onClick = "prClick(15)"></button></td>
                    <td class="bidding__data right"><div name = "wiPrice" ></div>	</td>
                    <td class="bidding__data"><button type="button" class="bidding__data__choice" id ="choice"  onClick="accept(15)" name ="choice">선택</button></td>
                </tr>
                
            </tbody>                      
        </table>
      		     <input type = "hidden" name = "biRqCode" id ="rqCodez" />
                 <input type = "hidden" name = "biMmHelper"  id ="alMmid"/>
                 <input type = "hidden" name = "wiRqCode"  id ="wiRqCode"/>
                 <input type = "hidden" name = "wiPrice"  id ="wiPrice"/>
					<input type="hidden" name="rqCode" id="rqCode"/>
    </section>   
</body>

<script>

function list(){
  	 
 	let json = JSON.parse('${detail}');
 	
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
 	
 	let rqSysDate = json[0].rqSimpleDate;
 	$('#rqSysDate').append(rqSysDate);
 	
 	let rqImage=" ";
 	rqImage += "<img class='deal__img' src='../../resources/imgs/common/"+json[0].rqImage+"'>"
 	$('#rqImage').append(rqImage);
    }


function prClick(num){
	
		let bidInfojson = JSON.parse('${bidList}');
		let bidInfobiMmHelper = bidInfojson[0].biMmHelperView;
			
	let form = document.createElement("form");
	form.action = "MyProfile";
	form.method = "post";
	let mId = document.getElementById("bidInfobiMmHelper2")[num];
	form.append(mId);
	document.body.appendChild(form);
	form.submit();
}


//포문을 없애고 1  2 3 4 5 파라미터를 넣고 액셉트 괄호안에 
// 액셉트  파라미터 받고 초이스에서 

function accept(num){
	
		
		
	
	//	let choice = document.getElemenstByName("choice")[num].value;
	//	let wiRqCode = document.getElementsByName("wiRqCode")[num].value;
		let wiHelper = document.getElementsByName("wiHelper")[num].value;
		let wiPrice = document.getElementsByName("wiPrice")[num].value;
		
		alert(wiHelper+wiPrice);
		
		
	var b = num;
		let form = document.createElement("form");
		form.action = "Accept";
		form.method = "post";
		
		
// 		let choice = document.getElemenstByName("choice")[num];
		let wiRqCode = document.getElementsByName("wiRqCode")[0];
		let wiHelper = document.getElementsByName("wiHelper")[i];
		let wiPrice = document.getElementsByName("wiPrice")[i];
		   
// 		  alert(choice.value);  
		  alert(wiRqCode.value); 
		  alert(wiHelper.value);  
		  alert(wiPrice.value);  
		
		
		
		var a = confirm("정말로 낙찰 하시겠습니까?");
		
		if(a == true){
			alert("선택하신 HELPER로 낙찰 하셨습니다.");
			// form.appendChild(choice);
// 			 form.appendChild(rqCode);
// 			  form.appendChild(wiHelper);
// 			  form.appendChild(biPrice);
// 			document.body.appendChild(form);
// 			form.submit();
			}else {
				return form;
			}
		
// 		form.submit();
  function modify(){
    	var yn = confirm("수정 하시겠습니까?");
    	
    	if(yn == true){
    	 
    	var rqCode = document.getElementsByName("rqCode")[0];
    	
    	var rqId = document.getElementsByName("rqId")[0];
    	
    	alert(rqCode.value);
    	alert(rqId.value);
    	
    	
    	
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