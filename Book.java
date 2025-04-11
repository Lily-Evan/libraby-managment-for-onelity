package com.example.library.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.time.LocalDateTime;
import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name = "books")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Book {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    
    @Column(nullable = false, length = 200)
    private String title;
    
    @Column(nullable = false, length = 100)
    private String author;
    
    @Column(unique = true, length = 20)
    private String isbn;
    
    @Column(name = "publication_year")
    private Integer publicationYear;
    
    @Lob
    @Column(columnDefinition = "TEXT")
    private String description;
    
    @Column(nullable = false)
    private Integer quantity = 1;
    
    @Column(nullable = false)
    private Integer available = 1;
    
    @Column(name = "created_at")
    private LocalDateTime createdAt = LocalDateTime.now();
    
    @OneToMany(mappedBy = "book", cascade = CascadeType.ALL)
    private Set<Rental> rentals = new HashSet<>();
}
