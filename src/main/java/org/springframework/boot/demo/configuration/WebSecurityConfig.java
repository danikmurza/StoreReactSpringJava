package org.springframework.boot.demo.configuration;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.boot.demo.service.JwtUserDetailsService;
import org.springframework.boot.demo.security.jwt.JwtConfigurer;
import org.springframework.boot.demo.security.jwt.JwtTokenProvider;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpMethod;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.web.cors.CorsConfiguration;
import org.springframework.web.cors.CorsConfigurationSource;
import org.springframework.web.cors.UrlBasedCorsConfigurationSource;


@Configuration
@EnableWebSecurity
//@EnableGlobalMethodSecurity(prePostEnabled = true)
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {


    @Qualifier("jwtUserDetailsService")
    @Autowired
    private JwtUserDetailsService userDetailsService;

    @Autowired
    private JwtTokenProvider jwtTokenProvider;


    @Autowired
    public void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth
                .userDetailsService(userDetailsService).passwordEncoder(encoder());
   }

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.cors().and().csrf().disable().authorizeRequests()
                .antMatchers(HttpMethod.POST, "/login").permitAll()
                .anyRequest().authenticated()
                .and()
//                .addFilter(new JWTAuthenticationFilter(authenticationManager()))
                .apply(new JwtConfigurer(jwtTokenProvider))
                .and()
                // this disables session creation on Spring Security
                .sessionManagement().sessionCreationPolicy(SessionCreationPolicy.STATELESS);

    }

    @Bean
    CorsConfigurationSource corsConfigurationSource() {
        final UrlBasedCorsConfigurationSource source = new UrlBasedCorsConfigurationSource();
        source.registerCorsConfiguration("/**", new CorsConfiguration().applyPermitDefaultValues());
        return source;
    }

    @Bean
    public BCryptPasswordEncoder encoder() {
        return new BCryptPasswordEncoder();
    }

}
