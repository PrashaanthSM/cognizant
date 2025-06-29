BEGIN
  FOR rec IN (
    SELECT l.loanid, l.interestrate
    FROM Loans l
    JOIN Customers c ON l.customerid = c.customerid
    WHERE c.age > 60
  )
  LOOP
    UPDATE Loans
    SET interestrate = interestrate - 1
    WHERE loanid = rec.loanid;
  END LOOP;

  COMMIT;
  DBMS_OUTPUT.PUT_LINE('Discount applied to eligible senior citizens.');
END;
