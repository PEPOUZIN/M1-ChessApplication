package Springboot.repository;

import Springboot.entity.Moves;
import Springboot.entity.MovesId;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface MovesRepository extends JpaRepository<Moves, MovesId> {
}
