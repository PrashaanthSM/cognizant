DECLARE
  CURSOR trans_cur IS
    SELECT t.TransactionID, t.AccountID, t.Amount, t.TransactionType, t.TransactionDate, c.Name
    FROM Transactions t
    JOIN Accounts a ON t.AccountID = a.AccountID
    JOIN Customers c ON a.CustomerID = c.CustomerID
    WHERE TRUNC(t.TransactionDate, 'MM') = TRUNC(SYSDATE, 'MM');

  v_row trans_cur%ROWTYPE;
BEGIN
  OPEN trans_cur;
  LOOP
    FETCH trans_cur INTO v_row;
    EXIT WHEN trans_cur%NOTFOUND;

    DBMS_OUTPUT.PUT_LINE('Customer: ' || v_row.Name ||
                         ' | Transaction ID: ' || v_row.TransactionID ||
                         ' | Type: ' || v_row.TransactionType ||
                         ' | Amount: ' || v_row.Amount ||
                         ' | Date: ' || TO_CHAR(v_row.TransactionDate, 'DD-MON-YYYY'));
  END LOOP;
  CLOSE trans_cur;
END;
/
