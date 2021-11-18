package org.springframework.boot.demo.service;

import org.springframework.security.crypto.bcrypt.BCrypt;
import org.springframework.stereotype.Service;


@Service
public class UpdatableBCrypt {

    public String hash(String password) {
        return BCrypt.hashpw(password, BCrypt.gensalt(12));
    }

    public boolean verifyHash(String password, String hash) {
        return BCrypt.checkpw(password, hash);
    }
}
