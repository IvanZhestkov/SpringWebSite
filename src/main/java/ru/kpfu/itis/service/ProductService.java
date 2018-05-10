package ru.kpfu.itis.service;

import ru.kpfu.itis.model.Product;

import java.util.List;

public interface ProductService {
    void addNewProduct(Product product);

    List<Product> getAllProducts(String category);

    Product getProduct(Long id);

    void deleteProduct(Long id);
}
