package Springboot.assembler;

import static org.springframework.hateoas.server.mvc.WebMvcLinkBuilder.*;
import org.springframework.hateoas.EntityModel;
import org.springframework.hateoas.server.RepresentationModelAssembler;
import org.springframework.stereotype.Component;

import Springboot.controller.MovesController;
import Springboot.entity.Moves;

@Component
public class MovesModelAssembler implements RepresentationModelAssembler<Moves, EntityModel<Moves>>{
    @Override
    public EntityModel<Moves> toModel(Moves moves) {
        return EntityModel.of(moves,
            linkTo(methodOn(MovesController.class).oneById(moves.getId())).withSelfRel(),
            linkTo(methodOn(MovesController.class).all()).withRel("moves"));
    }
}
