DECLARE
  CURSOR loan_cur IS
    SELECT LoanID, LoanAmount, InterestRate FROM Loans;

  v_loan loan_cur%ROWTYPE;
BEGIN
  OPEN loan_cur;
  LOOP
    FETCH loan_cur INTO v_loan;
    EXIT WHEN loan_cur%NOTFOUND;

    IF v_loan.LoanAmount > 10000 THEN
      UPDATE Loans
      SET InterestRate = InterestRate + 0.5
      WHERE LoanID = v_loan.LoanID;
    ELSE
      UPDATE Loans
      SET InterestRate = InterestRate + 0.25
      WHERE LoanID = v_loan.LoanID;
    END IF;

    DBMS_OUTPUT.PUT_LINE('Loan ID: ' || v_loan.LoanID ||
                         ' | New Interest Rate applied');
  END LOOP;
  CLOSE loan_cur;
  COMMIT;
END;
/
