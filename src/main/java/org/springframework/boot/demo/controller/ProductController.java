package org.springframework.boot.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.demo.model.Products;
import org.springframework.boot.demo.service.ProductService;
import org.springframework.boot.demo.service.ReturnObject;
import org.springframework.web.bind.annotation.*;

@CrossOrigin
@RestController
public class ProductController {

    private final ProductService productService;
    private final ReturnObject obj;

    @Autowired
    public ProductController(ProductService productService, ReturnObject obj) {
        this.productService = productService;
        this.obj = obj;
    }

    @PostMapping("/add_product")
    public @ResponseBody Object postProductController(@RequestBody Products body) {
        productService.saveProduct(body);
        return obj.message("Save body products", 201);
    }


    @GetMapping(path="/products")
    public @ResponseBody Iterable<Products> getAllProducts  () {
       try{
           return productService.findAll();
       }catch (Exception e){
           return (Iterable<Products>) e;
       }
    }
}
