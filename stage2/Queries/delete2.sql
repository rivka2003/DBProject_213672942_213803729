--Scenario: The company wants to maintain the relevance of its destinations table by only keeping destinations linked to high-value, upcoming trips. This ensures that resources and attention are focused on destinations that contribute the most to the company's revenue and future planning.

--Purpose: The primary aim is to clean up the destinations table by removing destinations that are not associated with valuable trips planned for the near future. This helps in keeping the database concise and focused on high-priority data.

--Use Case:
--Marketing and Sales Teams: They can use this information to promote and allocate resources to destinations linked to high-value trips, ensuring effective marketing strategies and customer engagement.
--Operational Planning: By focusing on destinations associated with valuable and upcoming trips, the operations team can better plan logistics, staffing, and other necessary preparations.
--Data Management: Regular cleanup of outdated or low-priority data helps in managing database performance, storage costs, and ensuring that the data remains relevant and useful.

DELETE FROM 
    destinations
WHERE 
    id_destinations NOT IN (
        SELECT id_destinations 
        FROM trip 
        WHERE price > &PRICE
        AND id_transportation IN (
            SELECT id_transportation 
            FROM transportation 
            WHERE duration_time > ADD_MONTHS(SYSDATE, 6)
        )
    );
