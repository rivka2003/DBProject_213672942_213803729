CREATE OR REPLACE PROCEDURE add_traveler_to_trip(
p_id_trip IN NUMBER, p_id_travels IN NUMBER, p_price IN NUMBER) IS
    new_id INTEGER;
BEGIN
    

  select NVL(MAX(travelers_list.id_travelers_list),0)+1
  into new_id  
  from travelers_list;

  INSERT INTO travelers_list (id_travelers_list, id_trip, id_travels, price)
  VALUES (new_id, p_id_trip, p_id_travels, p_price);

  COMMIT;
EXCEPTION
  WHEN OTHERS THEN
    ROLLBACK;
    RAISE;
END;
/
