create or replace procedure main1 is
begin
  DECLARE
  v_passenger_count NUMBER;
BEGIN
  v_passenger_count := count_passengers(1);
  DBMS_OUTPUT.PUT_LINE('Number of Passengers: ' || v_passenger_count);

  add_traveler_to_trip(1, 5, 200);
  DBMS_OUTPUT.PUT_LINE('Traveler Added');
  v_passenger_count := count_passengers(1);
  DBMS_OUTPUT.PUT_LINE('Number of Passengers: ' || v_passenger_count);

END;
end main1;
/
