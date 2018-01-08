package com.websystique.springsecurity.configuration;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.web.DefaultRedirectStrategy;
import org.springframework.security.web.RedirectStrategy;
import org.springframework.security.web.authentication.SimpleUrlAuthenticationSuccessHandler;
import org.springframework.stereotype.Component;

@Component
public class CustomSuccessHandler extends SimpleUrlAuthenticationSuccessHandler {

	private RedirectStrategy redirectStrategy = new DefaultRedirectStrategy();

	@Override
	protected void handle(HttpServletRequest request, HttpServletResponse response, Authentication authentication)
			throws IOException {
		System.out.println("handle--CustomSuccessHandler");
		String targetUrl = determineTargetUrl(authentication);
		System.out.println(targetUrl+" targetUrl");
		
		if (response.isCommitted()) {
			System.out.println("Can't redirect");
			return;
		}

		redirectStrategy.sendRedirect(request, response, targetUrl);
	}

	/*
	 * This method extracts the roles of currently logged-in user and returns
	 * appropriate URL according to his/her role.
	 */
	protected String determineTargetUrl(Authentication authentication) {
		System.out.println("determineTargetUrl--CustomSuccessHandler");
		String url = "";
		Collection<? extends GrantedAuthority> authorities = authentication.getAuthorities();
		List<String> roles = new ArrayList<String>();

		for (GrantedAuthority a : authorities) {
			roles.add(a.getAuthority());
		}

		if (isDba(roles)) {
			url = "/db";
		} else if (isAdmin(roles)) {
			url = "/admin";
		} else if (isUser(roles)) {
			url = "/home";
		} else {
			url = "/accessDenied";
		}

		return url;
	}

	private boolean isUser(List<String> roles) {
		System.out.println("isUser--CustomSuccessHandler");
		if (roles.contains("ROLE_USER")) {
			return true;
		}
		return false;
	}

	private boolean isAdmin(List<String> roles) {
		System.out.println("isAdmin--CustomSuccessHandler");
		if (roles.contains("ROLE_ADMIN")) {
			return true;
		}
		return false;
	}

	private boolean isDba(List<String> roles) {
		System.out.println("isDba--CustomSuccessHandler");
		if (roles.contains("ROLE_DBA")) {
			return true;
		}
		return false;
	}

	public void setRedirectStrategy(RedirectStrategy redirectStrategy) {
		System.out.println("setRedirectStrategy--CustomSuccessHandler");
		this.redirectStrategy = redirectStrategy;
	}

	protected RedirectStrategy getRedirectStrategy() {
		System.out.println("RedirectStrategy--CustomSuccessHandler");
		return redirectStrategy;
	}

}