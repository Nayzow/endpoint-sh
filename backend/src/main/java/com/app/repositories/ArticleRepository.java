package com.app.repositories;

import com.app.models.Article;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface ArticleRepository extends JpaRepository<Article, Long> {

    @Query("SELECT c FROM Article c WHERE c.technology.name = :technologyName")
    List<Article> findByTechnologyName(String technologyName);
}
