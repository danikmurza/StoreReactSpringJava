package org.springframework.boot.demo.model;


import lombok.*;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "orders")
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
//@ToString
public class Orders {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int _id;

    @Column(name = "specification")
    private String specification;

    @Column(name = "brand")
    private String brand;

    @Column(name = "img_url")
    private String imgUrl;

    @Column(name = "status")
    private String status;

    @Column(name = "count")
    private Integer count;

    @Column(name = "price")
    private Integer price;

    @Column(name = "name_product")
    private String nameProduct;

    @Column(name = "user_id")
    private int userId;

    @Column(name = "date_order")
    private Date dateOrder= new Date();
}
