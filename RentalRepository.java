package com.example.library.repository;

import com.example.library.model.Rental;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface RentalRepository extends JpaRepository<Rental, Long> {
    
    List<Rental> findByUserIdAndIsReturnedFalse(Long userId);
    
    List<Rental> findByUserId(Long userId);
    
    List<Rental> findByBookIdAndIsReturnedFalse(Long bookId);
    
    long countByBookIdAndIsReturnedFalse(Long bookId);
}
