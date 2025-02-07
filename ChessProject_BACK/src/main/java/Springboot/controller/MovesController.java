package Springboot.controller;

import static org.springframework.hateoas.server.mvc.WebMvcLinkBuilder.*;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.http.HttpStatus;
import org.springframework.hateoas.EntityModel;
import org.springframework.hateoas.CollectionModel;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestControllerAdvice;
import org.springframework.context.annotation.Profile;


import Springboot.assembler.MovesModelAssembler;
import Springboot.repository.MovesRepository;
import Springboot.entity.MovesId;
import Springboot.entity.Moves;
@RestController
public class MovesController {
    private final MovesModelAssembler assembler;
    private final MovesRepository repository;

    public MovesController (MovesModelAssembler assembler, MovesRepository repository) {
        this.assembler = assembler;
        this.repository = repository;
    }

    @GetMapping("/moves/{id}")
    public EntityModel<Moves> oneById(@PathVariable MovesId id) {
        Moves moves = this.repository.findById(id)
            .orElseThrow(() -> new MovesNotFoundException(id));
        return this.assembler.toModel(moves);
    }

    @GetMapping("/moves")
    public CollectionModel<EntityModel<Moves>> all() {
        List<EntityModel<Moves>> moves = this.repository.findAll().stream()
            .map(this.assembler::toModel)
            .collect(Collectors.toList());
        return CollectionModel.of(moves,
            linkTo(methodOn(MovesController.class).all()).withSelfRel());
    }

    @PostMapping("/moves")
    public Moves newMoves(@RequestBody Moves newMoves) {
        return this.repository.save(newMoves);
    }
}

class MovesNotFoundException extends RuntimeException {
    MovesNotFoundException(MovesId id) {
        super("Could not find moves belonging to game" + id.getGameId());
    }
}

@RestControllerAdvice
class MovesNotFoundAdvice {
    @ExceptionHandler(MovesNotFoundException.class)
    @ResponseStatus(HttpStatus.NOT_FOUND)
    String movesNotFoundHandler(MovesNotFoundException exception) {
        return exception.getMessage();
    }
}