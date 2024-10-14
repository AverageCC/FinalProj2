-- Create a new Pet Adoption Database and integrate existing data

CREATE DATABASE PetAdoptionDB;
USE PetAdoptionDB;

-- Create Tables
CREATE TABLE Pets (
  pet_id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(50),
  type VARCHAR(30),
  breed VARCHAR(50),
  age INT,
  status VARCHAR(20)
);

CREATE TABLE Adopters (
  adopter_id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(50),
  contact_info VARCHAR(100)
);

CREATE TABLE Adoptions (
  adoption_id INT PRIMARY KEY AUTO_INCREMENT,
  pet_id INT,
  adopter_id INT,
  adoption_date DATE,
  FOREIGN KEY (pet_id) REFERENCES Pets(pet_id),
  FOREIGN KEY (adopter_id) REFERENCES Adopters(adopter_id)
);

-- Insert Data
INSERT INTO Pets (name, type, breed, age, status) VALUES ('Buddy', 'Dog', 'Golden Retriever', 3, 'Available');
INSERT INTO Pets (name, type, breed, age, status) VALUES ('Mittens', 'Cat', 'Siamese', 2, 'Available');
INSERT INTO Pets (name, type, breed, age, status) VALUES ('Max', 'Dog', 'Beagle', 4, 'Available');
INSERT INTO Pets (name, type, breed, age, status) VALUES ('Whiskers', 'Cat', 'Tabby', 1, 'Available');
INSERT INTO Pets (name, type, breed, age, status) VALUES ('Charlie', 'Dog', 'Poodle', 5, 'Adopted');
INSERT INTO Pets (name, type, breed, age, status) VALUES ('Coco', 'Parrot', 'Macaw', 3, 'Available');

INSERT INTO Adopters (name, contact_info) VALUES ('John Doe', 'john.doe@example.com');
INSERT INTO Adopters (name, contact_info) VALUES ('Jane Smith', 'jane.smith@example.com');
INSERT INTO Adopters (name, contact_info) VALUES ('Alice Johnson', 'alice.johnson@example.com');
INSERT INTO Adopters (name, contact_info) VALUES ('Robert Brown', 'robert.brown@example.com');

INSERT INTO Adoptions (pet_id, adopter_id, adoption_date) VALUES (3, 3, '2024-09-15');
INSERT INTO Adoptions (pet_id, adopter_id, adoption_date) VALUES (1, 2, '2024-10-01');