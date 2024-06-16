-- This query updates the `price` of each trip in the `trip` table.
-- It sets the `price` to the average price of the trips as recorded in the `guided_by` table.
-- The subquery `(SELECT AVG(price) FROM guided_by gb WHERE gb.id_trip = t.id_trip)` calculates the average price for each trip based on the `id_trip`.
-- The `WHERE EXISTS` clause ensures that only trips with at least one entry in the `guided_by` table are updated.

UPDATE trip t
SET price = (
    SELECT AVG(price)
    FROM guided_by gb
    WHERE gb.id_trip = t.id_trip
)
WHERE EXISTS (
    SELECT 1
    FROM guided_by gb
    WHERE gb.id_trip = t.id_trip
);
