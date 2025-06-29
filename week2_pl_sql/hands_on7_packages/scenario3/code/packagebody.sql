CREATE OR REPLACE PACKAGE BODY AccountOperations AS

  PROCEDURE OpenAccount(p_account_id NUMBER, p_customer_id NUMBER, p_type VARCHAR2, p_balance NUMBER) IS
  BEGIN
    INSERT INTO Accounts (AccountID, CustomerID, AccountType, Balance, LastModified)
    VALUES (p_account_id, p_customer_id, p_type, p_balance, SYSDATE);
  END;

  PROCEDURE CloseAccount(p_account_id NUMBER) IS
  BEGIN
    DELETE FROM Accounts WHERE AccountID = p_account_id;
  END;

  FUNCTION GetTotalBalance(p_customer_id NUMBER) RETURN NUMBER IS
    v_total NUMBER;
  BEGIN
    SELECT NVL(SUM(Balance), 0) INTO v_total
    FROM Accounts
    WHERE CustomerID = p_customer_id;
    RETURN v_total;
  END;

END AccountOperations;
/
