package com.app.services;

import com.app.models.Technology;
import com.app.repositories.TechnologyRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
@RequiredArgsConstructor
public class TechnologyService {
    private final TechnologyRepository technologyRepository;

    // boolean hasArticles, boolean hasCommands
    public List<Technology> findAll(boolean hasArticle, boolean hasCommands) {
        if (hasCommands) {
            return this.technologyRepository.findTechnologiesWithCommands();
        }
        return technologyRepository.findAll();
    }
    public void createTechnology(Technology technology) {
        technologyRepository.save(technology);
    }

    public void deleteById(Long id) {
        technologyRepository.deleteById(id);
    }

    public Optional<Technology> findById(Long id) {
        return technologyRepository.findById(id);
    }
}
