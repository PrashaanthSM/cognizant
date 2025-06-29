DECLARE
  p_department      VARCHAR2(50) := 'IT';  -- Department to update
  p_bonus_percent   NUMBER := 5;           -- 5% bonus
BEGIN
  UPDATE Employees
  SET Salary = Salary + (Salary * p_bonus_percent / 100)
  WHERE Department = p_department;

  IF SQL%ROWCOUNT = 0 THEN
    DBMS_OUTPUT.PUT_LINE('No employees found in department: ' || p_department);
  ELSE
    COMMIT;
    DBMS_OUTPUT.PUT_LINE('Bonuses applied to employees in ' || p_department || ' department.');
  END IF;

EXCEPTION
  WHEN OTHERS THEN
    ROLLBACK;
    DBMS_OUTPUT.PUT_LINE('Failed to apply bonuses: ' || SQLERRM);
END;
/
