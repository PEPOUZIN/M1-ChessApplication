package Springboot.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import Springboot.entity.User; 

import java.util.Optional;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {
    Optional<User> findByUsername(String username);  // Méthode pour trouver par nom d'utilisateur
    Optional<User> findByEmail(String email);       // Méthode pour trouver par email

}

