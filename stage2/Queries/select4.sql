-- Description/Story:
-- The company wants to analyze driver performance and trip profitability on a monthly basis. They aim to identify high-performing drivers and profitable transportation methods.

SELECT 
    t.driver AS DriverName, 
    COUNT(tl.id_travels) AS TotalTravelers, 
    EXTRACT(MONTH FROM tr.trip_date) AS TravelMonth,
    SUM(tr.price) AS TotalRevenue
FROM 
    transportation t
JOIN 
    trip tr ON t.id_transportation = tr.id_transportation
JOIN 
    travelers_list tl ON tr.id_trip = tl.id_trip
GROUP BY 
    t.driver, EXTRACT(MONTH FROM tr.trip_date)
