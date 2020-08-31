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
		System.out.println("네이버 테스트");
		//플랫폼 넘버 구분
		String platNo = request.getParameter("platNo");
		if(platNo != null && platNo.equals("1")) {
			String code = request.getParameter("code");
			String access_token = KakaoAPI.getAccessToken(code);
			HashMap<String, Object> userInfo = KakaoAPI.getUserInfo(access_token);
		    System.out.println("userInfo(HashMap<String, Object> : ");
		    System.out.println(userInfo);
		    response.sendRedirect("/home");
			return;
		}else if(platNo != null && platNo.equals("2")) {
			System.out.println("네이버로 넘어옴");
			response.sendRedirect("/home");
			return;
		}
		ViewResolver.accessForward("login", request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}