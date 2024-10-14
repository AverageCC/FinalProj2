-- Update the status of a pet once it’s adopted
UPDATE Pets SET status = 'Adopted' WHERE pet_id = 1;

-- Update adopter contact information
UPDATE Adopters SET contact_info = 'john.doe@newmail.com' WHERE adopter_id = 1;