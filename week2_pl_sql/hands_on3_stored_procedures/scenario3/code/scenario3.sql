DECLARE
  p_from_account_id   NUMBER := 1;
  p_to_account_id     NUMBER := 2;
  p_amount            NUMBER := 500;
  v_balance           NUMBER;
BEGIN
 
  SELECT Balance INTO v_balance
  FROM Accounts
  WHERE AccountID = p_from_account_id;

 
  IF v_balance < p_amount THEN
    RAISE_APPLICATION_ERROR(-20001, 'Insufficient balance in source account.');
  END IF;

  
  UPDATE Accounts
  SET Balance = Balance - p_amount
  WHERE AccountID = p_from_account_id;

 
  UPDATE Accounts
  SET Balance = Balance + p_amount
  WHERE AccountID = p_to_account_id;

  COMMIT;
  DBMS_OUTPUT.PUT_LINE('Transfer of ' || p_amount || ' successful.');

EXCEPTION
  WHEN OTHERS THEN
    ROLLBACK;
    DBMS_OUTPUT.PUT_LINE('Transfer failed: ' || SQLERRM);
END;
/
