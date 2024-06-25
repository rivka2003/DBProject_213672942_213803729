
--Purpose: delete guards who dont guid any trip
DELETE FROM 
    guard
WHERE 
    id_guard NOT IN (SELECT id_guard FROM guided_by);
