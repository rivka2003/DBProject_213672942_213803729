--Scenario: The company wants to clean up old and underutilized trip data from the database to maintain optimal performance and manage storage efficiently.

--Purpose: The primary aim is to remove records from the travelers_list table for trips that are outdated (older than 6 צםמאיד)

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
        WHERE t.trip_date < ADD_MONTHS(SYSDATE, -6)
        
    );
