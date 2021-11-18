package org.springframework.boot.demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.demo.model.Users;
import org.springframework.boot.demo.repository.UserRepository;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserService {
@Autowired
    private  UserRepository userRepository;
    
    private final BCryptPasswordEncoder bCryptPasswordEncoder = new BCryptPasswordEncoder();



    public Users findById(int _id) {

        return userRepository.findById(_id).orElse(null);
    }

    public List<Users> findAll() {

        return userRepository.findAll();
    }


    public Users findByFirstName(String name) {
        return userRepository.findByFirstName(name);
    }

    public Users save(Users users) {
        return userRepository.save(users);

    }

    public Users saveForEach(Users body) {
        String userHashedPassword = bCryptPasswordEncoder.encode(body.getPassword());
        Users user = new Users();
        System.out.println(body);
        user.setFirstName(body.getFirstName());
        user.setLastName(body.getLastName());
        user.setEmail(body.getEmail());
        user.setPassword(userHashedPassword);
        user.setUserName("");
        return userRepository.save(user);
    }

    public Users findByUserName(String userName) {
        System.out.println("U S E R N A M E   " +userName);
        Users user = userRepository.findByUserName(userName);
        System.out.println("U S E R   " +user);
         return user;
    }


}
