<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
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
        #login_btn, #naver, #facebook, #google {
            width: 320px; padding: 10px; margin: 10px; border: none;
            color: white; font-size: 1.1em;
        }
        #login_btn {
            background-color: #ccb2e5;
        }
        #naver {
            background-color: #03c75a;
        }
        #facebook {
            background-color: #1877f2;
        }
        #google {
            background-color: #ccc;
        }
        a {
            text-decoration: none; color: white; 
        }
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
            <div class="naver"><button id="naver">네이버로 들어가기</button></div>
            <div class="facebook"><button id="facebook">페이스북으로 들어가기</button></div>
            <div class="google"><button id="google">구글로 들어가기</button></div>
        </div>
    </div>
</body>
<script type="text/javascript">
	function goKakao() {
		location.href = 'https://kauth.kakao.com/oauth/authorize'
	            		+'?client_id=48c16d63af5493c7ae43a1433ec7760f'
	                    +'&redirect_uri=http://localhost:8089/login'
	                    +'&response_type=code'
	}
</script>
</html>
