package com.yaloys.jewelry_store.presentation;

import com.yaloys.jewelry_store.data.Product;
import com.yaloys.jewelry_store.data.ProductRepository;
import com.yaloys.jewelry_store.user.ProductRequest;
import com.yaloys.jewelry_store.user.ProductService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class ProductController {

//    private final ProductRepository productRepository;
//
//    public ProductController(ProductRepository productRepository) {
//        this.productRepository = productRepository;
//    }

    private final ProductService productService;

    public ProductController(ProductService productService) {
        this.productService = productService;
    }

    @GetMapping("/product")
    public String getProducts(Model model)
    {
        model.addAttribute("products", productService.getAll());
        return "product";
    }

    @GetMapping("/product/create")
    public String showCreateForm()
    {
        return "create";
    }

    @PostMapping("/products/create")
    public String addProduct(@ModelAttribute ProductRequest newProduct)
    {
        productService.createProduct(newProduct);
        return "redirect:/product";
    }

    @GetMapping("/product/edit/{id}")
    public String showEditForm(@PathVariable Long id, Model model)
    {
        Product product = productService.getById(id);
        if (product == null) {
            return "redirect:/product";
        }
        model.addAttribute("product", product);
        return "edit";
    }

    @PostMapping("/products/edit/{id}")
    public String editProduct(@PathVariable Long id, @ModelAttribute ProductRequest updatedProduct)
    {
        productService.updateProduct(id, updatedProduct);
        return "redirect:/product";
    }

    @PostMapping("/products/delete/{id}")
    public String deleteProduct(@PathVariable Long id)
    {
        productService.deleteProduct(id);
        return "redirect:/product";
    }
}
