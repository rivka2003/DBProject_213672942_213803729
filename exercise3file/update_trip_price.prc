CREATE OR REPLACE PROCEDURE update_trip_price(
p_id_trip IN NUMBER, p_new_price IN NUMBER) IS
BEGIN
  UPDATE trip
  SET price = p_new_price
  WHERE id_trip = p_id_trip;

  COMMIT;
EXCEPTION
  WHEN OTHERS THEN
    ROLLBACK;
    RAISE;
END;
/
