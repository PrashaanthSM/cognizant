DECLARE
  p_employee_id   NUMBER := 1;   -- Change this ID to test different cases
  p_percentage    NUMBER := 10;  -- 10% increment
BEGIN
  -- Attempt to update salary
  UPDATE Employees
  SET Salary = Salary + (Salary * p_percentage / 100)
  WHERE EmployeeID = p_employee_id;

  -- Check if any rows were updated
  IF SQL%ROWCOUNT = 0 THEN
    DBMS_OUTPUT.PUT_LINE('Error: Employee ID ' || p_employee_id || ' not found.');
  ELSE
    COMMIT;
    DBMS_OUTPUT.PUT_LINE('Salary updated successfully for Employee ID ' || p_employee_id);
  END IF;

EXCEPTION
  WHEN OTHERS THEN
    ROLLBACK;
    DBMS_OUTPUT.PUT_LINE('Salary update failed: ' || SQLERRM);
END;
/
