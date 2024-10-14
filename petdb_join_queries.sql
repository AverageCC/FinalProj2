-- Join Pets and Adoptions to see which pets have been adopted and by whom
SELECT Pets.name, Adopters.name AS adopter_name, Adoptions.adoption_date
FROM Pets
JOIN Adoptions ON Pets.pet_id = Adoptions.pet_id
JOIN Adopters ON Adoptions.adopter_id = Adopters.adopter_id;

-- Get all pets and their adoption status, including those not yet adopted
SELECT Pets.name, Pets.status, Adopters.name AS adopter_name
FROM Pets
LEFT JOIN Adoptions ON Pets.pet_id = Adoptions.pet_id
LEFT JOIN Adopters ON Adoptions.adopter_id = Adopters.adopter_id;

-- List all adopters and the pets they have adopted
SELECT Adopters.name, Pets.name AS pet_name
FROM Adopters
JOIN Adoptions ON Adopters.adopter_id = Adoptions.adopter_id
JOIN Pets ON Adoptions.pet_id = Pets.pet_id;

-- Find all pets that have not been adopted
SELECT * FROM Pets
WHERE pet_id NOT IN (SELECT pet_id FROM Adoptions);