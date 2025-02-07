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

import Springboot.repository.TournamentRepository;
import Springboot.assembler.TournamentModelAssembler;
import Springboot.entity.Tournament;
@RestController
public class TournamentController {
    private final TournamentRepository repository;
    private final TournamentModelAssembler assembler;

    public TournamentController(TournamentRepository repository, TournamentModelAssembler assembler) {
        this.repository = repository;
        this.assembler = assembler;
    }

    @GetMapping("/tournaments/id/{id}")
    public EntityModel<Tournament> oneById(@PathVariable int id) {
        Tournament tournament = this.repository.findById(id)
            .orElseThrow(() -> new TournamentNotFoundException(id));
        return this.assembler.toModel(tournament);
    }

    @GetMapping("/tournaments/name/{name}")
    public EntityModel<Tournament> oneByName(@PathVariable String name) {
        Tournament tournament = this.repository.findByName(name)
            .orElseThrow(() -> new TournamentNotFoundException(name));
        return this.assembler.toModel(tournament);
    }

    @GetMapping("/tournaments")
    public CollectionModel<EntityModel<Tournament>> all() {
        List<EntityModel<Tournament>> tournaments = this.repository.findAll().stream()
            .map(this.assembler::toModel)
            .collect(Collectors.toList());
        return CollectionModel.of(tournaments,
            linkTo(methodOn(TournamentController.class).all()).withSelfRel());
    }

    @PostMapping("/tournaments")
    public Tournament newTournament(@RequestBody Tournament newTournament) {
        return this.repository.save(newTournament);
    }
}

class TournamentNotFoundException extends RuntimeException {
    TournamentNotFoundException(final int id) {
        super("Could not find tournament " + id);
    }

    TournamentNotFoundException(final String name) {
        super("Could not find tournament " + name);
    }
}

@RestControllerAdvice
class TournamentNotFoundAdvice {
    @ExceptionHandler(TournamentNotFoundException.class)
    @ResponseStatus(HttpStatus.NOT_FOUND)
    String tournamentNotFoundHandler(TournamentNotFoundException exception) {
        return exception.getMessage();
    }
}
