CREATE OR REPLACE PROCEDURE add_traveler_to_trip(
    p_id_trip IN NUMBER, 
    p_id_travels IN NUMBER, 
    p_price IN NUMBER
) IS
    new_id INTEGER;
    trip_exists INTEGER;
    traveler_exists INTEGER;
BEGIN
    -- ����� �� �-trip ����
    SELECT COUNT(*)
    INTO trip_exists
    FROM trip
    WHERE id_trip = p_id_trip;
    
    IF trip_exists = 0 THEN
        RAISE_APPLICATION_ERROR(-20001, 'Error: Trip ID does not exist.');
    END IF;

    -- ����� �� �-traveler ����
    SELECT COUNT(*)
    INTO traveler_exists
    FROM travelers
    WHERE id_travels = p_id_travels;
    
    IF traveler_exists = 0 THEN
        RAISE_APPLICATION_ERROR(-20002, 'Error: Traveler ID does not exist.');
    END IF;

    -- ����� ����� new_id
    SELECT NVL(MAX(travelers_list.id_travelers_list), 0) + 1
    INTO new_id  
    FROM travelers_list;

    -- ����� ������ ����� travelers_list
    INSERT INTO travelers_list (id_travelers_list, id_trip, id_travels, price)
    VALUES (new_id, p_id_trip, p_id_travels, p_price);

    COMMIT;

    -- ����� �� ����� �����
    DBMS_OUTPUT.PUT_LINE('Traveler successfully added to trip with new ID: ' || new_id);
EXCEPTION
    WHEN DUP_VAL_ON_INDEX THEN
        -- ����� ������ �� ������ �����
        ROLLBACK;
        DBMS_OUTPUT.PUT_LINE('Error: Duplicate value detected.');
    WHEN OTHERS THEN
        -- ����� ��� ����� ����
        ROLLBACK;
        DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
        RAISE;
END;
/
