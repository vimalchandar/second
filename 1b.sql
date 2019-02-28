SQL> select staff_name,staff_code,dept_code from staff_master where hiredate - sysdate>=18;

no rows selected

SQL> select staff_name,staff_code,dept_code from staff_master where (hiredate-sysdate) >=18;

no rows selected

SQL> select staff_name,staff_code,dept_code from staff_master where (sysdate-hiredate) >=18;

STAFF_NAME                                         STAFF_CODE  DEPT_CODE        
-------------------------------------------------- ---------- ----------        
Arvind                                                 100001         30        
Shyam                                                  100002         20        
Mohan                                                  100003         10        
Anil                                                   100004         20        
John                                                   100005         10        
Allen                                                  100006         30        
Smith                                                  100007         20        
Raviraj                                                100008         40        
Rahul                                                  100009         20        
Ram                                                    100010         30        

10 rows selected.

SQL> spool off
