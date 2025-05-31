package com.yaloys.jewelry_store.data;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ProductRepository extends CrudRepository <Product, Long> {

    @Query("SELECT p FROM Product p")
    List<Product> findAllProducts();
}
