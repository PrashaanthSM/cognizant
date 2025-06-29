DECLARE
  p_account_id     NUMBER := 101;
  p_required_amt   NUMBER := 300;

  v_balance        NUMBER;
  v_has_balance    BOOLEAN;
BEGIN
  SELECT Balance INTO v_balance
  FROM Accounts
  WHERE AccountID = p_account_id;

  v_has_balance := v_balance >= p_required_amt;

  IF v_has_balance THEN
    DBMS_OUTPUT.PUT_LINE('Sufficient balance: TRUE');
  ELSE
    DBMS_OUTPUT.PUT_LINE('Sufficient balance: FALSE');
  END IF;

EXCEPTION
  WHEN NO_DATA_FOUND THEN
    DBMS_OUTPUT.PUT_LINE('Account does not exist.');
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END;
/
