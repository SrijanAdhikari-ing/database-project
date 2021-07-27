SQL> SELECT  s.Name , ad.AddressType,sa.Country,sa.Province,sa.City,sa.Street,sa.HouseNumber,sa.PhoneNo1,sa.PhoneNo2,sa.fax
  2  FROM Student s
  3  JOIN StudentAddressType ad
  4  ON s.StudentID = ad.StudentID
  5  JOIN StudentAddress sa
  6  ON sa.StudentAddressID = ad.StudentAddressID;

NAME                 ADDRESSTYPE     COUNTRY    PROVINCE             CITY                 STREET               HOUSENUMBER   PHONENO1   PHONENO2 FAX                                                                                                                                                                                                                                                            
-------------------- --------------- ---------- -------------------- -------------------- -------------------- ----------- ---------- ---------- --------------------                                                                                                                                                                                                                                           
Srijan Adhikari      Permanent       Nepal      Bagmati               Hetauda              Namtar                      205  982929228            898882                                                                                                                                                                                                                                                         
Grisha Giri          Permanent       Nepal      Gandaki               Pokhara              Lekhnath                   2002  982777272   97332233 929992                                                                                                                                                                                                                                                         
Rajin Shrestha       Permanent       Nepal      Karnali               Birendranagar        Jarbuta                   19199  988981823   98833203 879882                                                                                                                                                                                                                                                         
Helina Khanal        Temporary       Nepal      Bagmati               Kathmandu            Kamalpokhari              98888  987622212    9882211 982222                                                                                                                                                                                                                                                         
Prajna Subedi        Temporary       Nepal      Bagmati              Kathmandu            Putalisadak               909009  989997122    9922111 328892                                                                                                                                                                                                                                                         
Rojan Shrestha       Temporary       Nepal      Lumbini               Rupandehi            Devdaha                    2002 9982882291   96645342 909992                                                                                                                                                                                                                                                         
Priyanka Shrestha    Temporary       Nepal      Bagmati               Kathmandu            Dillibazar               565772  982451272            122242                                                                                                                                                                                                                                                         

7 rows selected.

SQL> spool off;
