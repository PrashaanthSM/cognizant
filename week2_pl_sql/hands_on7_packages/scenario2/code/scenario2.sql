CREATE OR REPLACE PACKAGE EmployeeManagement AS
  PROCEDURE HireEmployee(
    p_id NUMBER, p_name VARCHAR2, p_position VARCHAR2, p_salary NUMBER,
    p_department VARCHAR2, p_hire_date DATE
  );
  
  PROCEDURE UpdateEmployee(
    p_id NUMBER, p_position VARCHAR2, p_salary NUMBER
  );
  
  FUNCTION CalculateAnnualSalary(p_id NUMBER) RETURN NUMBER;
END EmployeeManagement;
/
