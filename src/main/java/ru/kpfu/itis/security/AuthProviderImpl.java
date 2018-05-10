package ru.kpfu.itis.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Component;
import ru.kpfu.itis.model.User;
import ru.kpfu.itis.repository.UserRepository;

import java.util.Collection;
import java.util.Optional;

@Component
public class AuthProviderImpl implements AuthenticationProvider {

    @Autowired
    UserRepository userRepository;

    @Autowired
    private UserDetailsService userDetailsService;

    BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();

    @Override
    public Authentication authenticate(Authentication authentication) throws AuthenticationException {
        String login = authentication.getName();

        System.out.println(login);
        Optional<User> userOptional = userRepository.findFirstByUsername(login);
        if (!userOptional.isPresent()) {
            throw new UsernameNotFoundException("user not found");
        }
        User user = userOptional.get();

        String password = authentication.getCredentials().toString();
        if (!encoder.matches(password, user.getPassword())) {
            throw new BadCredentialsException("invalid password");
        }

        UserDetails details = userDetailsService.loadUserByUsername(login);
        Collection<? extends GrantedAuthority> authorities = details.getAuthorities();

        return new UsernamePasswordAuthenticationToken(details, password, authorities);
    }

    @Override
    public boolean supports(Class<?> authentication) {
        return true;
    }
}
