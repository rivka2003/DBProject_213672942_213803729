--Description/Story
--Scenario: The travel company needs to maintain a clean and efficient database by removing outdated data. Specifically, they want to delete records of travelers from trips that happened over a year ago.

--Purpose: The primary aim is to ensure that the database does not retain unnecessary historical data, which can improve database performance and make it easier to manage current and relevant information.

--Use Case:
--Database Maintenance: Regularly cleaning up old data helps in optimizing database performance and storage. It ensures that queries run faster and the database remains efficient.
--Data Relevance: Keeping only recent and relevant data makes it easier for the company to access and analyze information that is currently useful for operational decisions and reporting.
--Compliance and Privacy: Removing old travel records can also help in complying with data retention policies and privacy regulations, ensuring that personal data is not kept longer than necessary.

DELETE FROM 
    travelers_list
WHERE 
    id_trip = :tripId
    AND id_travels = :travelerId
    AND id_trip IN (
        SELECT id_trip 
        FROM trip 
        WHERE trip_date < ADD_MONTHS(SYSDATE, -12)
    );
