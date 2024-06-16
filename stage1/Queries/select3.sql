--Description/Story
--Scenario: The company wants to identify and analyze upcoming trips, particularly those with shorter transportation durations, to plan for resource allocation and marketing campaigns.

--Purpose: The primary aim is to provide insights into the demographics of travelers (age-wise) and their participation in upcoming trips. This helps in understanding the age distribution of travelers, the popularity of upcoming trips, and planning resources for trips with shorter transportation durations.

--Use Case:
--Marketing Team: They can use this information to create targeted campaigns for upcoming trips, focusing on specific age groups.
--Operations Team: Understanding which trips are scheduled soon and have shorter durations helps in better planning and resource allocation.
--Customer Service Team: Knowing the number of travelers on each trip helps in preparing for customer support needs.
SELECT 
    tr.name AS TravelerName, 
    tr.year_of_birth, 
    t.name AS TripName, 
    t.trip_date,
    (SELECT COUNT(*) FROM travelers_list tl WHERE tl.id_trip = t.id_trip) AS NumberOfTravelers
FROM 
    travelers tr
JOIN 
    travelers_list tl ON tr.id_travels = tl.id_travels
JOIN 
    trip t ON tl.id_trip = t.id_trip
JOIN 
    transportation tp ON t.id_transportation = tp.id_transportation
WHERE 
    t.trip_date > (SELECT TRUNC(SYSDATE) FROM dual)
    AND tp.duration_time < ADD_MONTHS(SYSDATE, 6)
ORDER BY 
    tr.year_of_birth ASC, t.trip_date DESC;
