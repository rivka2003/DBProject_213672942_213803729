--Description/Story
--Scenario: The travel company wants to ensure that guards' contact information is up-to-date, especially for upcoming trips. This query specifically targets guards who are assigned to trips happening in the future.

--Purpose: The primary aim is to maintain accurate and current contact details for guards, ensuring smooth communication and coordination for future trips.

--Use Case:
--Contact Information Update: By updating guards' phone numbers, the company ensures that communication channels remain open and efficient, critical for coordinating trips and addressing any emergencies.

Trip Preparedness: Having correct contact information for guards scheduled for future trips helps in ensuring that all necessary arrangements and coordination are in place before the trip dates.
UPDATE 
    guard
SET 
    number_phone = :newPhoneNumber
WHERE 
    id_guard = :guardId
    AND id_guard IN (
        SELECT id_guard 
        FROM guided_by 
        WHERE id_trip IN (
            SELECT id_trip 
            FROM trip 
            WHERE trip_date > SYSDATE
        )
    );
