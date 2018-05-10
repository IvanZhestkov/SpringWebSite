package ru.kpfu.itis.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import ru.kpfu.itis.form.UserForm;
import ru.kpfu.itis.model.User;
import ru.kpfu.itis.service.AuthenticationService;
import ru.kpfu.itis.service.UserService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;
import java.io.IOException;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    AuthenticationService authenticationService;

    @Autowired
    UserService userService;

    @RequestMapping(value = "/profile", method = RequestMethod.GET)
    public String getProfile(ModelMap modelMap, Authentication authentication) {
        if (authentication != null) {

            User user = authenticationService.getUserByAuthentication(authentication);
            modelMap.addAttribute("user", user);
            return "profile";
        }
        return null;
    }

    @RequestMapping(value = "/editProfile", method = RequestMethod.GET)
    public String getEditProfile(@RequestParam(value = "error", required = false) Boolean error, Model model,
                                 Authentication authentication, UserForm userForm, BindingResult bindingResult,
                                 HttpServletResponse response, ModelMap modelMap) throws IOException {
        if (authentication != null) {
            if (!bindingResult.hasErrors()) {
                User user = authenticationService.getUserByAuthentication(authentication);
                modelMap.addAttribute("user", user);
                return "editProfile";
            }
        }
        response.sendRedirect("/login");
        return null;
    }

    @RequestMapping(value = "/editProfile", method = RequestMethod.POST)
    public String editProfile(@RequestParam(value = "error", required = false) Boolean error, Model model,
                              Authentication authentication, @Valid UserForm userForm, BindingResult bindingResult,
                              HttpServletResponse response) throws IOException {
        if (authentication != null) {
            if (!bindingResult.hasErrors()) {
                System.out.println(userForm.getLastName());
                User user = authenticationService.getUserByAuthentication(authentication);
                user.setLastname(userForm.getLastName());
                userService.updateUser(user);
            }
        }
        response.sendRedirect("/user/profile");
        return null;
    }

    @GetMapping("/logout")
    public String logout(Authentication authentication,
                         HttpServletResponse response, HttpServletRequest request) throws IOException {
        if (authentication != null) {
            request.getSession().invalidate();
        }
        response.sendRedirect("/login");
        return null;
    }
}
