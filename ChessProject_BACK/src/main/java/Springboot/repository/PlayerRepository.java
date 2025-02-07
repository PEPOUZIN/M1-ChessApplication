package Springboot.repository;

import Springboot.entity.Player;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PlayerRepository extends JpaRepository<Player, Integer> {
    Optional<Player> findByName(final String name);
    List<Player> findByEloBlitzBetween(final int minElo, final int maxElo);
    List<Player> findByEloClassicBetween(final int minElo, final int maxElo);
    List<Player> findByEloFastBetween(final int minElo, final int maxElo);
    List<Player> findByEloBulletBetween(final int minElo, final int maxElo);
}
