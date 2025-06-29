DECLARE
  p_dob         DATE := DATE '1990-06-23';  -- Input
  v_age         NUMBER;
BEGIN
  SELECT FLOOR(MONTHS_BETWEEN(SYSDATE, p_dob) / 12)
  INTO v_age
  FROM dual;

  DBMS_OUTPUT.PUT_LINE('Age is: ' || v_age);
END;
/
