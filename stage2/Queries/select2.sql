/* 
/*
This query retrieves information about trips that took place in the last 30 days. It provides the trip name, destination name, guard name, driver name, number of passengers, and duration time for each trip. The query joins multiple tables: `trip`, `destinations`, `guided_by`, `guard`, and `transportation`, to gather comprehensive details for each recent trip.
*/

SELECT t.name, d.name AS destination, g.name AS guard, tr.driver, tr.number_of_passengers, tr.duration_time
FROM trip t
JOIN destinations d ON t.id_trip = d.id_trip
JOIN guided_by gb ON t.id_trip = gb.id_trip
JOIN guard g ON gb.id_guard = g.id_guard
JOIN transportation tr ON t.id_transportation = tr.id_transportation
WHERE t.trip_date >= SYSDATE - 30; -- Get trips in the last 30 days
