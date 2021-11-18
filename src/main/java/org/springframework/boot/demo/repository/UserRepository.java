package org.springframework.boot.demo.repository;

import org.springframework.boot.demo.model.Users;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRepository  extends JpaRepository<Users, Integer> {


    Users findByEmail(String email);

    Users findByUserName(String userName);

    Users findByFirstName(String email);
}
