<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>로그인</title>
<style>
	.container {width: 600px; margin: 30px auto; border: 1px solid black;}
	h1 {text-align: center; margin-top: 40px;}
	.login_win {text-align: center; padding: 20px; margin: 10px;}
	#user_id, #user_pw {width: 300px; height: 30px; padding: 10px; margin: 10px;}
	#login_btn{
	    width: 260px; height:60px; padding: 10px; margin: 10px; border: none;
	    color: white; font-size: 1.1em; border-radius: 12px;}
	#login_btn {background-color: #ccb2e5;}
	a {text-decoration: none; color: white;}
	#kakao{width: 260px; height: 60px;}
</style>
</head>
<body>
    <div class="container">
        <h1>모두의 웹툰과 함께하기</h1>
        <div class="err">${msg }</div>
        <div class="login_win">
            <form action="/login" method="post">
                <input type="text" id="user_id" name="user_id" placeholder="아이디" value="${user_id}" autofocus><br>
                <input type="password" id="user_pw" name="user_pw" placeholder="비밀번호"><br>
                <input id="login_btn" type="submit" value="로그인">
            </form>
            <div><img src="/images/login_logo/kakao_login_medium_wide.png" id="kakao" onclick="goKakao()"></div>
            <div><img src="/images/login_logo/naver.PNG" id="naver" onclick="goNaver('${state}')"></div>
            <!-- <div><img src="/images/login_logo/facebook_login.PNG" id="facebook" onclick=""></div> -->
            <div><img src="/images/login_logo/google.PNG" id="google" onclick="goGoogle()"></div>
        </div>
    </div>
</body>
<script type="text/javascript">
	function goKakao() {
		location.href = 'https://kauth.kakao.com/oauth/authorize'
			    		+'?client_id=48c16d63af5493c7ae43a1433ec7760f'
			            +'&redirect_uri=http://localhost:8089/login?platNo=1'
			            +'&response_type=code'
	}
	function goNaver(state) {
		var encoding = encodeURIComponent('http://localhost:8089/naverAPI')
		location.href = 'https://nid.naver.com/oauth2.0/authorize?response_type=code'
						+'&client_id=gtb_8Ij5V31vLTCJA7F3'
						+'&redirect_uri='+encoding
						+'&state='+state
	}
	function goFacebook() {
		location.href = 'https://www.facebook.com/dialog/oauth?'
						+'client_id=3176381649143544'
						+'&redirect_uri=https://127.0.0.1:8089/login?platNo=2'
						+'&scope=ads_management'
						
	}
	function goGoogle() {
		location.href = 'https://accounts.google.com/o/oauth2/v2/auth?'
						 + 'scope=https%3A//www.googleapis.com/auth/drive.metadata.readonly'
						 + '&access_type=offline'
						 + '&include_granted_scopes=true'
						 + '&response_type=code'
						 + '&state=state_parameter_passthrough_value'
						 + '&redirect_uri=http://localhost:8089/login?platNo=3'
						 + '&client_id=659641044041-d8d9d26ubldu5veldv2g3cqaqedv6htq.apps.googleusercontent.com'
	}
</script>
</html>
