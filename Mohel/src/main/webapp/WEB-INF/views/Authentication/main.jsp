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
    <link rel="icon" type="image/png" href="/resources/imgs/common/logo-m.png">
    <script src="https://kit.fontawesome.com/301043e4a8.js" crossorigin="anonymous"></script>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="/resources/css/main.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body onLoad="main()">
    <!-- Navbar -->
    <nav id="navbar">
        <div class="navbar__logo" > 
            <a href="Main"><img class="navbar__logo__img" src="/resources/imgs/common/logo.png"></a>
        </div>
        <ul class="navbar__menu">
            <li class="navbar__menu__item" onClick="myPageClick()" >마이페이지</li>
            <li class="navbar__menu__item" onClick="registerReq()">역경매등록</li>                    
            <li class='navbar__menu__item' id="logCk" value="aa" onClick='login()'>로그인</li>
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
                <button onClick="searchClick()" class="home__search__btn"><i class="fas fa-search"></i></button>            
            </div>
        </div>
    </header>
    <!-- Section -->
    <section id="service">
        <!-- 대분류 -->
        <div class="category">
            <ul class="category__menu">
                <li class="category__menu__item">
                    <div class="category__menu-icon" onClick="filterClick(4)"><i class="fas fa-palette"></i></div>
                    <div class="category__menu-name">디자인</div>
                </li>
                <li class="category__menu__item">
                    <div class="category__menu-icon" onClick="filterClick(5)"><i class="fas fa-laptop-code"></i></div>
                    <div class="category__menu-name">IT/프로그래밍</div>
                </li>
                <li class="category__menu__item">
                    <div class="category__menu-icon" onClick="filterClick(3)"><i class="fas fa-business-time"></i></div>
                    <div class="category__menu-name">비즈니스</div>
                </li>
                <li class="category__menu__item">
                    <div class="category__menu-icon" onClick="filterClick(1)"><i class="fas fa-chalkboard-teacher"></i></div>
                    <div class="category__menu-name">레슨</div>
                </li>
                <li class="category__menu__item">
                    <div class="category__menu-icon" onClick="filterClick(2)"><i class="fas fa-house-user"></i></div>
                    <div class="category__menu-name">홈/리빙</div>
                </li>
                <li class="category__menu__item">
                    <div class="category__menu-icon" onClick="filterClick(6)"><i class="fas fa-running"></i></div>
                    <div class="category__menu-name">건강/미용</div>
                </li>
            </ul>
        </div>
        <!-- 역경매 리스트 -->
        <div class="list">
            <!-- 최신순 -->
            <div class="list__container">
                <h1 class="list__title">새로운 역경매</h1>
                <ul class="list__items" id="newRequestList"></ul>
            </div>
            <!-- 인기순 -->
            <div class="list__container">
                <h1 class="list__title">인기 역경매</h1>
                <ul class="list__items" id="topRequestList"></ul>
            </div>
        </div>    
    </section>
       <%--    ${requestData}
      ${searchData} --%>
</body>
<section id="search"></section>
<script>
//최신순
if(JSON.parse('${requestData}').length != 0){
   filterScreen();  
}else{}
//인기순
if(JSON.parse('${requestBestData}').length != 0){
      filterBestScreen();  
}else{}
//온로드 
function main(){

	  let json = JSON.parse('${jsonData}');
//    if(!=로그인 x??){
//       document.getElementById("logCk").innerHTML ="로그인";
//    }else{
//       document.getElementById("logCk").innerHTML ="로그아웃";
//    }

//    searchScreen();
//    BestsearchScreen();
   
   for(let i=0; i<6;i++){
       
	   let insertTr= " ";
	   insertTr += "<li class='list__item' onClick='mainclick()'>";
	       
	   insertTr += "<img class='list__item__img' src='/resources/imgs/common/"+json[i].rqImage+"'>";
	   insertTr += "<div class='list__item__description'>";
	   insertTr += "<h4 class='list__item-mainCtg'>"+json[i].rqSubName+"</h4>";
	   insertTr += "<div class='list__item-title'>"+json[i].rqTitle+"</div>";
	   insertTr += "</div>";
	   insertTr += "</li>";
	    
	   $("#newRequestList").append(insertTr);
	   $("#topRequestList").append(insertTr);
	  
   }
   
   
}
//최신순 
function filterScreen(){ 
    
    let requestList = JSON.parse('${requestData}');
    for(let index=0 ; index<requestList.length ; index++){
      
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
//인기순  
function filterBestScreen(){ 
  
 let requestList = JSON.parse('${requestBestData}');
 for(let index=0 ; index<6; index++){
   
     let rqCode = requestList[index].rqCode;    
    let insertTr = " ";
    insertTr +=  "<li class='list__item' onClick='DetailClick("+ rqCode +")'>";
    insertTr += "<img class='list__item__img' src='../../resources/imgs/common/"+requestList[index].rqImage+"'>";
    insertTr += "<div class='list__item__description'>"
    insertTr += "<h4 class='list__item-mainCtg'>"+requestList[index].rqSubName+"</h4>";
    insertTr += "<div class='list__item-title'>"+requestList[index].rqTitle+"</div>";
    insertTr += "</div>";
    insertTr += "</li>";
    
    $("#topRequestList").append(insertTr); 
    } 
}

//대분류 클릭 
function filterClick(num){
    let rqFilterCode = (num*1000);     

//     for(i = 1; i < 7; i++){
//          if(num == i){
	let rqFilterName = rqFilterCode ==1000?"레슨":
					rqFilterCode ==2000?"홈/리빙":
						rqFilterCode ==3000?"비즈니스":
							rqFilterCode ==4000?"디자인":
								rqFilterCode ==5000?"IT/프로그래밍":
									rqFilterCode ==6000?"건강/미용":"";
	
              let form = document.createElement("form");
              let input = document.createElement("input");
              input.type = "hidden";
              input.name = "rqFilterCode";
              input.value = rqFilterCode;
              form.appendChild(input);
                  
              form.action = "Filter?rqFilterName="+rqFilterName;
              form.method = "Post";
           
              document.body.appendChild(form);
              form.submit();
//            }
    
    
 }    
 //검색클릭 
function searchClick(){
    
    let form = document.createElement("form");
    let rqWord = document.getElementsByName("wordValue")[0].value;
    alert(rqWord);
    form.action = "Search?rqWord="+rqWord;
    form.method = "Post";          
    
    let input = document.createElement("input");
   input.type = "hidden";
   input.name = "rqWord";
   input.value = rqWord;
   form.appendChild(input);
    
    document.body.appendChild(form);
    form.submit();  

    searchScreen();
 }
 //검색 리스트 
function searchScreen(){
    
    let searchList = JSON.parse('${requestData}');
 for(let index=0 ; index<searchList.length ; index++){
      
     let rqCode = searchList[index].rqCode;    
    let insertTr = " ";
    insertTr +=  "<li class='list__item' onClick='DetailClick("+ rqCode +")'>";
    insertTr += "<img class='list__item__img' src='../../resources/imgs/common/"+searchList[index].rqImage+"'>";
    insertTr += "<div class='list__item__description'>"
    insertTr += "<h4 class='list__item-mainCtg'>"+searchList[index].rqSubName+"</h4>";
    insertTr += "<div class='list__item-title'>"+searchList[index].rqTitle+"</div>";
    insertTr += "</div>";
    insertTr += "</li>";
    
    $("#search").append(insertTr);
  }
 } 
 //검색 인기 리스트 
 function BestsearchScreen(){
    
    let searchList = JSON.parse('${requestBestData}');
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
    
    $("#topRequestList").append(insertTr);
  }
 } 
 //경매 클릭 
 function DetailClick(rqCode){
     var rqCode = rqCode;
     let form = document.createElement("form");
     form.action = "Detail";
     form.method = "Post";
     
     let input = document.createElement("input");
           input.type = "hidden";
           input.name = "rqCode";
           input.value = rqCode;
           alert(input.value);
           form.appendChild(input);
     
     document.body.appendChild(form);
     form.submit();
  }
 //마이페이지 클릭 
   function myPageClick(){
      let form = document.createElement("form");
      form.action = "MyProfile";
      form.method = "Post";
      document.body.appendChild(form);
      form.submit();
   }
//로그인 클릭 
function login(){
   alert('넘어가는가?');
   var form = document.createElement("form");
   
   form.action = 'LogInForm';
   form.method = "post";
   
   document.body.appendChild(form);
   
   form.submit();

}
//경매글 올리기
function registerReq(){
	 let form = document.createElement("form");
     form.action = "DealForm";
     form.method = "Post";
     document.body.appendChild(form);
     form.submit();
 
}

</script>
</html>