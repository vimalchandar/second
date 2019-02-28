SQL> select s.staff_name,s.dept_code,s.staff_sal,d.dept_name from staff_master s,department_master d where s.dept_code=d.dept_code and staff_sal>10000;

STAFF_NAME                                          DEPT_CODE  STAFF_SAL        
-------------------------------------------------- ---------- ----------        
DEPT_NAME                                                                       
--------------------------------------------------                              
John                                                       10      32000        
Computer Science                                                                
                                                                                
Mohan                                                      10      24000        
Computer Science                                                                
                                                                                
Rahul                                                      20      22000        
Electricals                                                                     
                                                                                

STAFF_NAME                                          DEPT_CODE  STAFF_SAL        
-------------------------------------------------- ---------- ----------        
DEPT_NAME                                                                       
--------------------------------------------------                              
Anil                                                       20      42000        
Electricals                                                                     
                                                                                
Smith                                                      20      62000        
Electricals                                                                     
                                                                                
Shyam                                                      20      20000        
Electricals                                                                     
                                                                                

STAFF_NAME                                          DEPT_CODE  STAFF_SAL        
-------------------------------------------------- ---------- ----------        
DEPT_NAME                                                                       
--------------------------------------------------                              
Ram                                                        30      32000        
Electronics                                                                     
                                                                                
Allen                                                      30      42000        
Electronics                                                                     
                                                                                
Arvind                                                     30      17000        
Electronics                                                                     
                                                                                

STAFF_NAME                                          DEPT_CODE  STAFF_SAL        
-------------------------------------------------- ---------- ----------        
DEPT_NAME                                                                       
--------------------------------------------------                              
Raviraj                                                    40      18000        
Mechanics                                                                       
                                                                                

10 rows selected.

SQL> select s.staff_code
  2  as
  3  
SQL> select s.staff_code as staff#,s.staff_name as staff,,d.dept_name,s.mgr_code as mgr# from staff_master s,department_master d where s.dept_code=d.dept_code;
select s.staff_code as staff#,s.staff_name as staff,,d.dept_name,s.mgr_code as mgr# from staff_master s,department_master d where s.dept_code=d.dept_code
                                                    *
ERROR at line 1:
ORA-00936: missing expression 


SQL> select s.staff_code as staff#,s.staff_name as staff,d.dept_name,s.mgr_code as mgr# from staff_master s,department_master d where s.dept_code=d.dept_code;

    STAFF# STAFF                                                                
---------- --------------------------------------------------                   
DEPT_NAME                                                MGR#                   
-------------------------------------------------- ----------                   
    100005 John                                                                 
Computer Science                                       100007                   
                                                                                
    100003 Mohan                                                                
Computer Science                                       100006                   
                                                                                
    100009 Rahul                                                                
Electricals                                            100006                   
                                                                                

    STAFF# STAFF                                                                
---------- --------------------------------------------------                   
DEPT_NAME                                                MGR#                   
-------------------------------------------------- ----------                   
    100004 Anil                                                                 
Electricals                                            100006                   
                                                                                
    100007 Smith                                                                
Electricals                                            100005                   
                                                                                
    100002 Shyam                                                                
Electricals                                            100007                   
                                                                                

    STAFF# STAFF                                                                
---------- --------------------------------------------------                   
DEPT_NAME                                                MGR#                   
-------------------------------------------------- ----------                   
    100010 Ram                                                                  
Electronics                                            100007                   
                                                                                
    100006 Allen                                                                
Electronics                                            100005                   
                                                                                
    100001 Arvind                                                               
Electronics                                            100006                   
                                                                                

    STAFF# STAFF                                                                
---------- --------------------------------------------------                   
DEPT_NAME                                                MGR#                   
-------------------------------------------------- ----------                   
    100008 Raviraj                                                              
Mechanics                                              100006                   
                                                                                

10 rows selected.

SQL> select b.student_code,s.student_name,b.book_code,bb.book_name from student_master s,book_transaction b,book_master bb where s.student_code=b.student_code and to_char(b.book_expected_return_date,'dd mm yyyy') like to_char(sysdate,'dd mm yyyy');

no rows selected

SQL> select bt.staff_code,s.staff_name,d.dept_name,ds.design_name,bt.book_code,b.book_name,bt.book_issue_date sequence seq_dept minvalue 40 start with 40 increment by 10 max value 200 cache 40;
select bt.staff_code,s.staff_name,d.dept_name,ds.design_name,bt.book_code,b.book_name,bt.book_issue_date sequence seq_dept minvalue 40 start with 40 increment by 10 max value 200 cache 40
                                                                                                                  *
ERROR at line 1:
ORA-00923: FROM keyword not found where expected 


SQL> spool off;
