--Description/Story
--Scenario: The company has identified that certain transportations associated with upcoming trips need to have their duration extended. This could be due to logistical reasons, extended trip itineraries, or additional services being added to the trips.

--Purpose: The primary aim is to adjust the duration time of transportations to accommodate changes in trip schedules and ensure that all necessary preparations and services are accounted for. This helps in maintaining accurate and up-to-date transportation schedules.

--Use Case:
--Operational Planning: By extending the duration time of transportations associated with future trips, the operations team can better plan and allocate resources, ensuring that all trips run smoothly and efficiently.
--Customer Experience: Extended durations might indicate additional services or stops during the trip, enhancing the overall customer experience and satisfaction.
--Data Accuracy: Keeping transportation schedules accurate and reflective of real-world changes helps in better decision-making and operational efficiency.

UPDATE 
    trip
SET 
    price = price * 1.1
WHERE 
    id_trip IN (
        SELECT id_trip 
        FROM guided_by 
        WHERE id_guard = (
            SELECT id_guard 
            FROM guard 
            WHERE name = &<name = "name of the guard" list = "select distinct name from guard" hint ="guard name" >
        )
    )
    AND trip_date > SYSDATE;
