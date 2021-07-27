SQL> SELECT c.CourseName,COUNT(s.StudentID) AS "Total No. of Students",MAX(s.MarksObtained) AS "Highest Mark"
  2  FROM Student s
  3  JOIN Course c
  4  ON c.CourseID = s.CourseID
  5  GROUP BY CourseName;

COURSENAME Total No. of Students Highest Mark                                                                                                                                                                                                                                                                                                                                                                   
---------- --------------------- ------------                                                                                                                                                                                                                                                                                                                                                                   
BIT                            4          499                                                                                                                                                                                                                                                                                                                                                                   
Business                       3          480                                                                                                                                                                                                                                                                                                                                                                   

SQL> spool off;
