package Springboot.repository;

import Springboot.entity.Tournament;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

public interface TournamentRepository extends JpaRepository<Tournament, Integer> {
    Optional<Tournament> findByName(String name);
}
