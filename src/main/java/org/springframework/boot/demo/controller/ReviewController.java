package org.springframework.boot.demo.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.demo.model.Review;
import org.springframework.boot.demo.service.ReturnObject;
import org.springframework.boot.demo.service.ReviewService;
import org.springframework.web.bind.annotation.*;

@CrossOrigin
@RestController
public class ReviewController {

    private final ReviewService reviewService;
    private final ReturnObject obj;

    @Autowired
    public ReviewController(ReviewService reviewService, ReturnObject obj) {
        this.reviewService = reviewService;
        this.obj = obj;
    }


    @PostMapping(path = "/add_review")
    public @ResponseBody
    Object addReview(@RequestBody Review body) {
        try{
            reviewService.save(body);
            return obj.message("AddReview", 201);
        }catch (Exception e) {
            obj.Error("error" + e, 403 );
        }
        return "something wrong";
    }

}
