/* 
query shows the travelers with the highest number of trips
*/
SELECT 
    tr.name AS TravelerName, 
    COUNT(tl.id_trip) AS TripCount
FROM 
    travelers tr
JOIN 
    travelers_list tl ON tr.id_travels = tl.id_travels
GROUP BY 
    tr.name
HAVING 
    COUNT(tl.id_trip) = (
        SELECT MAX(TripCount)
        FROM (
            SELECT COUNT(tl.id_trip) AS TripCount
            FROM travelers_list tl
            GROUP BY tl.id_travels
        ) t
    )
ORDER BY 
    TravelerName;
