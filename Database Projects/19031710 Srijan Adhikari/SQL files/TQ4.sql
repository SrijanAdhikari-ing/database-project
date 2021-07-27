SQL> SELECT i1.Name, i1.Salary, x1.SpecificationName
  2   From ( SELECT * FROM ( SELECT i.InstructorID, i.Salary, s.SpecificationName
  3   FROM Instructor i JOIN InstructorInfo ii
  4  ON ii.InstructorID = i.InstructorID JOIN Specification s
  5   ON s.SpecificationID = ii.SpecificationID
  6  GROUP BY s.SpecificationName, i.Salary, i.InstructorID) y1
  7   WHERE ( SELECT COUNT(*) FROM ( SELECT i.InstructorID, i.Salary, s.SpecificationName
  8  FROM Instructor i JOIN InstructorInfo ii
  9  ON ii.InstructorID = i.InstructorID JOIN Specification s
 10   ON s.SpecificationID = ii.SpecificationID
 11  GROUP BY s.SpecificationName, i.Salary, i.InstructorID) y2
 12  WHERE y1.Salary = y2.Salary AND y1.SpecificationName =y2.SpecificationName) >1 ) x1
 13  JOIN Instructor i1 on x1.InstructorID = i1.InstructorID ORDER BY i1.Salary, x1.SpecificationName, i1.Name;

NAME                     SALARY SPECIFICATIONNAME                                                                                                                                                                                                                                                                                                                                                               
-------------------- ---------- --------------------                                                                                                                                                                                                                                                                                                                                                            
Adesh Tandukar            80000 IB                                                                                                                                                                                                                                                                                                                                                                              
Biwash Adhikari           80000 IB                                                                                                                                                                                                                                                                                                                                                                              

SQL> spool off;
