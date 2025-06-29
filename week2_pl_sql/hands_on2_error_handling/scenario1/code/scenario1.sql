DECLARE
  p_from_account_id   NUMBER := 101;
  p_to_account_id     NUMBER := 102;
  p_amount            NUMBER := 300;
  v_from_balance      NUMBER;
BEGIN
  SELECT Balance INTO v_from_balance
  FROM Accounts
  WHERE AccountID = p_from_account_id;

  IF v_from_balance < p_amount THEN
    RAISE_APPLICATION_ERROR(-20001, 'Insufficient funds');
  END IF;

  UPDATE Accounts
  SET Balance = Balance - p_amount
  WHERE AccountID = p_from_account_id;

  UPDATE Accounts
  SET Balance = Balance + p_amount
  WHERE AccountID = p_to_account_id;

  COMMIT;
  DBMS_OUTPUT.PUT_LINE('Funds transferred successfully.');

EXCEPTION
  WHEN OTHERS THEN
    ROLLBACK;
    DBMS_OUTPUT.PUT_LINE('Transfer failed: ' || SQLERRM);
END;
/
