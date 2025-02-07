package Springboot.controller;

import Springboot.Service.UserService;
import Springboot.entity.Role;
import Springboot.entity.User;
import Springboot.repository.UserRepository;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.crypto.factory.PasswordEncoderFactories;
import org.springframework.web.bind.annotation.*;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.crypto.factory.PasswordEncoderFactories;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;
import io.jsonwebtoken.security.Keys;

import java.security.Key;
import java.util.*;

@RestController
@RequestMapping("/auth") //Le mapping se fait à partir de "/auth"
public class FrontAuthentificationController {
    private final UserRepository userRepository;
    private final PasswordEncoder passwordEncoder;
    private final UserService userService;

    // La clé secrète est injectée à partir du fichier de configuration
    @Value("${jwt.secret}")
    private String secretKey;

    public FrontAuthentificationController(UserRepository userRepository, UserService userService) {
        this.userRepository = userRepository;
        this.userService = userService;
        this.passwordEncoder = PasswordEncoderFactories.createDelegatingPasswordEncoder();
    }

    // Route d'inscription
    @PostMapping("/signup")
    public String signup(@RequestParam String username, @RequestParam String email, @RequestParam String password) {
        User user = new User();
        user.setUsername(username);
        user.setEmail(email);
        userService.addRoleUser(user);
        user.createPlayer();

        //avant de crypter le code et d'enregistrer le user
        //on vérifie si son email n'est pas déjà utilisé
        if(this.userRepository.findByEmail(email).isEmpty()) {
            //Si le mail n'est pas utilisé, alors :
            //crypter le mot de passe avant d'enregistrer dans la BD
            //passwordEncoder est une instance qui référence tous les encodeurs de mot de passe
            //encode automatiquement avec le meilleur algorithme, et décode automatiquement aussi
            user.setPassword(PasswordEncoderFactories.createDelegatingPasswordEncoder().encode(password));
            this.userRepository.save(user);
            String token = generateToken(user);
            return "{ \"status\": \"success\", \"message\": \"Inscription réussie\", \"token\": \"" + token + "\", \"user\": { \"id\": " + user.getId() + ", \"username\": \"" + user.getUsername() + "\", \"email\": \"" + user.getEmail() + "\", \"roles\" : \"" + user.getRoles() + "\" } }";
        }
        else {
            return "{ \"status\": \"error\", \"message\": \"Mail déjà utilisé\" }";
        }
    }

    // Route de connexion
    @PostMapping("/login")
    public String login(@RequestParam String email, @RequestParam String password) {
        // Chercher l'utilisateur dans la base de données par email
        User user = userRepository.findByEmail(email)
                .orElseThrow(() -> new RuntimeException("Utilisateur non trouvé"));

        // Vérifier le mot de passe
        if (passwordEncoder.matches(password, user.getPassword())) {
            // Générer un JWT après une connexion réussie
            String token = generateToken(user);

            // Retourner le token et les informations utilisateur
            return "{ \"status\": \"success\", \"message\": \"Connexion réussie\", \"token\": \"" + token + "\", \"user\": { \"id\": " + user.getId() + ", \"username\": \"" + user.getUsername() + "\", \"email\": \"" + user.getEmail() + "\", \"roles\" : \"" + user.getRoles() + "\" } }";
        } else {
            return "{ \"status\": \"error\", \"message\": \"Mot de passe incorrect\" }";
        }
    }

    // Méthode pour générer un JWT
    private String generateToken(User user) {
        // Si la clé secrète injectée est de taille insuffisante, utiliser une clé sécurisée de 256 bits
        Key key = (secretKey.length() < 32) ? Keys.secretKeyFor(SignatureAlgorithm.HS256) : Keys.hmacShaKeyFor(secretKey.getBytes());
        Set<Role> userRoles = user.getRoles();
        return Jwts.builder()
                .setSubject(user.getEmail())
                .claim("username", user.getUsername())
                .claim("id", user.getId())
                .claim("roles", userRoles)
                .setIssuedAt(new Date())
                .setExpiration(new Date(System.currentTimeMillis() + 86400000))  // 1 jour
                .signWith(key)  // Utiliser la clé générée
                .compact();
    }
}
