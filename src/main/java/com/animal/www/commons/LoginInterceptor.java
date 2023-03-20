package com.animal.www.commons;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.web.servlet.AsyncHandlerInterceptor;

// spring 5.3부터 deprecated => AsyncHandlerInterceptor 사용
// public class LoginInterceptor extends HandlerInterceptorAdapter {
   public class LoginInterceptor implements AsyncHandlerInterceptor{
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		// 로그인 체크를 해서 만약! 로그인이 안된 상태라면 value에 false를 저장
		// 먼저 HttpSession얻음
		HttpSession session = request.getSession(true);
		// true의 의미는
		// session이 삭제된 상태라면 새로운 session을 생성해줌
		// 삭제가 안된 상태라면 사용하고 있던 session을 그대로 전달해줌

		// 로그인 시 저장했던 객체(mvo)를 얻어냄
		Object obj = session.getAttribute("login");
		if (obj == null) {
			// 로그인을 하지 않은 경우를 잡아낸 상태
			request.getRequestDispatcher("/WEB-INF/views/member/login_error.jsp").forward(request, response);
			
			return false;
		}

		// 로그인이 된 상태인 경우 해야할 일들이 있으면 여기에 코드작성
		return true;
	}
}
