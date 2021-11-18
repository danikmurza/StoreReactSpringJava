package org.springframework.boot.demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.demo.model.Tickets;
import org.springframework.boot.demo.repository.TicketRepository;
import org.springframework.stereotype.Service;

@Service
public class TicketService {
    private final TicketRepository ticketRepository;

    @Autowired
    public TicketService( TicketRepository ticketRepository) {
        this.ticketRepository = ticketRepository;
    }

    public Tickets save(Tickets tickets) {
        return ticketRepository.save(tickets);
    }


}
