SQL> select staff_name,'$'|| staff_sal from staff_master;

STAFF_NAME                                                                      
--------------------------------------------------                              
'$'||STAFF_SAL                                                                  
-----------------------------------------                                       
Arvind                                                                          
$17000                                                                          
                                                                                
Shyam                                                                           
$20000                                                                          
                                                                                
Mohan                                                                           
$24000                                                                          
                                                                                

STAFF_NAME                                                                      
--------------------------------------------------                              
'$'||STAFF_SAL                                                                  
-----------------------------------------                                       
Anil                                                                            
$42000                                                                          
                                                                                
John                                                                            
$32000                                                                          
                                                                                
Allen                                                                           
$42000                                                                          
                                                                                

STAFF_NAME                                                                      
--------------------------------------------------                              
'$'||STAFF_SAL                                                                  
-----------------------------------------                                       
Smith                                                                           
$62000                                                                          
                                                                                
Raviraj                                                                         
$18000                                                                          
                                                                                
Rahul                                                                           
$22000                                                                          
                                                                                

STAFF_NAME                                                                      
--------------------------------------------------                              
'$'||STAFF_SAL                                                                  
-----------------------------------------                                       
Ram                                                                             
$32000                                                                          
                                                                                

10 rows selected.

SQL> select student_name,to_char(student_dob,'month dd yyyy') from student_master where to_char(student_dob,'day') like ('%saturday%') or to_char(student_dob,'day') like ('%sunday%');

STUDENT_NAME                                       TO_CHAR(STUDENT_D            
-------------------------------------------------- -----------------            
Ravi                                               november  01 1981            
Raj                                                january   14 1979            
Arvind                                             january   15 1983            
Mehul                                              january   17 1982            
Vijay                                              january   19 1980            
Rajat                                              january   20 1980            
Ramesh                                             december  27 1980            
Amit Raj                                           september 28 1980            

8 rows selected.

SQL> select staff_name,round((sysdate-hiredate)/30) as "months worked from staff_master;
ERROR:
ORA-01740: missing double quote in identifier 


SQL> select staff_name,round((sysdate-hiredate)/30) as "months worked" from staff_master;

STAFF_NAME                                         months worked                
-------------------------------------------------- -------------                
Arvind                                                       195                
Shyam                                                        206                
Mohan                                                        207                
Anil                                                         218                
John                                                         220                
Allen                                                        216                
Smith                                                        206                
Raviraj                                                      196                
Rahul                                                        184                
Ram                                                          207                

10 rows selected.

SQL> spool off;
