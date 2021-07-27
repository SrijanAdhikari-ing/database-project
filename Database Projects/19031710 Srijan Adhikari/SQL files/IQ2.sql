SQL> Select ii.ModuleID, m.ModuleName,Count(ii.InstructorID) "Number of Instructors"
  2  FROM InstructorInfo ii
  3  JOIN Module m
  4  ON m.ModuleID = ii.ModuleID
  5  GROUP BY ii.ModuleID,m.ModuleName
  6  HAVING COUNT(ii.ModuleID)>1;

MODULEID   MODULENAME           Number of Instructors                                                                                                                                                                                                                                                                                                                                                           
---------- -------------------- ---------------------                                                                                                                                                                                                                                                                                                                                                           
LPS1        Logic and Problems                      2                                                                                                                                                                                                                                                                                                                                                           

SQL> spool off;
