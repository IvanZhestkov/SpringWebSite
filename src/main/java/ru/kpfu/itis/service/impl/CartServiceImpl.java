package ru.kpfu.itis.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ru.kpfu.itis.model.Cart;
import ru.kpfu.itis.model.User;
import ru.kpfu.itis.repository.CartRepository;
import ru.kpfu.itis.service.CartService;

@Service
public class CartServiceImpl implements CartService {

    @Autowired
    private CartRepository cartRepository;

    @Override
    public void addProduct(Cart cart) {
        cartRepository.save(cart);
    }

    @Override
    public Cart getAllProducts(User user) {
        return cartRepository.findByUser(user);
    }
}
