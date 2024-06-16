--It sets the column to be VARCHAR2(15) in 
--data type and ensures that the name column cannot contain NULL values.
ALTER TABLE travelers
MODIFY (name VARCHAR2(15) NOT NULL);


--It ensures that the number_of_passengers 
--column in the transportation table only accepts values greater than 0.
ALTER TABLE transportation
ADD CONSTRAINT chk_number_of_passengers CHECK (number_of_passengers > 0);


--It sets a default value of 100 for the price column, 
--which will be used if no value is explicitly provided during insertion.
ALTER TABLE trip
MODIFY (price DEFAULT 100);
