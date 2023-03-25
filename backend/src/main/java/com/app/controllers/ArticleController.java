package com.app.controllers;

import com.app.models.Article;
import com.app.services.ArticleService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/articles")
@CrossOrigin(origins = "http://localhost:4200")
@RequiredArgsConstructor
public class ArticleController {
    private final ArticleService articleService;

    @GetMapping
    public List<Article> getAll(@RequestParam(required = false) String technologyName) {
        return articleService.findAll(technologyName);
    }

    @GetMapping("/{id}")
    public Article getById(@PathVariable Long id) {
        return articleService.findById(id).orElse(null);
    }

    @PostMapping()
    public void add(@RequestBody Article article) {
        articleService.add(article);
    }

    @DeleteMapping("/{id}")
    public void deleteUser(@PathVariable Long id) {
        articleService.deleteById(id);
    }
}
