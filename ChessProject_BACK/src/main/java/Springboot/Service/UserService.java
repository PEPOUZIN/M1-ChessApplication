package Springboot.Service;


import Springboot.entity.Role;
import Springboot.entity.RoleName;
import Springboot.entity.User;
import Springboot.repository.RoleRepository;
import Springboot.repository.UserRepository;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class UserService {
    private final UserRepository userRepository;
    private final RoleRepository roleRepository;


    public UserService(UserRepository userRepository, RoleRepository roleRepository) {
        this.userRepository = userRepository;
        this.roleRepository = roleRepository;
    }

    public List<User> allUsers() {
        List<User> users = new ArrayList<>();

        users.addAll(userRepository.findAll());

        return users;
    }

    public void addRoleUser(User user) {
        Role role = new Role();
        if(roleRepository.findByName(RoleName.ROLE_USER).isEmpty()) {
            role.setName(RoleName.ROLE_USER);
            roleRepository.save(role);
        }
        else {
            role = roleRepository.findByName(RoleName.ROLE_USER).get();
        }
        user.getRoles().add(role);
    }
    public void addRoleAdmin(User user) {
        Role role = new Role();
        role.setName(RoleName.ROLE_ADMIN);
        roleRepository.save(role);
        user.getRoles().add(role);
    }


}
