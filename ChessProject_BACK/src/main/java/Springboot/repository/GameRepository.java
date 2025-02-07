package Springboot.repository;

import Springboot.entity.Game;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import java.util.List;

@Repository
public interface GameRepository extends JpaRepository<Game, Integer> {
    @Query("select g from Game g where g.white_name = :user or g.black_name = :user")
    List<Game> findByWhiteOrBlack(@Param("user") int user);

    @Query("select g from Game g where (g.white_name = :user and g.result = 'W') or (g.black_name = :user and g.result = 'B')")
    List<Game> findByWonByUser(@Param("user") int user);

    @Query("select g from Game g where (g.white_name = :name or g.black_name = :name)")
    List<Game> findByPlayedByName(@Param("name") String name);
}
