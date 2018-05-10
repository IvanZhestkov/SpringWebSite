package ru.kpfu.itis.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import ru.kpfu.itis.model.FileInfo;
import ru.kpfu.itis.model.Product;
import ru.kpfu.itis.service.ProductService;
import ru.kpfu.itis.service.UserService;
import ru.kpfu.itis.service.impl.FileInfoServiceImpl;
import ru.kpfu.itis.util.FileStorageUtil;

import javax.validation.Valid;


@Controller
@RequestMapping("/admin")
public class AdminController {

    @Autowired
    private UserService userService;

    @Autowired
    private ProductService productService;

    @Autowired
    private FileStorageUtil fileStorageUtil;

    @Autowired
    private FileInfoServiceImpl fileInfoService;

    @RequestMapping(value = "/addProduct")
    public String getAddProductPage(@RequestParam(value = "error", required = false) Boolean error, Model model) {
        if (Boolean.TRUE.equals(error)) {
            model.addAttribute("error", error);
        }
        return "admin/adminAddProduct";
    }

    @RequestMapping(value = "/users")
    public String getUsers(@RequestParam(value = "error", required = false) Boolean error, ModelMap model) {
        if (Boolean.TRUE.equals(error)) {
            model.addAttribute("error", error);
        }
        model.addAttribute("users", userService.getAllUsers());
        return "admin/users";
    }

    @RequestMapping(value = "/addProduct", method = RequestMethod.POST, consumes = "multipart/form-data")
    public String addProduct(@Valid Product product, BindingResult bindingResult,
                             @RequestParam("file") MultipartFile file) {
        if (!bindingResult.hasErrors()) {
            if (file.getSize() > 0) {
                FileInfo fileInfo = fileInfoService.savePicture(file);
                product.setImageUrl("/pic/" + fileInfo.getFileName());
            }
            productService.addNewProduct(product);
        } else {
            return "redirect:/admin/addProduct?error=true";
        }

        return "admin/adminAddProduct";
    }
}
