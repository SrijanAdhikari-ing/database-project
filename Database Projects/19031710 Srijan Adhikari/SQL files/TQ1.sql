SQL> SELECT s.Name, c.CourseName, sp.SpecificationFees,
  2   DECODE(sp.SpecificationName, 'Computing', 0.9*sp.SpecificationFees, sp.SpecificationFees) RevisedFees
  3  FROM Student s
  4  JOIN SpecificationInfo si
  5   ON s.StudentID = si.StudentID
  6   JOIN Specification sp ON sp.SpecificationID = si.SpecificationID
  7  JOIN Course c
  8  ON c.CourseID = si.CourseID;

NAME                 COURSENAME SPECIFICAT REVISEDFEES                                                                                                                                                                                                                                                                                                                                                          
-------------------- ---------- ---------- -----------                                                                                                                                                                                                                                                                                                                                                          
Grisha Giri          BIT        1300000        1170000                                                                                                                                                                                                                                                                                                                                                          
Rajin Shrestha       BIT        1300000        1170000                                                                                                                                                                                                                                                                                                                                                          
Prajna Subedi        Business   800000          800000                                                                                                                                                                                                                                                                                                                                                          
Priyanka Shrestha    Business   1500000        1500000                                                                                                                                                                                                                                                                                                                                                          
Rojan Shrestha       Business   700000          700000                                                                                                                                                                                                                                                                                                                                                          
Helina Khanal        BIT        1000000        1000000                                                                                                                                                                                                                                                                                                                                                          
Srijan Adhikari      BIT        1000000        1000000                                                                                                                                                                                                                                                                                                                                                          

7 rows selected.

SQL> spool off;
