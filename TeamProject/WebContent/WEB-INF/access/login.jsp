<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<script async defer crossorigin="anonymous" src="https://connect.facebook.net/ko_KR/sdk.js#xfbml=1&version=v8.0&appId=3176381649143544&autoLogAppEvents=1" nonce="JrytjmFN"></script>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>로그인</title>
    <style>
        .container {
            width: 600px; margin: 30px auto; border: 1px solid black;
        }
        h1 {
            text-align: center; margin-top: 40px;
        }
        .login_win {
            text-align: center; padding: 20px; margin: 10px;
        }
        #user_id, #user_pw {
            width: 300px; height: 30px; padding: 10px; margin: 10px;
        }
        #login_btn, #google {
            width: 320px; padding: 10px; margin: 10px; border: none;
            color: white; font-size: 1.1em;
        }
        #naver{width: 204px; height: 40px;}
        .fb{width: 300px; height: 45px;}
        #login_btn {background-color: #ccb2e5;}
        #google {background-color: #ccc;}
        a {
            text-decoration: none; color: white; 
        }
    </style>
</head>
<body>
	<div id="fb-root"></div>
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
            <div><img src="/images/login_logo/naver_login_green_wide.PNG" id="naver" onclick="goNaver('${state}')"></div>
            <div class="google"><button id="google" onclick="goGoogle()">구글로 들어가기</button></div>
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
	function goGoogle() {
		location.href = 'https://www.facebook.com/v8.0/dialog/oauth?app_id=3176381649143544&auth_type=&cbt=1598956304306&channel_url=https%3A%2F%2Fstaticxx.facebook.com%2Fx%2Fconnect%2Fxd_arbiter%2F%3Fversion%3D46%23cb%3Df1d719d6fdb3374%26domain%3Dlocalhost%26origin%3Dhttp%253A%252F%252Flocalhost%253A8089%252Ff3c702153dc04e8%26relation%3Dopener&client_id=3176381649143544&display=popup&domain=localhost&e2e=%7B%7D&fallback_redirect_uri=http%3A%2F%2Flocalhost%3A8089%2Flogin&force_confirmation=false&id=f389c80587ca9c&locale=ko_KR&logger_id=f9420852-3cda-4bc5-a7a2-143e915b5dbc&origin=1&plugin_prepare=true&redirect_uri=https%3A%2F%2Fstaticxx.facebook.com%2Fx%2Fconnect%2Fxd_arbiter%2F%3Fversion%3D46%23cb%3Df120091c7f99444%26domain%3Dlocalhost%26origin%3Dhttp%253A%252F%252Flocalhost%253A8089%252Ff3c702153dc04e8%26relation%3Dopener.parent%26frame%3Df389c80587ca9c&ref=LoginButton&response_type=signed_request%2Ctoken%2Cgraph_domain&scope=&sdk=joey&size=%7B%22width%22%3A600%2C%22height%22%3A679%7D&url=dialog%2Foauth&version=v8.0'
	}
</script>
</html>
