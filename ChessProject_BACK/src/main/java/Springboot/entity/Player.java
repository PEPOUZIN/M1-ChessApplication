package Springboot.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Builder
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "player")

public class Player {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String name;
    private int eloClassic;
    private int eloBlitz;
    private int eloFast;
    private int eloBullet;
    private String title;
    private int classement;
    private int nbGame;
    private double ratio;
    private double ratioWhite;
    private double ratioBlack;
    private double nbMoveToWin;
    private String creationDate;
    private String favoriteOpen;

    @OneToOne
    @JoinColumn(name = "user_id", nullable = false, unique = true)
    private User user;
}