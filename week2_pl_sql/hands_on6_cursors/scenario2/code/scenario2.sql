DECLARE
  CURSOR acc_cur IS
    SELECT AccountID, Balance FROM Accounts;

  v_acc acc_cur%ROWTYPE;
  v_fee CONSTANT NUMBER := 100;  -- Fixed annual fee
BEGIN
  OPEN acc_cur;
  LOOP
    FETCH acc_cur INTO v_acc;
    EXIT WHEN acc_cur%NOTFOUND;

    UPDATE Accounts
    SET Balance = Balance - v_fee
    WHERE AccountID = v_acc.AccountID;

    DBMS_OUTPUT.PUT_LINE('Annual fee of ' || v_fee || 
                         ' deducted from Account ID: ' || v_acc.AccountID);
  END LOOP;
  CLOSE acc_cur;
  COMMIT;
END;
/
