package com.example.library.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.time.LocalDateTime;
import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name = "users")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class User {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    
    @Column(nullable = false, unique = true, length = 64)
    private String username;
    
    @Column(nullable = false, unique = true, length = 120)
    private String email;
    
    @Column(nullable = false)
    private String password;
    
    @Column(name = "is_admin", nullable = false)
    private boolean isAdmin = false;
    
    @Column(name = "created_at")
    private LocalDateTime createdAt = LocalDateTime.now();
    
    @OneToMany(mappedBy = "user", cascade = CascadeType.ALL)
    private Set<Rental> rentals = new HashSet<>();
}
