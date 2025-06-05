package com.yaloys.jewelry_store.user;

import com.yaloys.jewelry_store.data.Product;
import com.yaloys.jewelry_store.data.ProductRepository;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class ProductService {
    private final ProductRepository productRepository;

    public ProductService(ProductRepository productRepository) {
        this.productRepository = productRepository;
    }

    public void createProduct(ProductRequest request) {
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

    public Product getById(Long id) {
        Optional<Product> product = productRepository.findById(id);
        return product.orElse(null);
    }

    public void updateProduct(Long id, ProductRequest request) {
        Optional<Product> existingProduct = productRepository.findById(id);
        if (existingProduct.isPresent()) {
            Product product = existingProduct.get();
            product.setName(request.name());
            product.setWeight(request.weight());
            product.setMetalType(request.metalType());
            product.setStoneType(request.stoneType());
            product.setPrice(request.price());
            product.setManufacturer(request.manufacturer());
            product.setSize(request.size());
            productRepository.save(product);
        }
    }

    public void deleteProduct(Long id)
    {
        productRepository.deleteById(id);
    }

    public List<Product> getSortedProducts(String sortOrder)
    {
        if (sortOrder == null) {
            return getAll();
        }

        return "asc".equalsIgnoreCase(sortOrder) ?
                productRepository.findAllProductsSortedByPriceAsc() :
                productRepository.findAllProductsSortedByPriceDesc();
    }
}