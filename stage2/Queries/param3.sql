/*
This query retrieves detailed information about travelers who joined trips in the past year, focusing on those who traveled on trips with more than 10 passengers and were guarded by someone named John. It fetches the traveler's name, year of birth, price paid, trip details, transportation details, guard details, and destination details for trips that occurred more than a year ago, and only includes travelers who are minors (under 18 years old).
*/

SELECT 
    tl.id_travelers_list,
    tl.price AS traveler_price,
    trav.name AS traveler_name,
    trav.year_of_birth,
    trip_details.trip_name,
    trip_details.trip_date,
    trip_details.trip_price,
    trans_details.number_of_passengers,
    trans_details.driver,
    guard_details.guard_name,
    dest_details.destination_name,
    dest_details.destination_description
FROM 
    travelers_list tl
JOIN travelers trav ON tl.id_travels = trav.id_travels
JOIN (
    SELECT 
        t.id_trip,
        t.name AS trip_name,
        t.trip_date,
        t.price AS trip_price,
        t.id_transportation
    FROM 
        trip t
    WHERE 
        t.trip_date < ADD_MONTHS(SYSDATE, -12)
) trip_details ON tl.id_trip = trip_details.id_trip
JOIN (
    SELECT 
        trans.id_transportation,
        trans.number_of_passengers,
        trans.driver
    FROM 
        transportation trans
    WHERE 
        trans.number_of_passengers > 10
) trans_details ON trip_details.id_transportation = trans_details.id_transportation
JOIN (
    SELECT 
        gb.id_trip,
        g.name AS guard_name
    FROM 
        guided_by gb
    JOIN guard g ON gb.id_guard = g.id_guard
    WHERE 
        g.name LIKE 'John%'
) guard_details ON trip_details.id_trip = guard_details.id_trip
JOIN (
    SELECT 
        d.id_trip,
        d.name AS destination_name,
        d.description AS destination_description
    FROM 
        destinations d
    WHERE 
        d.description = '&<name="description" list="select distinct description from destinations">'
) dest_details ON trip_details.id_trip = dest_details.id_trip
WHERE 
    trav.year_of_birth > EXTRACT(YEAR FROM SYSDATE) - 18;
