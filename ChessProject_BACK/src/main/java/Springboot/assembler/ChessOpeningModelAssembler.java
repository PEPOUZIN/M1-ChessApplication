package Springboot.assembler;

import static org.springframework.hateoas.server.mvc.WebMvcLinkBuilder.*;
import org.springframework.hateoas.EntityModel;
import org.springframework.hateoas.server.RepresentationModelAssembler;
import org.springframework.stereotype.Component;

import Springboot.controller.ChessOpeningController;
import Springboot.entity.ChessOpening;

@Component
public class ChessOpeningModelAssembler implements RepresentationModelAssembler<ChessOpening, EntityModel<ChessOpening>> {
    @Override
    public EntityModel<ChessOpening> toModel(ChessOpening chessOpening) {
        return EntityModel.of(chessOpening,
        linkTo(methodOn(ChessOpeningController.class).oneById(chessOpening.getId())).withSelfRel(),
        linkTo(methodOn(ChessOpeningController.class).all()).withRel("chessOpenings"));
    }
}
