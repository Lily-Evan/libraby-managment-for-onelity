-- src/main/resources/schema.sql
CREATE DATABASE IF NOT EXISTS library;
USE library;

CREATE TABLE IF NOT EXISTS users (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    role VARCHAR(20) NOT NULL DEFAULT 'USER'
);

CREATE TABLE IF NOT EXISTS books (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    author VARCHAR(255) NOT NULL,
    description TEXT,
    publication_year INT,
    language VARCHAR(50),
    category VARCHAR(50),
    rating DECIMAL(3,2),
    available BOOLEAN DEFAULT TRUE,
    borrowed_by_id BIGINT,
    borrowed_at DATETIME,
    due_date DATETIME,
    FOREIGN KEY (borrowed_by_id) REFERENCES users(id)
);

CREATE TABLE IF NOT EXISTS reviews (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    book_id BIGINT NOT NULL,
    user_id BIGINT NOT NULL,
    rating INT,
    comment TEXT,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (book_id) REFERENCES books(id),
    FOREIGN KEY (user_id) REFERENCES users(id)
);

-- Insert sample data
INSERT INTO users (name, email, password, role) VALUES
('Admin', 'admin@library.com', '$2a$10$xn3LI/AjqicFYZFruSwve.681477XaVNaUQbr1gioaWPn4t1KsnmG', 'ADMIN'),
('User', 'user@library.com', '$2a$10$xn3LI/AjqicFYZFruSwve.681477XaVNaUQbr1gioaWPn4t1KsnmG', 'USER');

INSERT INTO books (title, author, description, publication_year, language, category, rating) VALUES
('Το Νησί', 'Βικτόρια Χίσλοπ', 'Ένα συγκινητικό μυθιστόρημα για τη Σπιναλόγκα', 2005, 'Ελληνικά', 'Μυθιστόρημα', 4.7),
('1984', 'George Orwell', 'Ένα διαχρονικό έργο για την ελευθερία', 1949, 'Αγγλικά', 'Λογοτεχνία', 4.8),
('Ο Αλχημιστής', 'Paulo Coelho', 'Ένα ταξίδι αυτογνωσίας', 1988, 'Πορτογαλικά', 'Φιλοσοφία', 4.6),
('Ζορμπάς', 'Νίκος Καζαντζάκης', 'Ένα αριστούργημα της ελληνικής λογοτεχνίας', 1946, 'Ελληνικά', 'Κλασική Λογοτεχνία', 4.9);
