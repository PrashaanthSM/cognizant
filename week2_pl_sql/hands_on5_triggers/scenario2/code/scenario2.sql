CREATE OR REPLACE TRIGGER LogTransaction
AFTER INSERT ON Transactions
FOR EACH ROW
BEGIN
  INSERT INTO AuditLog (TransactionID, AccountID, Action, LogDate)
  VALUES (:NEW.TransactionID, :NEW.AccountID, 'INSERT', SYSDATE);
END;
/
