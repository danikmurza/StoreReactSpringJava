package org.springframework.boot.demo.repository;

import org.springframework.boot.demo.model.Orders;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;


@Repository
public interface OrderRepository extends JpaRepository<Orders, Integer> {

}
