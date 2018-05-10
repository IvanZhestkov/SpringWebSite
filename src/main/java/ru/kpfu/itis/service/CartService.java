package ru.kpfu.itis.service;

import ru.kpfu.itis.model.Cart;
import ru.kpfu.itis.model.User;

public interface CartService {
    void addProduct(Cart cart);

    Cart getAllProducts(User user);
}
