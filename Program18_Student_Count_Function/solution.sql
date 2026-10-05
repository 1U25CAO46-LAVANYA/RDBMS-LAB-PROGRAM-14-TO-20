CREATE OR REPLACE FUNCTION CountStudents (
    p_DepartmentID NUMBER
)
RETURN NUMBER
IS
    total NUMBER;
BEGIN
    SELECT COUNT(*)
    INTO total
    FROM Student
    WHERE DepartmentID = p_DepartmentID;

    RETURN total;
END;
/SET SERVEROUTPUT ON;

DECLARE
    result NUMBER;
BEGIN
    result := CountStudents(101);

    DBMS_OUTPUT.PUT_LINE(
        'Number of students = ' || result
    );
END;
/
