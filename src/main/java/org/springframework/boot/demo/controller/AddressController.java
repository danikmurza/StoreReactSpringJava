package org.springframework.boot.demo.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.demo.model.Address;
import org.springframework.boot.demo.service.AddressService;
import org.springframework.boot.demo.service.ReturnObject;
import org.springframework.boot.demo.service.UserService;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@CrossOrigin
@RestController
public class AddressController {


    private final AddressService addressService;
    private final ReturnObject obj;


    @Autowired
    public AddressController(UserService userService, AddressService addressService, ReturnObject obj) {
        this.addressService = addressService;
        this.obj = obj;
    }


    @PostMapping(path = "/addAddress")
    public Object addAddress(@RequestBody Address body){
        System.out.println("A D D R E S S   " + body);
        try {
            int userId = Integer.parseInt(body.getUserId());
            addressService.save(body);
            return obj.tokens(userId);
        }catch (Exception e){
            return obj.message("error" + e, 400);
        }
    }


    @PostMapping(path = "/deleteAddress")
    public Object deleteAddress(@RequestBody Address body){
        try {
            int a = body.get_id();
            addressService.deleteById(a);
            int userId = Integer.parseInt(body.getUserId());
            return obj.tokens(userId);
        }catch (Exception e){
            return obj.message("error" + e, 400);
        }
    }
}
