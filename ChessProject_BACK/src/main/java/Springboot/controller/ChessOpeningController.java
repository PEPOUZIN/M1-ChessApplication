package Springboot.controller;

import Springboot.entity.ChessOpening;
import Springboot.repository.ChessOpeningRepository;
import Springboot.assembler.ChessOpeningModelAssembler;
import org.springframework.hateoas.EntityModel;
import org.springframework.web.bind.annotation.*;
import org.springframework.context.annotation.Profile;


import java.util.List;
import java.util.stream.Collectors;

@RestController
@RequestMapping("/chess_openings")
public class ChessOpeningController {

    private final ChessOpeningRepository repository;
    private final ChessOpeningModelAssembler assembler;

    public ChessOpeningController(ChessOpeningRepository repository, ChessOpeningModelAssembler assembler) {
        this.repository = repository;
        this.assembler = assembler;
    }

    @GetMapping("/{id}")
    public EntityModel<ChessOpening> oneById(@PathVariable Integer id) {
        ChessOpening chessOpening = repository.findById(id).orElseThrow(() -> new RuntimeException("ChessOpening not found"));
        return assembler.toModel(chessOpening);
    }

    @GetMapping
    public List<EntityModel<ChessOpening>> all() {
        return repository.findAll().stream()
                .map(assembler::toModel)
                .collect(Collectors.toList());
    }
}
