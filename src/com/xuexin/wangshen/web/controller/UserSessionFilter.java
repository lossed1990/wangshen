package com.xuexin.wangshen.web.controller;

import java.io.IOException;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.http.HttpStatus;
import org.springframework.web.filter.OncePerRequestFilter;

import com.xuexin.wangshen.util.ConstConfigDefine;

public class UserSessionFilter extends OncePerRequestFilter {

	@Override
	protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain filterChain)
			throws ServletException, IOException {

		// 不过滤的uri，包含登陆界面，注册界面
		String[] notFilter = new String[] { "/user/admin-login.page", 
											"/user/login.page", 
											"/user/user-register.page",
											"/user/reset-user-password.page",
											"/user/check-captcha.json", 
											"/user/check-user-validation.json",
											"/user/send-mobile-validation.json",
											"/user/check-phonecode-validation.json" };

		// 请求的uri
		String uri = request.getRequestURI();

		// 是否过滤
		boolean doFilter = true;
		for (String s : notFilter) {
			if (uri.indexOf(s) != -1) {

				doFilter = false;
				break;
			}
		}

		if (doFilter) {
			// 执行过滤
			// 从session中获取登录者实体
			Object obj = request.getSession().getAttribute(ConstConfigDefine.SESSION_NAME_USER);

			if (null == obj) {
				boolean isAjaxRequest = isAjaxRequest(request);
				if (isAjaxRequest) {
					response.setCharacterEncoding("UTF-8");
					response.sendError(HttpStatus.UNAUTHORIZED.value(), "您已经太长时间没有操作,请刷新页面");
					return;
				}
				response.sendRedirect(request.getContextPath() + "/user/login.page");
				return;
			} else {
				// 如果session中存在登录者实体，则继续
				filterChain.doFilter(request, response);
			}
		} else {
			// 如果不执行过滤，则继续
			filterChain.doFilter(request, response);
		}
	}

	public static boolean isAjaxRequest(HttpServletRequest request) {

		String header = request.getHeader("X-Requested-With");

		if (header != null && "XMLHttpRequest".equals(header))
			return true;
		else
			return false;
	}
}
