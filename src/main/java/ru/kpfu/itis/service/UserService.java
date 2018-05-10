package ru.kpfu.itis.service;

import org.springframework.stereotype.Service;
import ru.kpfu.itis.form.UserForm;
import ru.kpfu.itis.form.UserRegistrationForm;
import ru.kpfu.itis.model.User;

import java.util.List;

@Service
public interface UserService {

    List<User> getAllUsers();

    void saveNewUser(UserRegistrationForm form);

    void updateUser(User user);

    void securedMethod();
}
