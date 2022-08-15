package org.springframework.boot.demo.model;

import lombok.*;
import javax.persistence.*;
import java.util.Date;


@Entity
@Table(name = "tickets")
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
//@ToString
public class Tickets {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int _id;

    @Column(name = "user_id")
    private int userId;

    @Column(name = "subject")
    private String subject;

    @Column(name = "type")
    private String type;

    @Column(name = "priority")
    private String priority;

    @Column(name = "status")
    private Boolean status;

    @Column(name = "ticket_date")
    private Date ticketDate = new Date();

    @Column(name = "ticket_update")
    private Date ticketUpdate = new Date();
}
