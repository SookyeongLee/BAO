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
<link rel="icon" type="image/png"
	href="/resources/imgs/common/logo-m.png">
<script src="https://kit.fontawesome.com/301043e4a8.js"
	crossorigin="anonymous"></script>
<link
	href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600;700&display=swap"
	rel="stylesheet">
<link rel="stylesheet" href="/resources/css/common.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body onload="init()">
	<!-- Navbar -->
	<nav id="navbar">
		<div class="navbar__top">
			<div class="navbar__logo">
				<a href="#"><img class="navbar__logo__img"
					src="/resources/imgs/common/logo-white.png"></a>
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
		<h2 class="mypage__title">
			<div id="rqTitle"></div>
		</h2>
		<!-- Request -->

		<div class="deal__container">
			<div class="deal__img">
				<div id="rqImage"></div>
			</div>
			<div class="deal__info__container">
				<table class="deal__info">
					<tr class="deal__list">
						<th class="deal__title" style="width: 300px">기간</th>
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
				<input type="hidden" name="rqCode" id="rqCode"> <input
					type="hidden" name="rqId" id="rqId"> <input type="hidden"
					name="rqImage" id="rqImage">

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
									<button type="button" class="bidding-price-btn" onClick="bid()">신중하게
										입찰하기</button>
								</div>
							</form>
						</div>
					</div>
				</div>
				<!-- 입찰 모달 끝 -->

			</div>
		</div>
		<input type="hidden" name="biRqCode" id="rqCodez" /> <input
			type="hidden" name="biMmHelper" id="alMmid" />
		<!-- Bidding -->
		<table class="bidding">
			<caption class="bidding__title">입찰기록내역</caption>
			<colgroup>
				<col style="width: 60%;">
				<col style="width: 40%;">
			</colgroup>
			<thead>
				<tr>
					<th class="bidding__head right">입찰자</th>
					<th class="bidding__head">금액</th>

				</tr>
			</thead>
			<tbody>
				<tr>
					<td class="bidding__data right"><button type="button"
							class="bidding__data__id" id="bidInfobiMmHelper2"
							onClick="prClick(1)">
							<div name="biMmHelperView">
						</button></td>
					<td class="bidding__data"><div name="biPricez"></div></td>
				</tr>
				<tr>
					<td class="bidding__data right"><button type="button"
							class="bidding__data__id" id="bidInfobiMmHelper2"
							onClick="prClick(2)">
							<div name="biMmHelperView">
						</button></td>
					<td class="bidding__data"><div name="biPricez"></div></td>
				</tr>
				<tr>
					<td class="bidding__data right"><button type="button"
							class="bidding__data__id" id="bidInfobiMmHelper2"
							onClick="prClick(3)">
							<div name="biMmHelperView">
						</button></td>
					<td class="bidding__data"><div name="biPricez"></div></td>
				</tr>
				<tr>
					<td class="bidding__data right"><button type="button"
							class="bidding__data__id" id="bidInfobiMmHelper2"
							onClick="prClick(4)">
							<div name="biMmHelperView">
						</button></td>
					<td class="bidding__data"><div name="biPricez"></div></td>
				</tr>
				<tr>
					<td class="bidding__data right"><button type="button"
							class="bidding__data__id" id="bidInfobiMmHelper2"
							onClick="prClick(5)">
							<div name="biMmHelperView">
						</button></td>
					<td class="bidding__data"><div name="biPricez"></div></td>
				</tr>
				<tr>
					<td class="bidding__data right"><button type="button"
							class="bidding__data__id" id="bidInfobiMmHelper2"
							onClick="prClick(6)">
							<div name="biMmHelperView">
						</button></td>
					<td class="bidding__data"><div name="biPricez"></div></td>
				</tr>
				<tr>
					<td class="bidding__data right"><button type="button"
							class="bidding__data__id" id="bidInfobiMmHelper2"
							onClick="prClick(7)">
							<div name="biMmHelperView">
						</button></td>
					<td class="bidding__data"><div name="biPricez"></div></td>
				</tr>
				<tr>
					<td class="bidding__data right"><button type="button"
							class="bidding__data__id" id="bidInfobiMmHelper2"
							onClick="prClick(8)">
							<div name="biMmHelperView">
						</button></td>
					<td class="bidding__data"><div name="biPricez"></div></td>
				</tr>
				<tr>
					<td class="bidding__data right"><button type="button"
							class="bidding__data__id" id="bidInfobiMmHelper2"
							onClick="prClick(9)">
							<div name="biMmHelperView">
						</button></td>
					<td class="bidding__data"><div name="biPricez"></div></td>
				</tr>
				<tr>
					<td class="bidding__data right"><button type="button"
							class="bidding__data__id" id="bidInfobiMmHelper2"
							onClick="prClick(10)">
							<div name="biMmHelperView">
						</button></td>
					<td class="bidding__data"><div name="biPricez"></div></td>
				</tr>
				<tr>
					<td class="bidding__data right"><button type="button"
							class="bidding__data__id" id="bidInfobiMmHelper2"
							onClick="prClick(11)">
							<div name="biMmHelperView">
						</button></td>
					<td class="bidding__data"><div name="biPricez"></div></td>
				</tr>
				<tr>
					<td class="bidding__data right"><button type="button"
							class="bidding__data__id" id="bidInfobiMmHelper2"
							onClick="prClick(12)">
							<div name="biMmHelperView">
						</button></td>
					<td class="bidding__data"><div name="biPricez"></div></td>
				</tr>
				<tr>
					<td class="bidding__data right"><button type="button"
							class="bidding__data__id" id="bidInfobiMmHelper2"
							onClick="prClick(13)">
							<div name="biMmHelperView">
						</button></td>
					<td class="bidding__data"><div name="biPricez"></div></td>
				</tr>
				<tr>
					<td class="bidding__data right"><button type="button"
							class="bidding__data__id" id="bidInfobiMmHelper2"
							onClick="prClick(14)">
							<div name="biMmHelperView">
						</button></td>
					<td class="bidding__data"><div name="biPricez"></div></td>
				</tr>
				<tr>
					<td class="bidding__data right"><button type="button"
							class="bidding__data__id" id="bidInfobiMmHelper2"
							onClick="prClick(15)">
							<div name="biMmHelperView">
						</button></td>
					<td class="bidding__data"><div name="biPricez"></div></td>
				</tr>
			</tbody>
		</table>
	</section>
</body>
<script>

	function init(){
		
		let json = JSON.parse('${detail}');
		
		let rqTitle = json[0].rqTitle;
	 	$('#rqTitle').append(rqTitle);
	 	
	    let rqComment = json[0].rqComment;
	 	$('#rqComment').append(rqComment);

		let rqPeriod = json[0].rqPeriod;
	 	$('#rqPeriod').append(rqPeriod);

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
    	rqImage += "<img src='../../resources/imgs/common/"+json[0].rqImage+"' class='deal__img'>"
    	$('#rqImage').append(rqImage);	
    	
			
		let json1 = JSON.parse('${getReq}');   //rqcode
		let json2 = JSON.parse('${getReq2}');  //al_mmid  == helper 
		
		alert('${getReq}');
		alert('${getReq2}');
		
		let rqCode1 = json1[0].rqCode;   //제이슨에서 넘어온 rqCode 
		$("#rqCodez").val(rqCode1);
		   
		let alMmid = json2[0].alMmid;   //제이슨에서 넘어온 almmid
		$("#alMmid").val(alMmid);			
			
		let bidInfojson = JSON.parse('${bidList}');
		let bidInfobiMmHelper = bidInfojson[0].biMmHelperView;
		let bidInfobiPrice = bidInfojson[0].biPrice;			
			 
			 for(i = 0 ; i < 15; i++){				 
					let bidInfoHelper = document.getElementsByName("biMmHelperView")[i]; 
					 let biMmHelperz = document.createElement('Div');              
					 biMmHelperz.textContent = bidInfojson[i].biMmHelperView;  
					 bidInfoHelper.appendChild(biMmHelperz)
				 
				 
				 let bidInfoPrice = document.getElementsByName("biPricez")[i]; 
				 let biPricez = document.createElement('Div');              
				 biPricez.textContent = bidInfojson[i].biPrice;  
				 bidInfoPrice.appendChild(biPricez)
			 }			 
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
	
	function bid(){
	
  		let rqCode = document.getElementsByName("biRqCode")[0];
    	let biMmHelper = document.getElementsByName("biMmHelper")[0];
    	let biPrice = document.getElementsByName("biPrice")[0];
	 
	 	 let form = document.createElement("form");
	 	 form.action = "RegisterBid";
	  	form.method = "post";
	    
	  if(biPrice.value%1000==0){
		  alert("안전하게 입찰 성공");
		  form.appendChild(rqCode);
		  form.appendChild(biMmHelper);
		  form.appendChild(biPrice);
		  document.body.appendChild(form);
		  form.submit();
	  }else{
		  alert("천원단위만 가능합니다.");
	  		return form;
	  }	  
}

</script>
</html>