package Springboot.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Builder
@Getter
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "moves")

public class Moves {
    @EmbeddedId
    private MovesId id;
    private String w_cell;
    private String w_eval;
    private String w_timestamp;
    private String b_cell;
    private String b_eval;
    private String b_timestamp;
}
