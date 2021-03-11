<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body onload="cc()">
${rqd }
${acac } 
</body>
<script>
function cc(){
	let rrr = '${rqd}';
	let rqd = JSON.parse(rrr);
	alert(rqd);
	
}
</script>
</html>