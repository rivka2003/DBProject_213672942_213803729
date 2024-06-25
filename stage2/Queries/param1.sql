--Select travelers born in a specific year.
SELECT 
    name, 
    YEAR_OF_BIRTH
FROM 
    travelers
WHERE 
    YEAR_OF_BIRTH = &birth_year;
