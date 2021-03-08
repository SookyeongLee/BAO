<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form name=rqFilter method=post>
                                          대분류: 
                   <select name='rqFilterCode' onchange="change(this.selectedIndex);"  class=input >
                     		<option value="select">선택</option>
                            <option value="1000">레슨</option>
                            <option value="2000">홈/리빙</option>
                            <option value="3000">비즈니스</option>
                            <option value="4000">디자인</option>
                            <option value="5000">IT/프로그래밍</option>
                            <option value="6000">건강/미용</option>
                    </select>                                                  
                                                  소분류: 
                    <select name='rqSubName'  class=select>
                       <option value=''>전체</option>
					                   
                    </select>
					<input type="button" value="클리크" onclick="zz()">
</form> 

<script>

     var cnt = new Array();
     cnt[0] = new Array('선택해주세요');
     cnt[1] = new Array('학업','외국어','음악','미술','스포츠','자격증');
     cnt[2] = new Array('인테리어','이사','청소업체','야외시공','수리','가구');
     cnt[3] = new Array('번역','통역','마케팅','컨설팅','문서','인쇄');
     cnt[4] = new Array('일러스트 디자인','인쇄물 디자인','웹/모바일 디자인','제품디자인','공간디자인','브랜딩');
     cnt[5] = new Array('게임','데이터베이스','웹사이트개발','모바일웹','AI개발','보안');
     cnt[6] = new Array('영양/식단관리','심리상담','심리치료','헤어','메이크업','피부관리');
     function change(add) {
     select=document.rqFilter.rqSubName
       /* 옵션메뉴삭제 */
       for (i=select.length-1; i>=0; i--){
    	   select.options[i] = null;
         }
       /* 옵션박스추가 */
       for (i=0; i < cnt[add].length;i++){                     
    	   select.options[i] = new Option(cnt[add][i], cnt[add][i]);
         }         
       
     }
     function zz(){
    	 var a = document.getElementsByName("rqFilterCode")[0];
         var b = document.getElementsByName("rqSubName")[0];
       
       
         alert(a.value);
         alert(b.value);
       
         var form = document.createElement("form");
         form.action="ReqSend";
         form.post="post";
         
         form.appendChild(a);
         form.appendChild(b);
         document.body.appendChild(form);
         
         form.submit();
     }
     </script>
</body>
</html>