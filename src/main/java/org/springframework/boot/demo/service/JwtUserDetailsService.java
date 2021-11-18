package org.springframework.boot.demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.demo.model.Users;
import org.springframework.boot.demo.repository.UserRepository;
import org.springframework.boot.demo.security.jwt.UserPrinciple;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

@Service
public class JwtUserDetailsService implements UserDetailsService {

    @Autowired
    UserRepository userRepository;

    @Override
    public UserDetails loadUserByUsername(String email) throws UsernameNotFoundException {
        System.out.println("E M A I L LLL   "+email);
        Users user = userRepository.findByUserName(email);
        System.out.println("U S E R S E R V I C E EEEEE   "+user);
//        if (user == null) {
//            throw new UsernameNotFoundException("User not found with email: " + email);
//        }
        return UserPrinciple.build(user);
    }
}
