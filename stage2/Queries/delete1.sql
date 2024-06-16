--Scenario: The company wants to clean up old and underutilized trip data from the database to maintain optimal performance and manage storage efficiently.

--Purpose: The primary aim is to remove records from the travelers_list table for trips that are not only outdated (older than one year) but also had low participation (fewer than five passengers). This helps in keeping the database lean and ensuring that only relevant and recent data is retained.

--Use Case:
--Database Maintenance Team: They can use this query to periodically clean up the database by removing old and underutilized trip data. This helps in maintaining the performance and efficiency of the database.
--Data Analysis Team: By removing old and low-participation trip data, the analysis team can focus on more recent and relevant data, leading to more accurate insights and reports.
--Storage Management: Cleaning up outdated data helps in managing storage costs and resources effectively, ensuring that the database does not become bloated with irrelevant information.
DELETE FROM 
    travelers_list
WHERE 
    id_trip IN (
        SELECT t.id_trip 
        FROM trip t
        JOIN transportation tr ON t.id_transportation = tr.id_transportation
        WHERE t.trip_date < ADD_MONTHS(SYSDATE, -12)
        AND tr.number_of_passengers < 5
    );
