package org.springframework.boot.demo.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.demo.model.Users;
import org.springframework.boot.demo.repository.UserRepository;
import org.springframework.boot.demo.service.MailService;
import org.springframework.boot.demo.service.ReturnObject;
import org.springframework.boot.demo.service.UserService;
import org.springframework.core.env.Environment;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.web.bind.annotation.*;

import java.util.UUID;


@CrossOrigin
@RestController
public class UserController {

    @Autowired
    private UserRepository userRepository;
    private final UserService userService;
    private final MailService mailService;
    private final ReturnObject obj;

    BCryptPasswordEncoder bCryptPasswordEncoder = new BCryptPasswordEncoder();

    @Autowired
    public UserController(UserService userService, MailService mailService, Environment env, ReturnObject obj) {
        this.userService = userService;
        this.mailService = mailService;
        this.obj = obj;
    }


    @GetMapping(path = "/all")
//    @ResponseStatus(value = HttpStatus.OK)
    public @ResponseBody
    Iterable<Users> getAllUsers() {
        return userService.findAll();
    }


    @PostMapping("/registration")
    @ResponseStatus(value = HttpStatus.OK)
    public @ResponseBody
    Object postController(@RequestBody Users body) {
        try {
            Users user = userRepository.findByEmail(body.getEmail());
            if (user != null) {
                return obj.Error("User already exist", 400);
            }
            userService.saveForEach(body);
            mailService.recoverPassword("murzadaniyar@gmail.com", "Добро пожаловать", "Вы зарегестрированы");
            return obj.tokens(user.get_id());
        } catch (Exception e) {
            return obj.Error("error" + e.getLocalizedMessage(), 403);
        }
    }


    @PostMapping(path = "/login")
    @ResponseStatus(value = HttpStatus.OK)
    public @ResponseBody
    Object ResponseEntity(@RequestBody Users body) {
        Users user = userRepository.findByEmail(body.getEmail());
        System.out.println("LOGIN BODY   "+user);
        if (user != null) {
            boolean matchPassword = bCryptPasswordEncoder.matches(body.getPassword(), user.getPassword());

            if (matchPassword) {
                return obj.tokens(user.get_id());
            }
        }
        if (user == null) {
//           return  @ResponseStatus(value = HttpStatus.NOT_ACCEPTABLE)
            return obj.message("Email not exist", 400);
        }
        return obj.Error("Password not match", 400);
    }


    @PostMapping(path = "/forgot")
    @ResponseStatus(value = HttpStatus.OK)
    public @ResponseBody
    Object forgotPassword(@RequestBody Users body) {
        Users user = userRepository.findByEmail(body.getEmail());

        if (user == null) {
            return obj.message("We didn't find an account for that e-mail address.", 400);
        } else {
            user.setUserName(UUID.randomUUID().toString());
            userService.save(user);
            mailService.recoverPassword(user.getEmail(), "Recovery password", user.getUserName());
            return obj.message("A password reset link has been sent to  " + user.getEmail(), 200);
        }
    }

    @PostMapping(path = "/password")
    @ResponseStatus(value = HttpStatus.OK)
    public @ResponseBody
    Object newPassword(@RequestBody Users body) {
        Users user = userService.findByUserName(body.getUserName());

        if (user != null) {
            String hashPassword = bCryptPasswordEncoder.encode(body.getPassword());
            user.setPassword(hashPassword);
            user.setUserName("");
            userService.save(user);
            return obj.message("Password change", 201);
        } else {
            return obj.message("Not match recovery code", 400);
        }
    }


    @PostMapping(path = "/userUpdate")
    @ResponseStatus(value = HttpStatus.OK)
    public @ResponseBody
    Object userUpdate(@RequestBody Users body)  {
        try{
            Users user = userRepository.findByEmail(body.getEmail());
            userService.saveForEach(body);
            return obj.tokens(user.get_id());
        }catch (Exception e){
            return e.getLocalizedMessage();
        }
    }


    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public ResponseEntity<?> saveUser(@RequestBody Users user) throws Exception {
        return ResponseEntity.ok(userService.save(user));
    }
}
