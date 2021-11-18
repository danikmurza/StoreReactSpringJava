package org.springframework.boot.demo.repository;

import org.springframework.boot.demo.model.Tickets;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface TicketRepository extends JpaRepository<Tickets, Integer> {
}
