SQL> SELECT i.Name,i.Role,ia.PhoneNo1,ia.PhoneNo2, iat.AddressType
  2  FROM Instructor i JOIN InstructorAddressType iat
  3  ON i.InstructorID = iat.InstructorID
  4  JOIN InstructorAddress ia
  5  ON ia.InstructorAddressID = iat.InstructorAddressID
  6  WHERE Role= 'ModuleLeader';

NAME                 ROLE                   PHONENO1   PHONENO2 ADDRESSTYPE                                                                                                                                                                                                                                                                                                                                     
-------------------- -------------------- ---------- ---------- ---------------                                                                                                                                                                                                                                                                                                                                 
Bhim Sunar           ModuleLeader          985627878 9877626261 Temporary                                                                                                                                                                                                                                                                                                                                       
Dipeshwor Silwal     ModuleLeader          985155222            Permanent                                                                                                                                                                                                                                                                                                                                       
Bhim Sunar           ModuleLeader         9842820000             Permanent                                                                                                                                                                                                                                                                                                                                      

SQL> spool off;
