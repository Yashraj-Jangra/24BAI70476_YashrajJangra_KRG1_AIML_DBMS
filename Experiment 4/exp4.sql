-- Experiment 4: IF...ELSIF statement usage (Oracle)

SET SERVEROUTPUT ON

DECLARE
	v_marks NUMBER := 82;
	v_grade VARCHAR2(20);
	v_result VARCHAR2(20);
BEGIN
	IF v_marks >= 75 THEN
		v_grade := 'A Grade';
	ELSIF v_marks >= 60 THEN
		v_grade := 'B Grade';
	ELSIF v_marks >= 50 THEN
		v_grade := 'C Grade';
	ELSE
		v_grade := 'Fail';
	END IF;

	IF v_marks >= 50 THEN
		v_result := 'Pass';
	ELSE
		v_result := 'Fail';
	END IF;

	DBMS_OUTPUT.PUT_LINE('Marks: ' || v_marks || ', Grade: ' || v_grade);
	DBMS_OUTPUT.PUT_LINE('Result: ' || v_result);
END;
/

-- Even or odd number
DECLARE
	v_num NUMBER := 17;
	v_type VARCHAR2(10);
BEGIN
	IF MOD(v_num, 2) = 0 THEN
		v_type := 'Even';
	ELSE
		v_type := 'Odd';
	END IF;

	DBMS_OUTPUT.PUT_LINE('Number: ' || v_num || ', Type: ' || v_type);
END;
/

-- Week number to weekday
DECLARE
	v_week_num NUMBER := 3;
	v_day VARCHAR2(15);
BEGIN
	IF v_week_num = 1 THEN
		v_day := 'Monday';
	ELSIF v_week_num = 2 THEN
		v_day := 'Tuesday';
	ELSIF v_week_num = 3 THEN
		v_day := 'Wednesday';
	ELSIF v_week_num = 4 THEN
		v_day := 'Thursday';
	ELSIF v_week_num = 5 THEN
		v_day := 'Friday';
	ELSIF v_week_num = 6 THEN
		v_day := 'Saturday';
	ELSIF v_week_num = 7 THEN
		v_day := 'Sunday';
	ELSE
		v_day := 'Invalid';
	END IF;

	DBMS_OUTPUT.PUT_LINE('Week No: ' || v_week_num || ', Day: ' || v_day);
END;
/
