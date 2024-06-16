--Scenario: The company wants to identify and analyze their most exclusive and popular trips to optimize their offerings and enhance customer satisfaction.

--Purpose: The primary aim is to provide insights into the trips that have the highest number of travelers and the highest prices for their respective transportation means. This helps in understanding which trips are more popular and lucrative, as well as evaluating the number of guides required for such trips.

--Use Case:
--Marketing Team: They can use this information to promote the most popular and expensive trips, highlighting their exclusivity and the number of guides available for personalized attention.
--Operations Team: Understanding the traveler count and guide requirements helps in better planning and resource allocation for future trips.
--Financial Team: Analyzing the highest-priced trips and their traveler counts can assist in financial planning and revenue optimization.

SELECT 
    t.name AS TripName,
    COUNT(tl.id_travels) AS NumberOfTravelers,
    t.price,
    (SELECT COUNT(*) FROM guided_by g WHERE g.id_trip = t.id_trip) AS NumberOfGuides
FROM 
    trip t
JOIN 
    travelers_list tl ON t.id_trip = tl.id_trip
JOIN 
    transportation tr ON t.id_transportation = tr.id_transportation
GROUP BY 
    t.name, t.price
HAVING 
    COUNT(tl.id_travels) > 2
    AND t.price = (SELECT MAX(price) FROM trip WHERE id_transportation = tr.id_transportation)
ORDER BY 
    NumberOfTravelers DESC;
