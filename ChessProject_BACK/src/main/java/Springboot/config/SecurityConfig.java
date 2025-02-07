package Springboot.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.web.SecurityFilterChain;

@Configuration
public class SecurityConfig {

    @Bean
    public SecurityFilterChain securityFilterChain(HttpSecurity http) throws Exception {
        //En gros ça utilise une chaîne de filtre
        http.csrf().disable() // Désactiver CSRF si nécessaire
                .authorizeHttpRequests(authorize -> authorize
                        .anyRequest().permitAll() // Permettre l'accès à toutes les ressources sans authentification
                );

        return http.build();
    }
}
