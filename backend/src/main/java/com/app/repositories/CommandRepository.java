package com.app.repositories;

import com.app.models.Command;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface CommandRepository extends JpaRepository<Command, Long> {
    @Query("SELECT COUNT(*) FROM Command")
    long countCommands();

    @Query("SELECT c FROM Command c")
    List<Command> findAllCommands();

    @Query("SELECT c FROM Command c WHERE c.technology.name = :technologyName")
    List<Command> findByTechnologyName(String technologyName);
}
