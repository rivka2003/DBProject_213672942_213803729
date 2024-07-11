CREATE OR REPLACE FUNCTION get_travelers_list(p_id_trip IN NUMBER) RETURN SYS_REFCURSOR IS
  v_travelers SYS_REFCURSOR;
BEGIN
  OPEN v_travelers FOR
    SELECT t.name, t.id_travels
    FROM travelers t
    JOIN travelers_list tl ON t.id_travels = tl.id_travels
    WHERE tl.id_trip = p_id_trip;

  RETURN v_travelers;
EXCEPTION
  WHEN NO_DATA_FOUND THEN
    RETURN NULL;
  WHEN OTHERS THEN
    RETURN NULL;
END;
/
