package Springboot.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import java.sql.Date;

@Builder
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "game")

public class Game {
    @Id
    //@GeneratedValue(strategy = GenerationType.IDENTITY) EST-CE CENSE ETRE COMMENTE ?????????????????
    private int id;
    private int serie;
    private int id_tournament;
    private String event;
    private String site;
    private String white_name;
    private String black_name;
    private String result;
    private Date datetime;
    private int whiteelo;
    private int blackelo;
    private int whiteratingdiff;
    private int blackratingdiff;
    private String eco;
    private String opening;
    private String timectl;
    private String term;
    private boolean analyzed;
    private int nb_moves;
    private String hash_code;
}
