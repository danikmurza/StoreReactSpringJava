package org.springframework.boot.demo.repository;

import org.springframework.boot.demo.model.Role;
import org.springframework.boot.demo.model.RoleName;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface RoleRepository extends JpaRepository<Role, Long> {

    Optional<Role> findByName(RoleName roleName);
}
