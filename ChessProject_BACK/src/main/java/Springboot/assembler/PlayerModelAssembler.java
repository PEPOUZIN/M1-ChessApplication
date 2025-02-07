package Springboot.assembler;

import static org.springframework.hateoas.server.mvc.WebMvcLinkBuilder.*;
import org.springframework.hateoas.EntityModel;
import org.springframework.hateoas.server.RepresentationModelAssembler;
import org.springframework.stereotype.Component;

import Springboot.controller.PlayerController;
import Springboot.entity.Player;

@Component
public class PlayerModelAssembler implements RepresentationModelAssembler<Player, EntityModel<Player>> {
    @Override
    public EntityModel<Player> toModel(Player player) {
        return EntityModel.of(player,
            linkTo(methodOn(PlayerController.class).oneById(player.getId())).withSelfRel(),
            linkTo(methodOn(PlayerController.class).all()).withRel("players"));
    }
}
