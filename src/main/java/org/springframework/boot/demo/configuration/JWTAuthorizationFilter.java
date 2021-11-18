//package org.springframework.boot.demo.configuration;
//
//import io.jsonwebtoken.Jwts;
//import org.springframework.security.authentication.AuthenticationManager;
//import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
//import org.springframework.security.core.context.SecurityContextHolder;
//import org.springframework.security.web.authentication.www.BasicAuthenticationFilter;
//
//import javax.servlet.FilterChain;
//import javax.servlet.ServletException;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import java.io.IOException;
//import java.util.ArrayList;
//
//public class JWTAuthorizationFilter extends BasicAuthenticationFilter {
//
//    public JWTAuthorizationFilter(AuthenticationManager authManager) {
//        super(authManager);
//    }
//
//
////    @Value("${jwt.secret}")
//    private String secret = "DaniyarMurzaguzhinovGulfiyaGarifullinaDianaDaniyarovna";
//
////    @PostConstruct
////    protected void init() {
////        secret = Base64.getEncoder().encodeToString(secret.getBytes());
////    }
//
//    @Override
//    protected void doFilterInternal(HttpServletRequest req,
//                                    HttpServletResponse res,
//                                    FilterChain chain) throws IOException, ServletException {
//        String header = req.getHeader("Authorization");
//
//        if (header == null || !header.startsWith("Bearer ")) {
//            chain.doFilter(req, res);
//            return;
//        }
//System.out.println("H E A D E R "+header);
//        UsernamePasswordAuthenticationToken authentication = getAuthentication(req);
//
//        SecurityContextHolder.getContext().setAuthentication(authentication);
//        chain.doFilter(req, res);
//    }
//
//    private UsernamePasswordAuthenticationToken getAuthentication(HttpServletRequest request) {
//        String token = request.getHeader("Authorization").replace("Bearer ", "");
//
//        System.out.println("T O K E N "+token.replace("Bearer ", ""));
//        if (token != null) {
//            // parse the token.
//            String user = Jwts.parser().setSigningKey(secret).parseClaimsJws(token).getBody().getSubject();
//
////            String user = JWT.require(Algorithm.HMAC512(SECRET.getBytes()))
////                    .build()
////                    .verify(token.replace("Bearer ", ""))
////                    .getSubject();
//System.out.println("U S E R   "+user);
//
//            if (user != null) {
//                return new UsernamePasswordAuthenticationToken(user, null, new ArrayList<>());
//            }
//            return null;
//        }
//        return null;
//    }
//
//}
