DECLARE
  p_loan_amount    NUMBER := 50000;
  p_annual_rate    NUMBER := 6;     -- 6% annual
  p_years          NUMBER := 2;

  v_monthly_rate   NUMBER;
  v_months         NUMBER;
  v_emi            NUMBER;
BEGIN
  v_monthly_rate := p_annual_rate / 12 / 100;
  v_months := p_years * 12;

  v_emi := (p_loan_amount * v_monthly_rate * POWER(1 + v_monthly_rate, v_months)) /
           (POWER(1 + v_monthly_rate, v_months) - 1);

  DBMS_OUTPUT.PUT_LINE('Monthly Installment (EMI): ' || ROUND(v_emi, 2));
END;
/
