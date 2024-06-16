--Description/Story
--Scenario: The company wants to identify and analyze trips that are both relatively expensive and have travelers of a certain age group. Additionally, they are interested in trips that are happening soon, specifically within the next 6 months. This information is useful for marketing and operational planning purposes.

--Purpose: The primary aim is to obtain a comprehensive list of upcoming trips that meet specific criteria. This helps in targeting marketing efforts, understanding customer demographics, and ensuring that resources (like guides) are adequately allocated.

--Use Case:
--Targeted Marketing: By filtering trips based on price and traveler age, the marketing team can create targeted campaigns aimed at specific customer segments. For instance, trips with older travelers and higher prices might be marketed as luxury or premium experiences.
--Operational Planning: Knowing the number of guides associated with each trip helps in planning and ensuring that there are enough guides available to meet customer expectations.
--Customer Insights: Understanding the demographics of travelers (based on year of birth) helps in tailoring the trip experience to meet the needs and preferences of different age groups.

SELECT 
    t.name AS TripName, 
    t.price, 
    tr.name AS TravelerName,
    (SELECT COUNT(*) FROM guided_by g WHERE g.id_trip = t.id_trip) AS NumberOfGuides
FROM 
    trip t
JOIN 
    travelers_list tl ON t.id_trip = tl.id_trip
JOIN 
    travelers tr ON tl.id_travels = tr.id_travels
WHERE 
    t.price > &minPrice
    AND tr.year_of_birth < &<name="max Year Of Birth" list="select year_of_birth from travelers" hint="Enter a year until which you want to view">
    AND t.id_transportation IN (
        SELECT id_transportation 
        FROM transportation 
        WHERE duration_time < ADD_MONTHS(SYSDATE, 6)
    )
ORDER BY 
    t.price DESC;
