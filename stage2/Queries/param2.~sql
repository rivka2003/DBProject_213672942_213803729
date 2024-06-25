-- The query displays information about trips within a user-defined date range, including the trip name, trip date, and the number of travelers on each trip, sorted by trip date.

SELECT 
    t.name AS TripName, 
    t.trip_date, 
    COUNT(tl.id_travels) AS NumberOfTravelers
FROM 
    trip t
JOIN 
    travelers_list tl ON t.id_trip = tl.id_trip
WHERE 
    t.trip_date BETWEEN TO_DATE('&<name = "start Date" list= "select distinct trip_date from trip ORDER BY TRIP_DATE">', 'DD/MM/YYYY') AND TO_DATE('&<name = "end Date" list= "select distinct trip_date from trip ORDER BY TRIP_DATE">','DD/MM/YYYY')
GROUP BY 
    t.name, t.trip_date
ORDER BY 
    t.trip_date;
