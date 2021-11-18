package org.springframework.boot.demo.service;

import org.springframework.boot.demo.model.Mail;
import org.springframework.boot.demo.repository.MailRepository;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;


@Service("mailService")
public class MailService implements MailRepository {


    JavaMailSender mailSender;

    @Override
    public void sendEmail(Mail mail) {
        MimeMessage mimeMessage = mailSender.createMimeMessage();
        try {
            MimeMessageHelper mimeMessageHelper = new MimeMessageHelper(mimeMessage, true);
            mimeMessageHelper.setSubject(mail.getMailSubject());
            mimeMessageHelper.setFrom(mail.getMailFrom());
            mimeMessageHelper.setTo(mail.getMailTo());
            mimeMessageHelper.setText(mail.getMailContent());

            mailSender.send(mimeMessageHelper.getMimeMessage());

        } catch (MessagingException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void registration(String to, String subject, String content) {

        Mail mail = new Mail();
        mail.setMailFrom("daniyarmurza@gmail.com");
        mail.setMailTo(to);
        mail.setMailSubject(subject);
        mail.setMailContent(content);

        sendEmail(mail);
    }

    @Override
    public void recoverPassword(String to, String subject, String content) {

        Mail mail = new Mail();
        mail.setMailFrom("daniyarmurza@gmail.com");
        mail.setMailTo(to);
        mail.setMailSubject(subject);
        mail.setMailContent(content);

        sendEmail(mail);
    }

}
