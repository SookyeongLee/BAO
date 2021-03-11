<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width" />
    <title>Login Demo - Kakao JavaScript SDK</title>
   	<meta name="google-signin-scope" content="profile email">
    <meta name="google-signin-client_id" content="591795889729-panhl4bo1ebergn6asvp942gqae200jt.apps.googleusercontent.com">
	<script src="https://apis.google.com/js/platform.js" async defer></script>
<title>Insert title here</title>
</head>
<body>
 <div>Lorem ipsum</div>
    <div class="g-signin2" data-onsuccess="onSignIn" data-theme="dark" style="width:222px;"></div>
    
</body>
<script>
function onSignIn(googleUser) {
    // Useful data for your client-side scripts:
    var profile = googleUser.getBasicProfile();
    console.log("ID: " + profile.getId()); // Don't send this directly to your server!
    console.log('Full Name: ' + profile.getName());
    console.log('Given Name: ' + profile.getGivenName());
    console.log('Family Name: ' + profile.getFamilyName());
    console.log("Image URL: " + profile.getImageUrl());
    console.log("Email: " + profile.getEmail());

    // The ID token you need to pass to your backend:
    var id_token = googleUser.getAuthResponse().id_token;
    console.log("ID Token: " + id_token);
};
</script>

</html>

