package org.springframework.boot.demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.demo.model.Products;
import org.springframework.boot.demo.repository.ProductRepository;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class ProductService {
    @Autowired
    private ProductRepository productRepository;


    public List<Products> findAll() {

        return productRepository.findAll();
    }

    public Products saveProduct(Products products) {
        return productRepository.save(products);

    }

}
