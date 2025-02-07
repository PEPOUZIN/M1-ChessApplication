package Springboot.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;


@Configuration
public class CorsConfig implements WebMvcConfigurer {

    @Override
    public void addCorsMappings(CorsRegistry registry) {
        // Autoriser les requêtes CORS pour toutes les routes (vous pouvez spécifier des routes si nécessaire)
        registry.addMapping("/**")
                .allowedOrigins("http://localhost:5173")  // Origine de votre frontend
                .allowedMethods("GET", "POST")
                .allowCredentials(true);  // Permet d'envoyer des cookies et des informations d'authentification
    }
}
