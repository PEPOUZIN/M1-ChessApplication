package Springboot.controller;

import static org.springframework.hateoas.server.mvc.WebMvcLinkBuilder.*;
import org.springframework.http.HttpStatus;
import org.springframework.hateoas.EntityModel;
import org.springframework.hateoas.CollectionModel;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.RestControllerAdvice;
import org.springframework.context.annotation.Profile;


import java.util.List;
import java.util.stream.Collectors;

import Springboot.repository.PlayerRepository;
import Springboot.assembler.PlayerModelAssembler;
import Springboot.entity.Player;
@RestController
public class PlayerController {
    private final PlayerRepository repository;
    private final PlayerModelAssembler assembler;

    public PlayerController(PlayerRepository repository, PlayerModelAssembler assembler) {
        this.repository = repository;
        this.assembler = assembler;
    }

    @GetMapping("/players/id/{id}")
    public EntityModel<Player> oneById(@PathVariable int id) {
        Player player = this.repository.findById(id)
            .orElseThrow(() -> new PlayerNotFoundException(id));
        return this.assembler.toModel(player); 
    }

    @GetMapping("/players/name/{name}")
    public EntityModel<Player> oneByName(@PathVariable String name) {
        Player player = this.repository.findByName(name)
            .orElseThrow(() -> new PlayerNotFoundException(name));
        return this.assembler.toModel(player);
    }

    @GetMapping("/players/elo/blitz")
    public CollectionModel<EntityModel<Player>> allBetweenBlitzElo(@RequestParam int minElo, @RequestParam int maxElo) {
        List<EntityModel<Player>> players = this.repository.findByEloBlitzBetween(minElo, maxElo).stream()
            .map(this.assembler::toModel)
            .collect(Collectors.toList());
        return CollectionModel.of(players,
            linkTo(methodOn(PlayerController.class).all()).withSelfRel());
    }

    @GetMapping("/players/elo/classic")
    public CollectionModel<EntityModel<Player>> allBetweenClassicElo(@RequestParam int minElo, @RequestParam int maxElo) {
        List<EntityModel<Player>> players = this.repository.findByEloClassicBetween(minElo, maxElo).stream()
            .map(this.assembler::toModel)
            .collect(Collectors.toList());
        return CollectionModel.of(players,
            linkTo(methodOn(PlayerController.class).all()).withSelfRel());
    }

    @GetMapping("/players/elo/fast")
    public CollectionModel<EntityModel<Player>> allBetweenFastElo(@RequestParam int minElo, @RequestParam int maxElo) {
        List<EntityModel<Player>> players = this.repository.findByEloFastBetween(minElo, maxElo).stream()
            .map(this.assembler::toModel)
            .collect(Collectors.toList());
        return CollectionModel.of(players,
            linkTo(methodOn(PlayerController.class).all()).withSelfRel());
    }

    @GetMapping("/players/elo/bullet")
    public CollectionModel<EntityModel<Player>> allBetweenBulletElo(@RequestParam int minElo, @RequestParam int maxElo) {
        List<EntityModel<Player>> players = this.repository.findByEloBulletBetween(minElo, maxElo).stream()
            .map(this.assembler::toModel)
            .collect(Collectors.toList());
        return CollectionModel.of(players,
            linkTo(methodOn(PlayerController.class).all()).withSelfRel());
    }

    @GetMapping("/players")
    public CollectionModel<EntityModel<Player>> all() {
        List<EntityModel<Player>> players = this.repository.findAll().stream()
            .map(this.assembler::toModel)
            .collect(Collectors.toList());
        return CollectionModel.of(players,
            linkTo(methodOn(PlayerController.class).all()).withSelfRel());
    }

    @PutMapping("/players/{id}")
    public Player replacePlayer(@RequestBody Player newPlayer, @PathVariable int id) {
        return this.repository.findById(id)
            .map(player -> {
                player.setId(newPlayer.getId());
                player.setName(newPlayer.getName());
                player.setEloClassic(newPlayer.getEloClassic());
                player.setEloBlitz(newPlayer.getEloBlitz());
                player.setEloFast(newPlayer.getEloFast());
                player.setEloBullet(newPlayer.getEloBullet());
                player.setTitle(newPlayer.getTitle());
                player.setClassement(newPlayer.getClassement());
                player.setNbGame(newPlayer.getNbGame());
                player.setRatio(newPlayer.getRatio());
                player.setRatioWhite(newPlayer.getRatioWhite());
                player.setRatioBlack(newPlayer.getRatioBlack());
                player.setNbMoveToWin(newPlayer.getNbMoveToWin());
                player.setCreationDate(newPlayer.getCreationDate());
                player.setFavoriteOpen(newPlayer.getFavoriteOpen());
                return this.repository.save(player);
            })
            .orElseGet(() -> {
                return this.repository.save(newPlayer);
            });
    }

    @PostMapping("/players")
    public Player newPlayer(@RequestBody Player newPlayer) {
        return this.repository.save(newPlayer);
    }
}

class PlayerNotFoundException extends RuntimeException {
    PlayerNotFoundException(int id) {
        super("Could not find player " + id);
    }
    
    PlayerNotFoundException(String name) {
        super("Could not find player " + name);
    }
}

@RestControllerAdvice
class PlayerNotFoundAdvice {
    @ExceptionHandler(PlayerNotFoundException.class)
    @ResponseStatus(HttpStatus.NOT_FOUND)
    String playerNotFoundHandler(PlayerNotFoundException exception) {
        return exception.getMessage();
    }
}