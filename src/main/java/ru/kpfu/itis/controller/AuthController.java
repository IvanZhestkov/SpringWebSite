package ru.kpfu.itis.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import ru.kpfu.itis.form.UserRegistrationForm;
import ru.kpfu.itis.model.User;
import ru.kpfu.itis.model.enums.UserRole;
import ru.kpfu.itis.service.AuthenticationService;
import ru.kpfu.itis.service.UserService;

import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;
import java.io.IOException;

@Controller
public class AuthController {

    @Autowired
    UserService userService;

    @Autowired
    AuthenticationService authenticationService;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String getLoginPage(Authentication authentication, HttpServletResponse response) throws IOException {
        if (authentication != null) {
            User user = authenticationService.getUserByAuthentication(authentication);
            if (user.getRole().equals(UserRole.ROLE_USER)) {
                response.sendRedirect("/user/profile");
            } else if (user.getRole().equals(UserRole.ROLE_ADMIN)) {
                return "redirect:/admin/addProduct";
            }
        }
        return "guest/login";
    }


    @RequestMapping(value = "/login")
    public String getLoginPage(Authentication authentication,
                               @RequestParam(value = "error", required = false) Boolean error,
                               Model model, HttpServletResponse response) throws IOException {
        if (authentication != null) {
            response.sendRedirect("/");
        }
        if (Boolean.TRUE.equals(error)) {
            model.addAttribute("error", error);
        }
        return "guest/login";
    }

    @RequestMapping(value = "/registration", method = RequestMethod.GET)
    public String getRegistrationPage(Authentication authentication, Model model, HttpServletResponse response) throws IOException {
        if (authentication != null) {
            response.sendRedirect("/");
        }
        model.addAttribute("userform", new UserRegistrationForm());
        return "guest/registration";
    }

    @RequestMapping(value = "/registration", method = RequestMethod.POST)
    public String registerUser(@ModelAttribute("userform") @Valid UserRegistrationForm form, BindingResult result) {
        if (result.hasErrors()) {
            return "guest/registration";
        }

        userService.saveNewUser(form);
        return "redirect:/login";
    }

}
