package Springboot.repository;

import Springboot.entity.ChessOpening;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ChessOpeningRepository extends JpaRepository<ChessOpening, Integer> {
}
