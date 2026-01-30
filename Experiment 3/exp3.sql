-- Experiment 3: Variable Declaration and Calculation (Oracle DB)
-- Declare variables for employee information and calculate bonus salary

DECLARE
    v_EmployeeName VARCHAR2(50) := 'Yashraj Jangra';
    v_Age NUMBER := 30;
    v_Salary NUMBER(10, 2) := 50000.00;
    v_BonusPercentage NUMBER(5, 2) := 10.00;
    v_Bonus NUMBER(10, 2);
    v_FinalSalary NUMBER(10, 2);

BEGIN
    -- Calculate Bonus
    v_Bonus := (v_Salary * v_BonusPercentage) / 100;
    
    -- Calculate Final Salary (Base Salary + Bonus)
    v_FinalSalary := v_Salary + v_Bonus;
    
    -- Print the variables and calculated values
    DBMS_OUTPUT.PUT_LINE('========== Employee Information ==========');
    DBMS_OUTPUT.PUT_LINE('Employee Name: ' || v_EmployeeName);
    DBMS_OUTPUT.PUT_LINE('Age: ' || v_Age);
    DBMS_OUTPUT.PUT_LINE('Base Salary: ' || v_Salary);
    DBMS_OUTPUT.PUT_LINE('========== Bonus Calculation ==========');
    DBMS_OUTPUT.PUT_LINE('Bonus Percentage: ' || v_BonusPercentage || '%');
    DBMS_OUTPUT.PUT_LINE('Bonus Amount: ' || v_Bonus);
    DBMS_OUTPUT.PUT_LINE('========== Final Salary ==========');
    DBMS_OUTPUT.PUT_LINE('Final Salary (Base + Bonus): ' || v_FinalSalary);
    DBMS_OUTPUT.PUT_LINE('==========================================');
END;
/
