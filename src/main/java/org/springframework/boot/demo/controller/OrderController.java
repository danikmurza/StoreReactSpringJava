package org.springframework.boot.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.demo.model.Orders;
import org.springframework.boot.demo.model.Users;
import org.springframework.boot.demo.service.OrderService;
import org.springframework.boot.demo.service.ReturnObject;
import org.springframework.boot.demo.service.UserService;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import java.util.Arrays;
import java.util.List;

@CrossOrigin
@RestController
public class OrderController {
    private final OrderService orderService;
    private final UserService userService;
    private final ReturnObject obj;

    @Autowired
    public OrderController(OrderService orderService, UserService userService, ReturnObject obj) {
        this.orderService = orderService;
        this.userService = userService;
        this.obj = obj;
    }


    @PostMapping(path = "/order")
    @ResponseStatus(value = HttpStatus.OK, reason = "Thank you for order")
    @ResponseBody
    public void placeOrder(@RequestBody Orders[] body) {
        Arrays.stream(body).forEach(orderService::save);
//       return obj.message("Thank you for order", 201 );

    }

    @GetMapping(path = "/orders")
    public List<Users> findAllOrders() {
        return userService.findAll();
    }

}
