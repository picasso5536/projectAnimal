package com.animal.www.commons;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.web.servlet.AsyncHandlerInterceptor;

// spring 5.3���� deprecated => AsyncHandlerInterceptor ���
// public class LoginInterceptor extends HandlerInterceptorAdapter {
   public class LoginInterceptor implements AsyncHandlerInterceptor{
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		// �α��� üũ�� �ؼ� ����! �α����� �ȵ� ���¶�� value�� false�� ����
		// ���� HttpSession����
		HttpSession session = request.getSession(true);
		// true�� �ǹ̴�
		// session�� ������ ���¶�� ���ο� session�� ��������
		// ������ �ȵ� ���¶�� ����ϰ� �ִ� session�� �״�� ��������

		// �α��� �� �����ߴ� ��ü(mvo)�� ��
		Object obj = session.getAttribute("login");
		if (obj == null) {
			// �α����� ���� ���� ��츦 ��Ƴ� ����
			request.getRequestDispatcher("/WEB-INF/views/member/login_error.jsp").forward(request, response);
			
			return false;
		}

		// �α����� �� ������ ��� �ؾ��� �ϵ��� ������ ���⿡ �ڵ��ۼ�
		return true;
	}
}
