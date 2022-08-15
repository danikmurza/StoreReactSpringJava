package org.springframework.boot.demo.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.demo.model.Tickets;
import org.springframework.boot.demo.service.ReturnObject;
import org.springframework.boot.demo.service.TicketService;
import org.springframework.web.bind.annotation.*;

@CrossOrigin
@RestController
public class TicketController {

    private final TicketService ticketService;
    private final ReturnObject obj;


    @Autowired
    public TicketController(TicketService ticketService, ReturnObject obj) {
        this.ticketService = ticketService;
        this.obj = obj;
    }

    @PostMapping(path = "/ticket/{id}")
    public @ResponseBody
    Object addTicket(@RequestBody Tickets body, @PathVariable String id) {

//        int userId = Integer.parseInt(body.getUserId());
        try {
            ticketService.save(body);
            return obj.tokens(body.getUserId());

        } catch (Exception e) {
            return obj.Error("error" + e, 403);
        }
    }
}
