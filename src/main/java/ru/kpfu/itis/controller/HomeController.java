package ru.kpfu.itis.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import ru.kpfu.itis.form.UserRegistrationForm;
import ru.kpfu.itis.model.Product;
import ru.kpfu.itis.model.User;
import ru.kpfu.itis.service.ProductService;
import ru.kpfu.itis.service.UserService;
import ru.kpfu.itis.service.impl.FileInfoServiceImpl;

import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;
import java.util.List;

@Controller
public class HomeController {

    @Autowired
    private ProductService productService;

    @Autowired
    private FileInfoServiceImpl fileInfoService;

    @RequestMapping(value = "/home", method = RequestMethod.GET)
    public String getHomePage(@RequestParam(value = "error", required = false) Boolean error, Model model) {
        return "index";
    }

    @RequestMapping(value = "/products/{category}", method = RequestMethod.GET)
    public String getProductsPage(@PathVariable String category, ModelMap modelMap,
                                  @RequestParam(value = "error", required = false) Boolean error) {
        List<Product> products = productService.getAllProducts(category);
        modelMap.addAttribute("products", products);
        if (category.equals("men")) {
            return "menPage";
        } else if (category.equals("woman")) {
            return "womanPage";
        }
        return "redirect:/";
    }

    @RequestMapping(value = "/product/{category}/{id}", method = RequestMethod.GET)
    public String getProduct(@PathVariable String category, @PathVariable Long id, @RequestParam(value = "error", required = false) Boolean error,
                             ModelMap modelMap) {
        Product product = productService.getProduct(id);
        modelMap.addAttribute("product", product);
        return "product";
    }

    @RequestMapping(value = "/pic/{fileName:.+}", method = RequestMethod.GET)
    public void getPicture(@PathVariable("fileName") String fileName, HttpServletResponse response) {
        fileInfoService.getPicture(fileName, response);
    }

    @RequestMapping(value = "/product", method = RequestMethod.GET)
    public String getProductPage(@RequestParam(value = "error", required = false) Boolean error, Model model) {
        return "product";
    }
}
