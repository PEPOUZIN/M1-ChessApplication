package Springboot.entity;

import jakarta.persistence.Embeddable;
import lombok.AllArgsConstructor;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

import java.io.Serializable;

@Embeddable
@AllArgsConstructor
@NoArgsConstructor
@EqualsAndHashCode

public class MovesId implements Serializable {
    private int game_id;
    private int order;

    public int getGameId() {
        return this.game_id;
    }
}
