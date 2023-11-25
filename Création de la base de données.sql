-- Création de la base de données
CREATE DATABASE IF NOT EXISTS gestion_recettes;
USE gestion_recettes;

-- Création de la table des utilisateurs
CREATE TABLE IF NOT EXISTS utilisateurs (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    mot_de_passe VARCHAR(255) NOT NULL
);

-- Création de la table des recettes
CREATE TABLE IF NOT EXISTS recettes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    utilisateur_id INT,
    nom VARCHAR(255) NOT NULL,
    ingredients TEXT NOT NULL,
    etapes_preparation TEXT NOT NULL,
    duree_preparation INT NOT NULL,
    photo VARCHAR(255),
    FOREIGN KEY (utilisateur_id) REFERENCES utilisateurs(id)
);
