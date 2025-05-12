package com.yaloys.jewelry_store.presentation;

import com.yaloys.jewelry_store.data.ProductRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ProductController {
    private final ProductRepository productRepository;
    public ProductController(ProductRepository productRepository) {
        this.productRepository = productRepository;
    }
    @GetMapping("/product")
    public String getProducts(Model model) {
        model.addAttribute("products", productRepository.findAll());
        return "product";
    }
}
