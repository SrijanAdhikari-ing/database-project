SQL> SELECT m.ModuleName
  2   FROM Module m JOIN ModuleInfo mi
  3  ON m.ModuleID = mi.ModuleID JOIN Specification sp
  4  ON mi.SpecificationID = sp.SpecificationID
  5  WHERE SpecificationName = 'Multimedia';

MODULENAME                                                                                                                                                                                                                                                                                                                                                                                                      
--------------------                                                                                                                                                                                                                                                                                                                                                                                            
 Linux                                                                                                                                                                                                                                                                                                                                                                                                          

SQL> spool off;
