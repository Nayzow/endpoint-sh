package com.app.models;

import jakarta.persistence.*;
import lombok.Data;

@Entity
@Table(name = "articles")
@Data
public class Article {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String content;

    @ManyToOne
    @JoinColumn(name="id_technology")
    private Technology technology;
}
