package org.springframework.boot.demo.service;

import org.springframework.boot.demo.model.Review;
import org.springframework.boot.demo.repository.ReviewRepository;
import org.springframework.stereotype.Service;

@Service
public class ReviewService {

    private final ReviewRepository reviewRepository;

    public ReviewService(ReviewRepository reviewRepository) {
        this.reviewRepository = reviewRepository;
    }

    public Review save(Review review) {
        return reviewRepository.save(review);
    }
}
