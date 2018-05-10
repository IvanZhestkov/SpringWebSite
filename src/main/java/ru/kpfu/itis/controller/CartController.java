package ru.kpfu.itis.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
//import ru.kpfu.itis.model.Cart;
import ru.kpfu.itis.model.Order;
import ru.kpfu.itis.model.Product;
import ru.kpfu.itis.model.User;
import ru.kpfu.itis.service.OrderService;
import ru.kpfu.itis.service.ProductService;
import ru.kpfu.itis.service.impl.AuthenticationServiceImpl;
import ru.kpfu.itis.service.impl.CartServiceImpl;

import java.sql.SQLOutput;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/user")
public class CartController {

    @Autowired
    private ProductService productService;

    @Autowired
    private AuthenticationServiceImpl service;

    @Autowired
    private CartServiceImpl cartService;

    @Autowired
    private OrderService orderService;

    @RequestMapping(value = "/cart", method = RequestMethod.GET)
    public String getCartPage(ModelMap modelMap, Authentication authentication) {
        /*if (authentication != null) {
            User user = service.getUserByAuthentication(authentication);
            Cart cart = cartService.getAllProducts(user);
            if (cart != null) {
                List<Product> products = cartService.getAllProducts(user).getProducts();
                int sum = 0;

                for (Product product : products) {
                    int price = Integer.parseInt(product.getPrice());
                    sum = sum + price;
                }
                modelMap.addAttribute("cart", cart);
                modelMap.addAttribute("sum", sum);
            } else {
                cart = new Cart();
                cart.setUser(user);
                cart.setProducts(new ArrayList<>());
            }
            return "cart";
        }
        return "redirect:/";*/
        if (authentication != null) {
            User user = service.getUserByAuthentication(authentication);
            List<Order> orders = orderService.getAllOrdersByUserId(user.getId());
            int sum = 0;
            for (Order order : orders) {
                int price = Integer.parseInt(order.getProduct().getPrice());
                sum = sum + price;
            }
            modelMap.addAttribute("orders", orders);
            modelMap.addAttribute("sum", sum);
            return "cart";
        }
        return "redirect:/";
    }

    @RequestMapping(value = "/toCart/{id}", method = RequestMethod.GET)
    public String addProductToCart(@PathVariable("id") Long id, ModelMap modelMap, Authentication authentication) {
        if (authentication != null) {
            User user = service.getUserByAuthentication(authentication);
            Product product = productService.getProduct(id);

            orderService.addOrder(new Order(user, product));
            return "redirect:/user/cart";
        }
        return "redirect:/";
    }

    @RequestMapping(value = "/fromCart/order/{id}/delete", method = RequestMethod.GET)
    public String deleteProduct(@PathVariable("id") Long id, Authentication authentication) {
        orderService.deleteOrder(id);
        return "redirect:/user/cart";
    }

    /*@RequestMapping(value = "/toCart/{id}", method = RequestMethod.GET)
    public String addProductToCart(@PathVariable("id") Long id, ModelMap modelMap, Authentication authentication) {
        if (authentication != null) {
            User user = service.getUserByAuthentication(authentication);
            Cart cart = cartService.getAllProducts(user);
            Product product = productService.getProduct(id);
            if (cart != null) {
                if (product != null) {
                    cart.getProducts().add(product);
                    cartService.addProduct(cart);
                }
            } else {
                cart = new Cart();
                cart.setUser(user);
                if (product != null) {
                    cart.setProducts(new ArrayList<Product>() {{
                        add(product);
                    }});
                }
                cartService.addProduct(cart);
            }
            return "redirect:/user/cart";
        }
        return "redirect:/";
    }

    @RequestMapping(value = "/fromCart/product/{id}/delete", method = RequestMethod.POST)
    public String deleteProduct(@PathVariable("id") Long id, Authentication authentication) {
        if (authentication != null) {
            User user = service.getUserByAuthentication(authentication);
            productService.deleteProduct(id);

            return "redirect:/user/cart";
        }
        return "redirect:/";
    }*/
}
