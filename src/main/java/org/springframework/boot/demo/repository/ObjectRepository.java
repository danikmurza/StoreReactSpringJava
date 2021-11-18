package org.springframework.boot.demo.repository;

import org.springframework.stereotype.Repository;

@Repository
public interface ObjectRepository {

    Object tokens(int userId);

    Object message(String message, int code);

    Object Error(String message, int code);


}
