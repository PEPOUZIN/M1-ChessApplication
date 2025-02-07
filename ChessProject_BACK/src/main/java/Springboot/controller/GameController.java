package Springboot.controller;

import static org.springframework.hateoas.server.mvc.WebMvcLinkBuilder.*;
import org.springframework.http.HttpStatus;
import org.springframework.hateoas.EntityModel;
import org.springframework.hateoas.CollectionModel;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.RestControllerAdvice;
import org.springframework.context.annotation.Profile;


import java.util.List;
import java.util.stream.Collectors;

import Springboot.repository.GameRepository;
import Springboot.assembler.GameModelAssembler;
import Springboot.entity.Game;
@RestController
public class GameController {
    private final GameRepository repository;
    private final GameModelAssembler assembler;

    public GameController(GameRepository repo, GameModelAssembler ass) {
        this.repository = repo;
        this.assembler = ass;
    }

    @GetMapping("/games/{id}")
    public EntityModel<Game> oneById(@PathVariable int id) {
        Game game = this.repository.findById(id)
            .orElseThrow(() -> new GameNotFoundException(id));
        return this.assembler.toModel(game);
    }

    @GetMapping("/games/user/{user}")
    public CollectionModel<EntityModel<Game>> gamesPlayedByUser(@PathVariable int user) {
        List<EntityModel<Game>> games = this.repository.findByWhiteOrBlack(user).stream()
            .map(this.assembler::toModel)
            .collect(Collectors.toList());
        return CollectionModel.of(games,
            linkTo(methodOn(GameController.class).gamesPlayedByUser(user)).withSelfRel());
    }

    @GetMapping("/games/won/{user}")
    public CollectionModel<EntityModel<Game>> gamesWonByUser(@PathVariable int user) {
        List<EntityModel<Game>> games = this.repository.findByWonByUser(user).stream()
            .map(this.assembler::toModel)
            .collect(Collectors.toList());
        return CollectionModel.of(games,
            linkTo(methodOn(GameController.class).gamesWonByUser(user)).withSelfRel());
    } 

    @GetMapping("/games/name/{name}")
    public CollectionModel<EntityModel<Game>> gamesPlayedByName(@PathVariable String name) {
        List<EntityModel<Game>> games = this.repository.findByPlayedByName(name).stream()
            .map(this.assembler::toModel)
            .collect(Collectors.toList());
        return CollectionModel.of(games,
            linkTo(methodOn(GameController.class).gamesPlayedByName(name)).withSelfRel());
    } 

    @GetMapping("/games")
    public CollectionModel<EntityModel<Game>> all() {
        List<EntityModel<Game>> games = this.repository.findAll().stream()
            .map(this.assembler::toModel)
            .collect(Collectors.toList());
        return CollectionModel.of(games,
            linkTo(methodOn(GameController.class).all()).withSelfRel());
    }

    @PostMapping("/games")
    public Game newGame(@RequestBody Game newGame) {
        return this.repository.save(newGame);
    }
}

class GameNotFoundException extends RuntimeException {
    GameNotFoundException(int id) {
        super("Could not find game " + id);
    }
}

@RestControllerAdvice
class GameNotFoundAdvice {
    @ExceptionHandler(GameNotFoundException.class)
    @ResponseStatus(HttpStatus.NOT_FOUND)
    String gameNotFoundHandler(GameNotFoundException exception) {
        return exception.getMessage();
    }
}
