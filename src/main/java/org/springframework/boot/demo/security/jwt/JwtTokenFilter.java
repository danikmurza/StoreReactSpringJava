package org.springframework.boot.demo.security.jwt;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.filter.GenericFilterBean;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;



public class JwtTokenFilter extends GenericFilterBean {


    private final JwtTokenProvider jwtTokenProvider;

    public JwtTokenFilter(JwtTokenProvider jwtTokenProvider) {
        this.jwtTokenProvider = jwtTokenProvider;
    }

    @Override
    public void doFilter(ServletRequest req, ServletResponse res, FilterChain filterChain)
            throws IOException, ServletException {

        String token = jwtTokenProvider.resolveToken((HttpServletRequest) req);
        System.out.println("T O K E N    "+token);
        System.out.println("Authentication before   "+jwtTokenProvider.validateToken(token));
        if (token != null && jwtTokenProvider.validateToken(token)) {
            System.out.println("Authentication after   "+jwtTokenProvider.validateToken(token));
            Authentication auth = jwtTokenProvider.getAuthentication(token);
            System.out.println("Authentication N N N N N N N N    "+auth);
            if (auth != null) {
                SecurityContextHolder.getContext().setAuthentication(auth);
            }
        }
        filterChain.doFilter(req, res);
    }

}
