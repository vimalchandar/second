SQL> select staff_name from staff_master where to_char(hiredate,'dd')<=15 and to_char(hiredate,'month') like '%december%';

STAFF_NAME                                                                      
--------------------------------------------------                              
Rahul                                                                           

SQL> select staff_name,staff_sal,case when staff_sal>=50000 then 'A' when staff_sal>=25000 and staff_sal<50000 then 'B' when staff_sal>=10000 and staff_sal<25000 then 'C' else 'D' end case from staff_master;

STAFF_NAME                                          STAFF_SAL C                 
-------------------------------------------------- ---------- -                 
Arvind                                                  17000 C                 
Shyam                                                   20000 C                 
Mohan                                                   24000 C                 
Anil                                                    42000 B                 
John                                                    32000 B                 
Allen                                                   42000 B                 
Smith                                                   62000 A                 
Raviraj                                                 18000 C                 
Rahul                                                   22000 C                 
Ram                                                     32000 B                 

10 rows selected.

SQL> select staff_name,hiredate,to_char(hiredate,'dy')as "day" from staff_master order by to_char(hire_date,'dy') desc;
select staff_name,hiredate,to_char(hiredate,'dy')as "day" from staff_master order by to_char(hire_date,'dy') desc
                                                                                             *
ERROR at line 1:
ORA-00904: "HIRE_DATE": invalid identifier 


SQL> select staff_name,hiredate,to_char(hiredate,'dy')as "day" from staff_master order by to_char(hiredate,'dy') desc;

STAFF_NAME                                         HIREDATE  day                
-------------------------------------------------- --------- ---                
Arvind                                             15-JAN-03 wed                
Smith                                              12-MAR-02 tue                
Ram                                                17-JAN-02 thu                
Rahul                                              11-DEC-03 thu                
Anil                                               11-MAR-01 sun                
Shyam                                              17-FEB-02 sun                
John                                               21-JAN-01 sun                
Raviraj                                            11-JAN-03 sat                
Mohan                                              19-JAN-02 sat                
Allen                                              23-APR-01 mon                

10 rows selected.

SQL> select instr('mississippi','i',1,3) from dual;

INSTR('MISSISSIPPI','I',1,3)                                                    
----------------------------                                                    
                           8                                                    

SQL> select to_char(next_day(last_day(sysdate)-7,'friday'),'ddsp month ,yyyy') as "pay date" from dual;

pay date                                                                        
----------------------------                                                    
twenty-two february  ,2019                                                      

SQL> select student_code,student_name,decode(dept_code,20,'electrical',30,'electronics','others') dept_name from student_master;

STUDENT_CODE STUDENT_NAME                                       DEPT_NAME       
------------ -------------------------------------------------- -----------     
        1001 Amit                                               others          
        1002 Ravi                                               others          
        1003 Ajay                                               electrical      
        1004 Raj                                                electronics     
        1005 Arvind                                             others          
        1006 Rahul                                              others          
        1007 Mehul                                              electrical      
        1008 Dev                                                others          
        1009 Vijay                                              electronics     
        1010 Rajat                                              others          
        1011 Sunder                                             others          

STUDENT_CODE STUDENT_NAME                                       DEPT_NAME       
------------ -------------------------------------------------- -----------     
        1012 Rajesh                                             electronics     
        1013 Anil                                               electrical      
        1014 Sunil                                              others          
        1015 Kapil                                              others          
        1016 Ashok                                              others          
        1017 Ramesh                                             electronics     
        1018 Amit Raj                                           others          
        1019 Ravi Raj                                           others          
        1020 Amrit                                              others          
        1021 Sumit                                              electrical      

21 rows selected.

SQL> spool off;
