SQL> SELECT i.Name,iad.InstructorAddressID
  2  FROM Instructor i
  3  JOIN InstructorAddressType iadt
  4  ON i.InstructorID = iadt.InstructorID
  5  JOIN InstructorAddress iad
  6  ON iadt.InstructorAddressID = iad.InstructorAddressID
  7  WHERE LOWER(SUBSTR(i.Name,1,INSTR(i.Name, ' ') -1)) LIKE '%a';

NAME                 INSTRUCTOR                                                                                                                                                                                                                                                                                                                                                                                 
-------------------- ----------                                                                                                                                                                                                                                                                                                                                                                                 
Sanjaya Regmi        KP1                                                                                                                                                                                                                                                                                                                                                                                        

SQL> spool off;
