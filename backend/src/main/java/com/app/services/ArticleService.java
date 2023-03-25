package com.app.services;

import com.app.models.Article;
import com.app.repositories.ArticleRepository;
import io.micrometer.common.util.StringUtils;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
// Créer le constructeur requis pour l'injection de dépendance
@RequiredArgsConstructor
public class ArticleService {
    private final ArticleRepository articleRepository;

    public List<Article> findAll(String technologyName) {
        if(StringUtils.isNotBlank(technologyName)) {
            return this.articleRepository.findByTechnologyName(technologyName);
        }
        return articleRepository.findAll();
    }

    public void add(Article article) {
        articleRepository.save(article);
    }

    public void deleteById(Long id) {
        articleRepository.deleteById(id);
    }

    public Optional<Article> findById(Long id) {
        return articleRepository.findById(id);
    }
}
