<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>모헬: 모두의 헬퍼</title>
<meta name="description" content="메인 페이지">
<link rel="icon" type="image/png"
	href="/resources/imgs/common/logo-m.png">
<script src="https://kit.fontawesome.com/301043e4a8.js"
	crossorigin="anonymous"></script>
<link rel="stylesheet" href="/resources/css/main.css">
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>

</head>
<body onLoad="plusSearch()">
	<!-- Navbar -->
	<nav id="navbar">
		<div class="navbar__logo">
			<a href="#"><img class="navbar__logo__img"
				src="resources/imgs/common/logo.png"></a>
		</div>
		<ul class="navbar__menu">
			<li class="navbar__menu__item" onClick="myPageClick()">마이페이지</li>
			<li class="navbar__menu__item">거래등록</li>
			<li class="navbar__menu__item">로그인</li>
		</ul>
	</nav>
	<!-- Header -->
	<header id="head">
		<!-- 홈화면(검색창) -->
		<div class="home">
			<div class="home__description">
				<p class="home__description__p">쉽고 편리한 역경매 플랫폼</p>
				<div class="home__description__title">도움이 필요할 땐, 모헬</div>
			</div>
			<div class="home__search">
				<input type="text" class="home__search__input" name="wordValue">
				<button onClick="searchClick()" class="home__search__btn">
					<i class="fas fa-search"></i>
				</button>
			</div>
		</div>
	</header>
	<!-- Section -->
	<section id="service">
		<!-- 대분류 -->
		<div class="category">
			<ul class="category__menu">
				<li class="category__menu__item">
					<div class="category__menu-icon" onClick="filterClick(4)">
						<i class="fas fa-palette"></i>
					</div>
					<div class="category__menu-name">디자인</div>
				</li>
				<li class="category__menu__item">
					<div class="category__menu-icon" onClick="filterClick(5)">
						<i class="fas fa-laptop-code"></i>
					</div>
					<div class="category__menu-name">IT/프로그래밍</div>
				</li>
				<li class="category__menu__item">
					<div class="category__menu-icon" onClick="filterClick(3)">
						<i class="fas fa-business-time"></i>
					</div>
					<div class="category__menu-name">비즈니스</div>
				</li>
				<li class="category__menu__item">
					<div class="category__menu-icon" onClick="filterClick(1)">
						<i class="fas fa-chalkboard-teacher"></i>
					</div>
					<div class="category__menu-name">레슨</div>
				</li>
				<li class="category__menu__item">
					<div class="category__menu-icon" onClick="filterClick(2)">
						<i class="fas fa-house-user"></i>
					</div>
					<div class="category__menu-name">홈/리빙</div>
				</li>
				<li class="category__menu__item">
					<div class="category__menu-icon" onClick="filterClick(6)">
						<i class="fas fa-running"></i>
					</div>
					<div class="category__menu-name">건강/미용</div>
			</ul>
		</div>
		<!-- 역경매 리스트 -->
		<div class="list">
			<!-- 최신순 -->
			<div class="list__container">
				<h1 class="list__title">새로운 역경매</h1>

				<ul id="newRequestList" class="list__items"></ul>
				<ul id="searchData" class="list__items"></ul>

			</div>

			<div>
				<input type="button" value="이전" onClick="beforeClick()" />
				<input type="button" value="다음" onClick="afterClick()" />
			</div>

			<!-- 인기순 -->
			<div class="list__container">
				<h1 class="list__title">인기 역경매</h1>

				<ul id="TopRequestList" class="list__items"></ul>
				<ul id="TopsearchData" class="list__items"></ul>
			</div>
		</div>

	</section>
</body>
<script>
var r=0;

function beforeClick(){
	
	$("#newRequestList").empty();	
	let requestList = JSON.parse('${requestData}');

	     r -= 6;	
	     if(r >= 0){
	
		 for(let index = r; index < r+6; index++){
				
		     let rqCode = requestList[index].rqCode;	 
			 let insertTr = " ";
			 insertTr +=  "<li class='list__item' onClick='DetailClick("+ rqCode +")'>";
			 insertTr += "<img class='list__item__img' src='../../resources/imgs/common/"+requestList[index].rqImage+"'>";
			 insertTr += "<div class='list__item__description'>"
			 insertTr += "<h4 class='list__item-mainCtg'>"+requestList[index].rqSubName+"</h4>";
			 insertTr += "<div class='list__item-title'>"+requestList[index].rqTitle+"</div>";
			 insertTr += "</div>";
			 insertTr += "</li>";
			 
			 $("#newRequestList").append(insertTr);
			 } 
	     } else {
	    	   r += 6;	
	  		 for(let index = r; index < r+6; index++){
	  				
	  		     let rqCode = requestList[index].rqCode;	 
	  			 let insertTr = " ";
	  			 insertTr +=  "<li class='list__item' onClick='DetailClick("+ rqCode +")'>";
	  			 insertTr += "<img class='list__item__img' src='../../resources/imgs/common/"+requestList[index].rqImage+"'>";
	  			 insertTr += "<div class='list__item__description'>"
	  			 insertTr += "<h4 class='list__item-mainCtg'>"+requestList[index].rqSubName+"</h4>";
	  			 insertTr += "<div class='list__item-title'>"+requestList[index].rqTitle+"</div>";
	  			 insertTr += "</div>";
	  			 insertTr += "</li>";
	  			 
	  			 $("#newRequestList").append(insertTr);
	  			 } 
	     }
} 


function afterClick(){
	
	$("#newRequestList").empty();	
	let requestList = JSON.parse('${requestData}');

	     r += 6;	
	     if(r < requestList.length){
	
		 for(let index = r; index < r+6; index++){
				
		     let rqCode = requestList[index].rqCode;	 
			 let insertTr = " ";
			 insertTr +=  "<li class='list__item' onClick='DetailClick("+ rqCode +")'>";
			 insertTr += "<img class='list__item__img' src='../../resources/imgs/common/"+requestList[index].rqImage+"'>";
			 insertTr += "<div class='list__item__description'>"
			 insertTr += "<h4 class='list__item-mainCtg'>"+requestList[index].rqSubName+"</h4>";
			 insertTr += "<div class='list__item-title'>"+requestList[index].rqTitle+"</div>";
			 insertTr += "</div>";
			 insertTr += "</li>";
			 
			 $("#newRequestList").append(insertTr);
			 } 
	     } else {
	    	   r -= 6;	
	  		 for(let index = r; index < r+6; index++){
	  				
	  		     let rqCode = requestList[index].rqCode;	 
	  			 let insertTr = " ";
	  			 insertTr +=  "<li class='list__item' onClick='DetailClick("+ rqCode +")'>";
	  			 insertTr += "<img class='list__item__img' src='../../resources/imgs/common/"+requestList[index].rqImage+"'>";
	  			 insertTr += "<div class='list__item__description'>"
	  			 insertTr += "<h4 class='list__item-mainCtg'>"+requestList[index].rqSubName+"</h4>";
	  			 insertTr += "<div class='list__item-title'>"+requestList[index].rqTitle+"</div>";
	  			 insertTr += "</div>";
	  			 insertTr += "</li>";
	  			 
	  			 $("#newRequestList").append(insertTr);
	  			 } 
	     }
} 


//최신순
if(JSON.parse('${requestData}').length != 0){
	filterScreen();  
}else{}

if(JSON.parse('${requestBestData}').length != 0){
	filterBestScreen();  
}else{}

 
 function plusSearch(){
	 searchScreen();
	 BestsearchScreen();
 }
	 
       function filterClick(num){
    		let filterCode = (num*1000); 		
	
    	    			let form = document.createElement("form");
    	    			form.action = "Filter";
    	    			form.method = "Post";
    	    			
    	    			      let input = document.createElement("input");
    	    			      input.type = "hidden";
    	    			      input.name = "rqFilterCode";
    	    			      input.value = filterCode;
    	    			      form.appendChild(input);
    	    				    	
    	    			document.body.appendChild(form);
    	    			form.submit();
    		
       }    
       
      function filterScreen(){ 
      
        	 let requestList = JSON.parse('${requestData}');
        	 for(let index=0 ; index < 6 ; index++){
     			
        	     let rqCode = requestList[index].rqCode;	 
        		 let insertTr = " ";
        		 insertTr +=  "<li class='list__item' onClick='DetailClick("+ rqCode +")'>";
        		 insertTr += "<img class='list__item__img' src='../../resources/imgs/common/"+requestList[index].rqImage+"'>";
        		 insertTr += "<div class='list__item__description'>"
        		 insertTr += "<h4 class='list__item-mainCtg'>"+requestList[index].rqSubName+"</h4>";
        		 insertTr += "<div class='list__item-title'>"+requestList[index].rqTitle+"</div>";
        		 insertTr += "</div>";
        		 insertTr += "</li>";
        		 
        		 $("#newRequestList").append(insertTr);
        		 } 
       }	 
      
      function filterBestScreen(){ 
          
     	 let requestList = JSON.parse('${requestBestData}');
     	 for(let index = 0 ; index < 6 ; index++){
  			
     	     let rqCode = requestList[index].rqCode;	 
     		 let insertTr = " ";
     		 insertTr +=  "<li class='list__item' onClick='DetailClick("+ rqCode +")'>";
     		 insertTr += "<img class='list__item__img' src='../../resources/imgs/common/"+requestList[index].rqImage+"'>";
     		 insertTr += "<div class='list__item__description'>"
     		 insertTr += "<h4 class='list__item-mainCtg'>"+requestList[index].rqSubName+"</h4>";
     		 insertTr += "<div class='list__item-title'>"+requestList[index].rqTitle+"</div>";
     		 insertTr += "</div>";
     		 insertTr += "</li>";
     		 
     		 $("#TopRequestList").append(insertTr); 
     		 } 
    }
      
		
		 function searchClick(){
			  
	    	   let form = document.createElement("form");
	    	   let word = document.getElementsByName("wordValue")[0].value;
	    	   form.action = "Search";
	    	   form.method = "Post";    	   
	    	   
	    	   let input = document.createElement("input");
			   input.type = "hidden";
			   input.name = "rqWord";
			   input.value = word;
			   form.appendChild(input);
	    	   
	    	   document.body.appendChild(form);
	    	   form.submit();  

	       }
		 
		 
		 function searchScreen(){
		 
			 let searchList = JSON.parse('${searchData}');
		 for(let index=0 ; index<6 ; index++){
				
		     let rqCode = searchList[index].rqCode;	 
			 let insertTr = " ";
			 insertTr +=  "<li class='list__item' onClick='DetailClick("+ rqCode +")'>";
			 insertTr += "<img class='list__item__img' src='../../resources/imgs/common/"+searchList[index].rqImage+"'>";
			 insertTr += "<div class='list__item__description'>"
			 insertTr += "<h4 class='list__item-mainCtg'>"+searchList[index].rqSubName+"</h4>";
			 insertTr += "<div class='list__item-title'>"+searchList[index].rqTitle+"</div>";
			 insertTr += "</div>";
			 insertTr += "</li>";
			 
			 $("#searchData").append(insertTr);
		  }
		 } 
		 
		 function BestsearchScreen(){
			 
			 let searchList = JSON.parse('${searchBestData}');
		 for(let index=0 ; index<6 ; index++){
				
		     let rqCode = searchList[index].rqCode;	 
			 let insertTr = " ";
			 insertTr +=  "<li class='list__item' onClick='DetailClick("+ rqCode +")'>";
			 insertTr += "<img class='list__item__img' src='../../resources/imgs/common/"+searchList[index].rqImage+"'>";
			 insertTr += "<div class='list__item__description'>"
			 insertTr += "<h4 class='list__item-mainCtg'>"+searchList[index].rqSubName+"</h4>";
			 insertTr += "<div class='list__item-title'>"+searchList[index].rqTitle+"</div>";
			 insertTr += "</div>";
			 insertTr += "</li>";
			 
			 $("#TopsearchData").append(insertTr);
		  }
		 } 
	
	  function DetailClick(value){
		  	let rqCode = value;
				let form = document.createElement("form");
				form.action = "Detail";
				form.method = "Post";
				form.target = "_black"
			
			let input = document.createElement("input");
			      input.type = "hidden";
			      input.name = "rqCode";
			      input.value = rqCode;
			      form.appendChild(input);	 
			      
		    let input2 = document.createElement("input");
			      input2.type = "hidden";
			      input2.name = "rqDetailSelect";
			      input2.value = "bh";
			      form.appendChild(input2);	      
			      
			document.body.appendChild(form);
			form.submit();
		}
	  
       function myPageClick(){
    	   let form = document.createElement("form");
    	   form.action = "MyProfile";
    	   form.method = "Post";
    	   document.body.appendChild(form);
    	   form.submit();
       }
    
    </script>

</html>