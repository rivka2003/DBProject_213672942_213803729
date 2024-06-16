--Scenario: The company has recognized that trips guided by 'John Doe' are particularly popular and valuable due to his expertise and reputation. Therefore, they decide to increase the price of upcoming trips guided by him.

--Purpose: The primary aim is to adjust the pricing strategy by increasing the price of trips that are expected to have higher demand and perceived value due to the involvement of a well-regarded guide. This helps in maximizing revenue from premium services.

--Use Case:
--Revenue Optimization: By increasing the prices of trips guided by 'John Doe', the company can capitalize on his popularity and expertise, thereby increasing overall revenue.
--Dynamic Pricing Strategy: This query is part of a dynamic pricing strategy where prices are adjusted based on various factors such as guide reputation, demand, and trip timing.
--Customer Segmentation: By identifying high-value trips and adjusting prices accordingly, the company can better segment its customer base and tailor its offerings to different market segments.

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
            WHERE name = 'John Doe'
        )
    )
    AND trip_date > SYSDATE;
