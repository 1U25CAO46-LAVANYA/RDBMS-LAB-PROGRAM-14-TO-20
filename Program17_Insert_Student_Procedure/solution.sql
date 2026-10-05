CREATE OR REPLACE PROCEDURE InsertStudent (
    p_StudentID NUMBER,
    p_StudentName VARCHAR2,
    p_DepartmentID NUMBER
)
IS
BEGIN
    INSERT INTO Student
    (StudentID, StudentName, DepartmentID)
    VALUES
    (p_StudentID, p_StudentName, p_DepartmentID);

    DBMS_OUTPUT.PUT_LINE('Student inserted successfully');
END;
/
SET SERVEROUTPUT ON;

BEGIN
    InsertStudent(1005, 'Rahul', 103);
END;
/SELECT * FROM Student;
