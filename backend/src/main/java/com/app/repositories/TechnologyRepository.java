package com.app.repositories;

import com.app.models.Technology;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface TechnologyRepository extends JpaRepository<Technology, Long> {
    @Query("SELECT c FROM Technology c WHERE c.category.id = 2")
    List<Technology> findTechnologiesWithCommands();
}
