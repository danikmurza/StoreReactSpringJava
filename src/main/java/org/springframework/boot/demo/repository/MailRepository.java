package org.springframework.boot.demo.repository;

import org.springframework.boot.demo.model.Mail;
import org.springframework.stereotype.Repository;

@Repository
public interface MailRepository {
    public void sendEmail(Mail mail);

    public void registration(String to, String subject, String content);

    public void recoverPassword(String to, String subject, String content);
}
