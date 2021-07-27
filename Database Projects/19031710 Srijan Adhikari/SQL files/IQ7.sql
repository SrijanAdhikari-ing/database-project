SQL> SELECT i.Name,ia.Fax,m.ModuleName
  2  FROM Instructor i JOIN InstructorAddressType iat
  3  ON i.InstructorID = iat.InstructorID
  4  JOIN InstructorAddress ia
  5  ON ia.InstructorAddressID = iat.InstructorAddressID
  6  JOIN InstructorInfo ii
  7  ON ii.InstructorID = i.InstructorID
  8  JOIN Module m
  9  ON m.ModuleID=ii.ModuleID
 10  WHERE m.ModuleName='Database';

NAME                 FAX                  MODULENAME                                                                                                                                                                                                                                                                                                                                                            
-------------------- -------------------- --------------------                                                                                                                                                                                                                                                                                                                                                  
Dipeshwor Silwal     56992                Database                                                                                                                                                                                                                                                                                                                                                              

SQL> spool off;
