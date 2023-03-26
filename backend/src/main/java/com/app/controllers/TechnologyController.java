package com.app.controllers;

import com.app.models.Technology;
import com.app.services.TechnologyService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/technologies")
@CrossOrigin(origins = "http://localhost:4200")
@RequiredArgsConstructor
public class TechnologyController {
    private final TechnologyService technologyService;

    @GetMapping
    public List<Technology> getAll(@RequestParam(required = false) boolean hasArticles, @RequestParam(required = false) boolean hasCommands) {
        return technologyService.findAll(hasArticles, hasCommands);
    }

    @GetMapping("/{id}")
    public Technology getById(@PathVariable Long id) {
        return technologyService.findById(id).orElse(null);
    }

    @PostMapping
    public void add(@RequestBody Technology technology) {
        technologyService.createTechnology(technology);
    }

    @DeleteMapping("/{id}")
    public void deleteById(@PathVariable Long id) {
        technologyService.deleteById(id);
    }
}
