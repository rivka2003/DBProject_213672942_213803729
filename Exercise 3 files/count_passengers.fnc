CREATE OR REPLACE FUNCTION count_passengers(p_id_trip IN NUMBER)
RETURN NUMBER 
IS
  v_passenger_count NUMBER := 0;
BEGIN
 
  SELECT COUNT(id_travels) 
  INTO v_passenger_count 
  FROM travelers_list 
  WHERE id_trip = p_id_trip;

  RETURN v_passenger_count;
EXCEPTION
  WHEN OTHERS THEN
   
    RETURN -1;
END;
/
