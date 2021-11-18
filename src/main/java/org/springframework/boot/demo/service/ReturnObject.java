package org.springframework.boot.demo.service;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.demo.model.Role;
import org.springframework.boot.demo.model.Users;
import org.springframework.boot.demo.repository.ObjectRepository;
import org.springframework.boot.demo.security.jwt.JwtTokenProvider;
import org.springframework.stereotype.Service;

@Service
public class ReturnObject implements ObjectRepository {

    @Autowired
    private  UserService userService;



    @Autowired
    private  JwtTokenProvider jwtTokenUtil;


    @Override
    public Object tokens(int userId) {
        Users user = userService.findById(userId);
        String token = jwtTokenUtil.createToken(user.getEmail(), (Role) user.getRoles());
        System.out.println(user.getEmail());
        JSONObject obj = new JSONObject();
//        obj.put("address", user.getAddress());
//        obj.put("orders", user.getOrders());
//        obj.put("ticket", user.getTickets());
        obj.put("token", token);
        obj.put("id", user.get_id());
        obj.put("email", user.getEmail());
        obj.put("password", user.getPassword());
        obj.put("images", user.getUrlAvatar());
        obj.put("firstName", user.getFirstName());
        obj.put("lastName", user.getLastName());
        return obj.toString();

    }

    @Override
    public Object message(String message, int code) {
        JSONObject obj = new JSONObject();
        obj.put("message", message);
        obj.put("status", code);
        return obj.toString();

    }

    @Override
    public Object Error(String message, int code) {
        JSONObject obj = new JSONObject();
        obj.put("error", message);
        obj.put("status", code);
        return obj.toString();
    }
}
