/*
This query updates the 'price' to be bigger in ten precents in trips of last 12 months
*/
UPDATE 
    trip
SET 
    price = price * 1.10
WHERE 
    trip_date >= ADD_MONTHS(SYSDATE, 12);
