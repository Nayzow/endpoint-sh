package com.app.models;

import jakarta.persistence.*;
import lombok.Data;

@Entity
@Table(name = "technologies")
@Data
public class Technology {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @Column
    private String name;
    private String image;
    private String roadmap;

    @ManyToOne
    @JoinColumn(name="id_category")
    private Category category;
}
