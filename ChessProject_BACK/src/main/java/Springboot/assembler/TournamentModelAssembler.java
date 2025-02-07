package Springboot.assembler;

import static org.springframework.hateoas.server.mvc.WebMvcLinkBuilder.*;
import org.springframework.hateoas.EntityModel;
import org.springframework.hateoas.server.RepresentationModelAssembler;
import org.springframework.stereotype.Component;

import Springboot.controller.TournamentController;
import Springboot.entity.Tournament;

@Component
public class TournamentModelAssembler implements RepresentationModelAssembler<Tournament, EntityModel<Tournament>> {
    @Override
    public EntityModel<Tournament> toModel(Tournament tournament) {
        return EntityModel.of(tournament,
            linkTo(methodOn(TournamentController.class).oneById(tournament.getId())).withSelfRel(),
            linkTo(methodOn(TournamentController.class).all()).withRel("tournaments"));
    }
}
