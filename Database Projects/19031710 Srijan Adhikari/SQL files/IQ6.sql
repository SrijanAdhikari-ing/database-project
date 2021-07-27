SQL> SELECT s.Name,sp.SpecificationName
  2  FROM Student s JOIN SpecificationInfo si
  3  ON s.StudentID = si.StudentID
  4  JOIN Specification sp
  5  ON sp.SpecificationID = si.SpecificationID
  6  WHERE sp.SpecificationName= 'Networking';

NAME                 SPECIFICATIONNAME                                                                                                                                                                                                                                                                                                                                                                          
-------------------- --------------------                                                                                                                                                                                                                                                                                                                                                                       
Helina Khanal        Networking                                                                                                                                                                                                                                                                                                                                                                                 
Srijan Adhikari      Networking                                                                                                                                                                                                                                                                                                                                                                                 

SQL> spool off;
