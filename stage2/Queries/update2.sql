
--Purpose: update the price of trips to grow by 12% if the guard of this trip is having the entered name


UPDATE 
    trip
SET 
    price = price * 1.12
WHERE 
    id_trip IN (
        SELECT id_trip 
        FROM guided_by 
        WHERE id_guard = (
            SELECT id_guard 
            FROM guard 
            WHERE name = &<name = "name of the guard" list = "select distinct name from guard" hint ="guard name" >
        )
    )
    AND trip_date > SYSDATE;
