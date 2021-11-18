package org.springframework.boot.demo.model;


import lombok.*;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "review")
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@ToString
public class Review{
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int _id;

    @Column(name = "date")
    private Date date = new Date();

    @Column(name = "author")
    private String author;

    @Column(name = "email")
    private String email;

    @Column(name = "user_id")
    private String userId;

    @Column(name = "product_id")
    private String productId;

    @Column(name = "rating")
    private String rating;

    @Column(name = "description")
    private String description;

    @Column(name = "pros")
    private String pros;

    @Column(name = "cons")
    private String cons;

}
