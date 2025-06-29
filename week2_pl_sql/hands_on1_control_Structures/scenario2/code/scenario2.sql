BEGIN
  FOR rec IN (
    SELECT customerid
    FROM Customers
    WHERE balance > 10000
  )
  LOOP
    UPDATE Customers
    SET isvip = 'Y'
    WHERE customerid = rec.customerid;
  END LOOP;

  COMMIT;
  DBMS_OUTPUT.PUT_LINE('VIP status updated for high-balance customers.');
END;
