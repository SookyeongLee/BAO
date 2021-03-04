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
</head>
<body>
	<!-- Navbar -->
	<nav id="navbar">
		<div class="navbar__logo">
			<a href="#"><img class="navbar__logo__img"
				src="imgs/common/logo.png"></a>
		</div>
		<ul class="navbar__menu">
			<li class="navbar__menu__item">마이페이지</li>
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
					<div class="category__menu-icon" onClick="filterClick(1)">
						<i class="fas fa-palette"></i>
					</div>
					<div class="category__menu-name">디자인</div>
				</li>
				<li class="category__menu__item">
					<div class="category__menu-icon" onClick="filterClick(2)">
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
					<div class="category__menu-icon" onClick="filterClick(4)">
						<i class="fas fa-chalkboard-teacher"></i>
					</div>
					<div class="category__menu-name">레슨</div>
				</li>
				<li class="category__menu__item">
					<div class="category__menu-icon" onClick="filterClick(5)">
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
      <section id="requestList"></section>
      ${requestData}
      ${searchData}
  
	</body>
	<script>

       function filterClick(num){
    		let filterCode = (num*1000); 		
	
    		for(i = 1; i < 7; i++){
    			  if(num == i){
    	    			let form = document.createElement("form");
    	    			form.action = "Filter";
    	    			form.method = "Post";
    	    			
    	    			      let input = document.createElement("input");
    	    			      input.type = "hidden";
    	    			      input.name = "rqFilterCode";
    	    			      input.value = filterCode;
    	    			      form.appendChild(input);
    	    			
    	    			      alert(filterCode);
    	    			document.body.appendChild(form);
    	    			form.submit();
    	    	   }
    		}
    		  let section = document.getElementById("requestList");
    		  let requestList = JSON.parse('${requestData}');
    		  alert(requestList[0].rqImage);
    	     
    	     /* let record = parseInt(requestList.length/5);
     		    record = (requestList.length%5 > 0)? record + 1: record;
     		    for(rIndex=0; rIndex < record; rIndex++){
     			let div = document.createElement('Div');
     			div.style.display = "inline-flex";
     			div.setAttribute("name", "line");
     			section.appendChild(div);
     		} 
  
     	  for(index=0; index < requestList.length; index++){
     			let rDivIndex = parseInt(index/5);
     			let mvDiv = document.createElement('Div');
     			mvDiv.style.width = "400px";
     			mvDiv.style.height = "300px";
     			mvDiv.style.margin = "0px 10px 20px 0px";                
     			mvDiv.style.backgroundImage = "url(/resources/imgs/filter/" + requestList[index].rqImage + ")"
     			mvDiv.style.backgroundSize = "contain";
     			mvDiv.style.cursor = "pointer";0
     		}*/
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
		   alert(word);
		   form.appendChild(input);
    	   
    	   document.body.appendChild(form);
    	   form.submit();
    	   
       }
    
    </script>

</html>