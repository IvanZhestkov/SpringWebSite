package ru.kpfu.itis.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ru.kpfu.itis.model.Product;
import ru.kpfu.itis.repository.ProductRepository;
import ru.kpfu.itis.service.ProductService;

import java.util.List;

@Service
public class ProductServiceImpl implements ProductService {

    @Autowired
    private ProductRepository productRepository;

    @Override
    public void addNewProduct(Product product) {
        productRepository.save(product);
    }

    @Override
    public List<Product> getAllProducts(String category) {
        return productRepository.findAllByCategory(category);
    }

    @Override
    public Product getProduct(Long id) {
        return productRepository.findById(id);
    }

    @Override
    public void deleteProduct(Long id) {
        productRepository.deleteProductById(id);
    }
}
