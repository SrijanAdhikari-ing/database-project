SQL> SELECT sp.SpecificationName,c.CourseName
  2  FROM Specification sp JOIN SpecificationInfo si
  3  ON sp.SpecificationID = si.SpecificationID
  4  JOIN Course c
  5  ON c.CourseID = si.CourseID
  6  WHERE CourseName='BIT';

SPECIFICATIONNAME    COURSENAME                                                                                                                                                                                                                                                                                                                                                                                 
-------------------- ----------                                                                                                                                                                                                                                                                                                                                                                                 
Computing            BIT                                                                                                                                                                                                                                                                                                                                                                                        
Computing            BIT                                                                                                                                                                                                                                                                                                                                                                                        
Networking           BIT                                                                                                                                                                                                                                                                                                                                                                                        
Networking           BIT                                                                                                                                                                                                                                                                                                                                                                                        

SQL> spool off;
