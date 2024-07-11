create or replace procedure main2 is

  v_travelers SYS_REFCURSOR;
  v_name VARCHAR2(15);
  v_id INTEGER;
BEGIN
  v_travelers := get_travelers_list(260);

  LOOP
    FETCH v_travelers INTO v_name, v_id;
    EXIT WHEN v_travelers%NOTFOUND;
    DBMS_OUTPUT.PUT_LINE('Traveler: ' || v_name);
  END LOOP;
  CLOSE v_travelers;
  update_trip_price(260,1000);
  

end main2;
/
