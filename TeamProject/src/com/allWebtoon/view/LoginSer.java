package com.allWebtoon.view;

import java.io.IOException;
import java.math.BigInteger;
import java.security.SecureRandom;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.allWebtoon.api.KakaoAPI;
import com.allWebtoon.util.ViewResolver;

@WebServlet("/login")
public class LoginSer extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//플랫폼 넘버 구분(네이버 난수생성용, 로그인 창 들어갈 시 미리 난수값 받아서 attr에 넣어줌)
		SecureRandom random = new SecureRandom();
		String state = new BigInteger(130, random).toString();
		
		String platNo = request.getParameter("platNo");
		if(platNo != null && platNo.equals("1")) {
			String code = request.getParameter("code");
			String access_token = KakaoAPI.getAccessToken(code);
			HashMap<String, Object> userInfo = KakaoAPI.getUserInfo(access_token);
		    System.out.println("userInfo(HashMap<String, Object> : ");
		    System.out.println(userInfo);
		    response.sendRedirect("/home");
			return;
		}
		request.setAttribute("state", state);
		ViewResolver.accessForward("login", request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}