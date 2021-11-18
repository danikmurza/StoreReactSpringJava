package org.springframework.boot.demo.repository;

import org.springframework.boot.demo.model.Review;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ReviewRepository  extends JpaRepository<Review, Integer> {

}
