DECLARE
  v_interest_rate CONSTANT NUMBER := 0.01;
BEGIN
  UPDATE Accounts
  SET Balance = Balance + (Balance * v_interest_rate)
  WHERE AccountType = 'Savings';

  COMMIT;
  DBMS_OUTPUT.PUT_LINE('Monthly interest processed for all savings accounts.');
EXCEPTION
  WHEN OTHERS THEN
    ROLLBACK;
    DBMS_OUTPUT.PUT_LINE('Failed to process interest: ' || SQLERRM);
END;
/
