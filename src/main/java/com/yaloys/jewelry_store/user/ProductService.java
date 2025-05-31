package com.yaloys.jewelry_store.user;

import com.yaloys.jewelry_store.data.Product;
import com.yaloys.jewelry_store.data.ProductRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductService {
    private final ProductRepository productRepository;

    public ProductService(ProductRepository productRepository) {
        this.productRepository = productRepository;
    }

    public void createProduct(ProductRequest request)
    {
        Product product = new Product();
        product.setName(request.name());
        product.setWeight(request.weight());
        product.setMetalType(request.metalType());
        product.setStoneType(request.stoneType());
        product.setPrice(request.price());
        product.setManufacturer(request.manufacturer());
        product.setSize(request.size());
        productRepository.save(product);
    }

    public List<Product> getAll() {
        return productRepository.findAllProducts();
    }
}
