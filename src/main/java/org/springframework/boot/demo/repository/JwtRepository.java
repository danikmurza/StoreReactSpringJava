package org.springframework.boot.demo.repository;

import org.springframework.boot.demo.model.Users;
import org.springframework.stereotype.Repository;

@Repository
public interface JwtRepository {

    public String generateToken(Users user);

    public Object verify(String token);

}
