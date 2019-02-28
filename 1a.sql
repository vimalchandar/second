SQL> select staff_name,design_code from staff_master where hiredate<'15-Jan-03'and staff_sal >12000 and staff_sal<25000;

STAFF_NAME                                         DESIGN_CODE                  
-------------------------------------------------- -----------                  
Shyam                                                      102                  
Mohan                                                      102                  
Anil                                                       102                  
Raviraj                                                    102                  

SQL> spool off
