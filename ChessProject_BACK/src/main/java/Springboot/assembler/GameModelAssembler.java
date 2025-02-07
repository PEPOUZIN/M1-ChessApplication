package Springboot.assembler;

import static org.springframework.hateoas.server.mvc.WebMvcLinkBuilder.*;
import org.springframework.hateoas.EntityModel;
import org.springframework.hateoas.server.RepresentationModelAssembler;
import org.springframework.stereotype.Component;

import Springboot.controller.GameController;
import Springboot.entity.Game;

@Component
public class GameModelAssembler implements RepresentationModelAssembler<Game, EntityModel<Game>> {
    @Override
    public EntityModel<Game> toModel(Game game) {
        return EntityModel.of(game,
        linkTo(methodOn(GameController.class).oneById(game.getId())).withSelfRel(),
        linkTo(methodOn(GameController.class).all()).withRel("games"));
    }
}