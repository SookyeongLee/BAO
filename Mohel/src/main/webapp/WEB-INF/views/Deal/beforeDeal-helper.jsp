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
    <script src="/resources/src/navbar.js" defer></script>
    <script src="/resources/src/bidding.js" defer></script>
</head>
<body>
    
    <!-- Navbar -->
    <%@ include file="/WEB-INF/views/common/navbar.jsp" %>
    
    <section class="deal mypage">
        <h2 class="mypage__title"><div id="rqTitle"></div></h2>
        <!-- Request -->
        <div class="deal__container">
            <div class="deal__img">
                <div id="rqImage"></div>
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
            <input type="hidden" name="rqCode" id="rqCode">
            <input type="hidden" name="rqId" id="rqId">   
            <input type="hidden" name="rqImage" id="rqImage"> 

                <div class="deal__button">
                    <button type="button" class="deal__btn2">입찰하기</button>

                </div>
            </div>
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
                                    <input type="hidden" id="biMmHelper" name="biMmHelper2">
                                </div>
                                <div class="bidding-price-btn__container">
                                    <button type="button" class="bidding-price-btn" onClick = "bid()">신중하게 입찰하기</button>
                                </div>    
                            </form>
                        </div>
                    </div>
                </div>
                <!-- 입찰 모달 끝 -->

        <input type = "hidden" name = "biRqCode" id ="rqCodez" />
        <input type = "hidden" name = "biMmHelper"  id ="alMmid"/>
        <!-- Bidding -->
        <table class="bidding" id ="best"> 
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
            
        </table>
    </section> 
    <input type = "hidden" name = "biRqCode" id ="rqCodez" />
    <input type = "hidden" name = "biMmHelper"  id ="alMmid"/>
      
</body>
<script>
function init(){
		let json = JSON.parse('${detail}');
		alert(json[0].rqTitle+json[0].rqComment+json[0].rqPeriod);
		
		let rqTitle = json[0].rqTitle;
	 	$('#rqTitle').append(rqTitle);
	 	
	    let rqComment = json[0].rqComment;
	 	$('#rqComment').append(rqComment);
		let rqPeriod = json[0].rqPeriod;
	 	$('#rqPeriod').append(rqPeriod);
	 	}