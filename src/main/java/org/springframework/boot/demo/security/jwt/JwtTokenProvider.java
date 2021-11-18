package org.springframework.boot.demo.security.jwt;

import io.jsonwebtoken.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.demo.model.Role;
import org.springframework.boot.demo.model.RoleName;
import org.springframework.boot.demo.model.Users;
import org.springframework.boot.demo.service.JwtUserDetailsService;
import org.springframework.boot.demo.service.UserService;
import org.springframework.context.annotation.Bean;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Component;

import javax.annotation.PostConstruct;
import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.Base64;
import java.util.Date;

@Component
public class
JwtTokenProvider {

    @Value("${jwt.secret}")
    private String secret;

    @Value("${jwt.expired}")
    private long validityInMilliseconds;


    @Qualifier("jwtUserDetailsService")
    @Autowired
    private JwtUserDetailsService jwtUserDetailsService;

    @Autowired
    private UserService userService;


    @Bean
    public BCryptPasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }

    @PostConstruct
    protected void init() {
        secret = Base64.getEncoder().encodeToString(secret.getBytes());
    }

    public String createToken(String email, Role roles) {

        Claims claims = Jwts.claims().setSubject(email);
        claims.put("roles", roles);

        Date now = new Date();
        Date validity = new Date(now.getTime() + validityInMilliseconds);

        return Jwts.builder()//
                .setClaims(claims)//
                .setIssuedAt(now)//
                .setExpiration(validity)//
                .signWith(SignatureAlgorithm.HS256, secret)//
                .compact();
    }

    public Authentication getAuthentication(String token) {
        Users userDetails = userService.findByUserName(getUsername(token));
        System.out.println("USER      DATAILES           "+userDetails);
        return new UsernamePasswordAuthenticationToken(userDetails, "", new ArrayList<>());
    }

    public String getUsername(String token) {
        return Jwts.parser().setSigningKey(secret).parseClaimsJws(token.replace("Bearer ", "")).getBody().getSubject();
    }

    public String resolveToken(HttpServletRequest req) {
        String bearerToken = req.getHeader("Authorization");
        if (bearerToken != null && bearerToken.startsWith("Bearer ")) {
            return bearerToken.substring(7, bearerToken.length());
        }
        return null;
    }

    public boolean validateToken(String token) {
        System.out.println("VALIDATE TOKEN  "+token);
        try {
            Jws<Claims> claims = Jwts.parserBuilder().setSigningKey(secret).build().parseClaimsJws(token);

            System.out.println("CLAIMS "+claims);
            if (claims.getBody().getExpiration().before(new Date())) {
                return false;
            }

            return true;
        } catch (JwtException | IllegalArgumentException e) {
//            throw new JwtAuthenticationException("JWT token is expired or invalid");
           return true;
        }
    }

    private RoleName getRoleNames(Role userRoles) {
        return userRoles.getName();
    }
}
