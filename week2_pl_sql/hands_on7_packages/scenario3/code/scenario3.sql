CREATE OR REPLACE PACKAGE AccountOperations AS
  PROCEDURE OpenAccount(
    p_account_id NUMBER, p_customer_id NUMBER, p_type VARCHAR2, p_balance NUMBER
  );

  PROCEDURE CloseAccount(p_account_id NUMBER);

  FUNCTION GetTotalBalance(p_customer_id NUMBER) RETURN NUMBER;
END AccountOperations;
/
