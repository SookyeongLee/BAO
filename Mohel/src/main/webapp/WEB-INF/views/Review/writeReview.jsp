<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>모헬: 모두의 헬퍼 - 리뷰작성</title>
<meta name="description" content="리뷰작성 페이지">
<link rel="icon" type="image/png"
	href="/resources/imgs/common/logo-m.png">
<script src="https://kit.fontawesome.com/301043e4a8.js"
	crossorigin="anonymous"></script>
<link
	href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600;700&display=swap"
	rel="stylesheet">
<link rel="stylesheet" href="/resources/css/common.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
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
	<!-- Write a review -->
	<section class="review mypage">
		<h2 class="mypage__title">리뷰작성</h2>
		<form name="insReviewInfo" id="insReviewInfo" action="insReview"
			method="POST">
			<div class="review__list1">
				<img src="../../resources/imgs/common/2000.jpg"
					class="review__list__img">
				<div class="review__list__subCtg">인테리어</div>
				<ul class="review__list__score" id="star">
					<li class="review__list__score-star"><i class="far fa-star"></i></li>
					<li class="review__list__score-star"><i class="far fa-star"></i></li>
					<li class="review__list__score-star"><i class="far fa-star"></i></li>
					<li class="review__list__score-star"><i class="far fa-star"></i></li>
					<li class="review__list__score-star"><i class="far fa-star"></i></li>
				</ul>
			</div>
			<div class="review__list2">
				<textarea name="rvComment" class="review__list__wirte" rows="15"
					placeholder="리뷰를 작성해주세요:)"></textarea>
			</div>
			<div class="mypage__bottom">
				<button type="button" class="mypage__btn" onClick="reviewclick()">리뷰등록</button>
			</div>
		</form>
	</section>
</body>
<script>




function reviewclick(){
	let rvComment = document.getElementsByName("rvComment")[0];
// 	let  = document.getElementsByName()[];
	
	alert(rvComment.value);
	let form = document.createElement("form");
	

	
	form.action = "End";
	form.method = "Post";	
	
	form.appendChild(rvComment);
// 	form.appendChild(rcStar);
	document.body.appendChild(form);
	form.submit();
}
	


</script>
</html>
