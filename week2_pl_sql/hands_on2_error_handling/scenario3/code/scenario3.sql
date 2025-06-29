DECLARE
  p_customer_id   NUMBER := 1;  -- Change to test different cases
  p_name          VARCHAR2(100) := 'Meera Sharma';
  p_age           NUMBER := 30;
  p_dob           DATE := DATE '1994-06-23';
  p_balance       NUMBER := 8000;
BEGIN
  INSERT INTO Customers (
    CustomerID, Name, Age, DOB, Balance, IsVIP, LastModified
  )
  VALUES (
    p_customer_id, p_name, p_age, p_dob, p_balance, 'N', SYSDATE
  );

  COMMIT;
  DBMS_OUTPUT.PUT_LINE('Customer added successfully: ' || p_name);

EXCEPTION
  WHEN DUP_VAL_ON_INDEX THEN
    DBMS_OUTPUT.PUT_LINE('Error: Customer with ID ' || p_customer_id || ' already exists.');
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Failed to add customer: ' || SQLERRM);
END;
/
