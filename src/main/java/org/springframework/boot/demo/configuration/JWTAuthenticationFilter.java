//package org.springframework.boot.demo.configuration;
//
//
//import com.fasterxml.jackson.databind.ObjectMapper;
//import io.jsonwebtoken.Claims;
//import io.jsonwebtoken.Jwts;
//import io.jsonwebtoken.SignatureAlgorithm;
//import org.springframework.beans.factory.annotation.Value;
//import org.springframework.boot.demo.model.Role;
//import org.springframework.boot.demo.model.Users;
//import org.springframework.security.authentication.AuthenticationManager;
//import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
//import org.springframework.security.core.Authentication;
//import org.springframework.security.core.AuthenticationException;
//import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;
//import org.springframework.stereotype.Component;
//
//import javax.annotation.PostConstruct;
//import javax.servlet.FilterChain;
//import javax.servlet.ServletException;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import java.io.IOException;
//import java.util.ArrayList;
//import java.util.Base64;
//import java.util.Date;
//
//@Component
//public class JWTAuthenticationFilter extends UsernamePasswordAuthenticationFilter {
//
//    public JWTAuthenticationFilter(AuthenticationManager authenticationManager) {
//        super(authenticationManager);
//    }
//
//    @Value("${jwt.secret}")
//    private String secret;
//
//    @Value("${jwt.expired}")
//    private long validityInMilliseconds;
//
////    public JWTAuthenticationFilter(AuthenticationManager authenticationManager) {
////        this.authenticationManager = authenticationManager;
////    }
//
//
//    @PostConstruct
//    protected void init() {
//        secret = Base64.getEncoder().encodeToString(secret.getBytes());
//    }
//
//    @Override
//    public Authentication attemptAuthentication(HttpServletRequest req,
//                                                HttpServletResponse res) throws AuthenticationException {
//        try {
//            Users creds = new ObjectMapper()
//                    .readValue(req.getInputStream(), Users.class);
//
//            return authenticationManager.authenticate(
//                    new UsernamePasswordAuthenticationToken(
//                            creds.getUserName(),
//                            creds.getPassword(),
//                            new ArrayList<>())
//            );
//        } catch (IOException e) {
//            throw new RuntimeException(e);
//        }
//    }
//
//    @Override
//    protected void successfulAuthentication(HttpServletRequest req,
//                                            HttpServletResponse res,
//                                            FilterChain chain,
//                                            Authentication auth) throws IOException, ServletException {
//        Claims claims = Jwts.claims().setSubject(((Users) auth.getPrincipal()).getUserName());
//        claims.put("roles", ((Role) auth.getPrincipal()).getName());
//
//        Date now = new Date();
//        Date validity = new Date(now.getTime() + validityInMilliseconds);
//
//        String token = Jwts.builder()//
//                .setClaims(claims)//
//                .setIssuedAt(now)//
//                .setExpiration(validity)//
//                .signWith(SignatureAlgorithm.HS256, secret)//
//                .compact();
//        res.addHeader("Authorization", "Bearer " + token);
//    }
//}
