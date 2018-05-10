package ru.kpfu.itis.service;

import org.springframework.security.core.Authentication;
import ru.kpfu.itis.model.User;

public interface AuthenticationService {
    User getUserByAuthentication(Authentication authentication);
}
