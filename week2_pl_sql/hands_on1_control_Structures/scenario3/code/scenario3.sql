BEGIN
  FOR rec IN (
    SELECT c.name, l.loanid, l.enddate
    FROM Loans l
    JOIN Customers c ON l.customerid = c.customerid
    WHERE l.enddate BETWEEN SYSDATE AND SYSDATE + 30
  )
  LOOP
    DBMS_OUTPUT.PUT_LINE(
      'Reminder: Dear ' || rec.name || 
      ', your loan (ID: ' || rec.loanid ||
      ') is due on ' || TO_CHAR(rec.enddate, 'DD-MON-YYYY')
    );
  END LOOP;
END;
