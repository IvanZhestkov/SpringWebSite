package ru.kpfu.itis.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import ru.kpfu.itis.model.Order;

import javax.transaction.Transactional;
import java.util.List;

public interface OrdersRepository extends JpaRepository<Order, Long> {

    @Transactional
    void deleteById(Long id);

    List<Order> getAllByUserId(Long id);
}
