/* The purpose of the query is to calculate the number of travelers in each trip whose price falls within the price range specified by the parameters ":min_price" and ":max_price". The query compares the prices of trips to the parameters and displays the result grouped by trip names. */
SELECT 
    tr.name AS trip_name, 
    COUNT(tl.id_travels) AS number_of_travelers
FROM 
    trip tr
JOIN 
    travelers_list tl ON tr.id_trip = tl.id_trip
WHERE 
    tr.price > &min_price
    AND tr.price < &max_price
GROUP BY 
    tr.name;   
