package ru.kpfu.itis.model;

import javax.persistence.*;

@Entity
@SequenceGenerator(name = "order_gen", sequenceName = "orders_seq", allocationSize = 1)
@Table(name = "orders")
public class Order {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "order_gen")
    private long id;

    @ManyToOne
    private User user;

    @ManyToOne
    private Product product;

    public Order(){}

    public Order(User user, Product product) {
        this.user = user;
        this.product = product;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }
}
