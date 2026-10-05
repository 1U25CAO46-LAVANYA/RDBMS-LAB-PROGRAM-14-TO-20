SET SERVEROUTPUT ON;

DECLARE
    CURSOR student_cursor IS
        SELECT StudentID, StudentName, DepartmentID
        FROM Student;

BEGIN
    FOR student_record IN student_cursor LOOP

        DBMS_OUTPUT.PUT_LINE(
            'Student ID: ' || student_record.StudentID
        );

        DBMS_OUTPUT.PUT_LINE(
            'Student Name: ' || student_record.StudentName
        );

        DBMS_OUTPUT.PUT_LINE(
            'Department ID: ' || student_record.DepartmentID
        );

        DBMS_OUTPUT.PUT_LINE('-------------------');

    END LOOP;
END;
/
