/* The purpose of the query is to calculate the number of travelers in each trip based on a provided trip ID. It retrieves this information by joining the "trip" table with the "travelers_list" table using the trip ID from the list, and then groups the results by trip names to display the count of travelers for each trip. */
SELECT 
    tr.name AS trip_name, 
    COUNT(tl.id_travels) AS number_of_travelers
FROM 
    trip tr
JOIN 
    travelers_list tl ON tr.id_trip = tl.id_trip
WHERE 
    tr.id_trip IN (&trip_ids)
GROUP BY 
    tr.name;
