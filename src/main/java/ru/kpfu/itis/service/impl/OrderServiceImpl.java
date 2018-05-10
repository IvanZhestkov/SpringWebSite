package ru.kpfu.itis.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ru.kpfu.itis.model.Order;
import ru.kpfu.itis.repository.OrdersRepository;
import ru.kpfu.itis.service.OrderService;

import java.util.List;

@Service
public class OrderServiceImpl implements OrderService {

    @Autowired
    private OrdersRepository ordersRepository;

    @Override
    public List<Order> getAllOrdersByUserId(Long id) {
        return ordersRepository.getAllByUserId(id);
    }

    @Override
    public void deleteOrder(Long id) {
        ordersRepository.delete(id);
    }

    @Override
    public void addOrder(Order order) {
        ordersRepository.save(order);
    }
}
