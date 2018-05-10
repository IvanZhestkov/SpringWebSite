package ru.kpfu.itis.service;

import org.springframework.stereotype.Service;
import ru.kpfu.itis.model.Order;

import java.util.List;


public interface OrderService {

    List<Order> getAllOrdersByUserId(Long id);

    void deleteOrder(Long id);

    void addOrder(Order order);
}
